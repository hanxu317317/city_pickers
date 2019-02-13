import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import '../meta/province.dart' as meta;
import '../modal/result.dart';
import 'mod/picker_popup_route.dart';
import 'package:city_pickers/src/base/base.dart';
import 'package:city_pickers/src/full_page/full_page.dart';
import 'show_types.dart';

/// ios city picers
/// provide config height, initLocation and so on
///
/// Sample:
/// ```
/// await CityPicker.showPicker(
///   location: String,
///   height: double
/// );
///
/// ```
class CityPickers {
  /// use
  /// @param context BuildContext for navigator
  /// @param locationCode initial select, one of province area or city id
  ///                 if given id is provinceId, the city and area id will be this province's first city and first area in metadata
  /// @param height Container's height
  ///
  /// @param Theme used it's primaryColor
  ///
  /// @param barrierDismissible whether user can dismiss the modal by touch background
  ///
  /// @return Result see [Result]
  ///
  static Future<Result> showCityPicker({
    @required BuildContext context,
    showType = ShowType.pca,
    double height = 400.0,
    String locationCode = '110000',
    ThemeData theme,
    Map<String, dynamic> citiesData = meta.citiesData,
    Map<String, dynamic> provincesData = meta.provincesData,

    // CityPickerRoute params
    bool barrierDismissible = true,
    double barrierOpacity = 0.5,
  }) {
    return Navigator.of(context, rootNavigator: true).push(
      new CityPickerRoute(
          theme: theme ?? Theme.of(context),
          canBarrierDismiss: barrierDismissible,
          barrierOpacity: barrierOpacity,
          barrierLabel:
              MaterialLocalizations.of(context).modalBarrierDismissLabel,
          child: BaseView(
              showType: showType,
              height: height,
              citiesData: citiesData,
              provincesData: provincesData,
              locationCode: locationCode)),
    );
  }

  /// @theme Theme used it's primaryColor
  ///
  static Future<Result> showFullPageCityPicker({
    @required BuildContext context,
    ThemeData theme,
    ShowType showType = ShowType.pca,
    String locationCode = '110000',
    Map<String, dynamic> citiesData = meta.citiesData,
    Map<String, dynamic> provincesData = meta.provincesData,
  }) {
    return Navigator.push(
        context,
        new PageRouteBuilder(
          settings: RouteSettings(name: 'fullPageCityPicker'),
          transitionDuration: const Duration(milliseconds: 250),
          pageBuilder: (context, _, __) => new Theme(
              data: theme ?? Theme.of(context),
              child: FullPage(
                showType: showType,
                locationCode: locationCode,
                citiesData: citiesData,
                provincesData: provincesData,
              )),
          transitionsBuilder:
              (_, Animation<double> animation, __, Widget child) =>
                  new SlideTransition(
                      position: new Tween<Offset>(
                        begin: Offset(0.0, 1.0),
                        end: Offset(0.0, 0.0),
                      ).animate(animation),
                      child: child),
        ));
  }
}
