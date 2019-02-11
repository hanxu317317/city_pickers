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
  /// @param onChangeDat not use
  ///
  /// @return Result see [Result]
  ///
  static Future<Result> showCityPicker({
    @required BuildContext context,
    showType = ShowType.pca,
    double height =  400.0,
    String locationCode = '110000',
    Map<String, dynamic> citiesData = meta.citiesData,
    Map<String, dynamic> provincesData = meta.provincesData,
  }) {

    return Navigator.of(context, rootNavigator: true).push(
      new CityPickerRoute(
        theme: Theme.of(context, shadowThemeOnly: true),
        barrierLabel:
            MaterialLocalizations.of(context).modalBarrierDismissLabel,
        child: BaseView(
          showType: showType,
          height: height,
          citiesData: citiesData,
          provincesData: provincesData,
          locationCode: locationCode
        )
      ),
    );
  }

  static Future<Result> showFullPageCityPicker({
    @required BuildContext context,
    showType = ShowType.pca,
    String locationCode = '110000',
    Map<String, dynamic> citiesData = meta.citiesData,
    Map<String, dynamic> provincesData = meta.provincesData,
  }) {
    print("theme of context ${Theme.of(context)}");
    return Navigator.push(
        context,
        new PageRouteBuilder(
          settings: RouteSettings(name: 'fullPageCityPicker'),
          transitionDuration: const Duration(milliseconds: 100),
          pageBuilder: (context, _, __)
            => new Theme(data: Theme.of(context), child: FullPage())
          ,
          transitionsBuilder: (_, Animation<double> animation, __, Widget child) =>
            new SlideTransition(
              position: new Tween<Offset>(
                begin: Offset(0.0, 1.0),
                end: Offset(0.0, 0.0),
              ).animate(animation),
              child: child
            ),
        ));
  }
}
