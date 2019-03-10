import 'dart:async';

import 'package:city_pickers/src/base/base.dart';
import 'package:city_pickers/src/cities_selector/cities_selector.dart';
import 'package:city_pickers/src/full_page/full_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../meta/province.dart' as meta;
import '../modal/result.dart';
import 'mod/picker_popup_route.dart';
import 'show_types.dart';


/// ios city pickers
/// provide config height, initLocation and so on
///
/// Sample:flutter format
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
    Map<String, dynamic> citiesData,
    Map<String, dynamic> provincesData,
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
              citiesData: citiesData ?? meta.citiesData,
              provincesData: provincesData ?? meta.provincesData,
              locationCode: locationCode)),
    );
  }

  /// @theme Theme used it's primaryColor
  static Future<Result> showFullPageCityPicker({
    @required BuildContext context,
    ThemeData theme,
    ShowType showType = ShowType.pca,
    String locationCode = '110000',
    Map<String, dynamic> citiesData,
    Map<String, dynamic> provincesData,
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
                citiesData: citiesData ?? meta.citiesData,
                provincesData: provincesData ?? meta.provincesData,
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

  static Future<Result> showCitiesSelector({
    @required BuildContext context,
    ThemeData theme,
    bool showAlpha,
    String locationCode,
    String title = '城市选择器',
    Map<String, dynamic> citiesData = meta.citiesData,
    Map<String, dynamic> provincesData = meta.provincesData,
    Color tagBarActiveColor = defaultTagActiveBgColor,
    Color tagBarFontActiveColor = defaultTagFontColor,
    Color tagBarBarColor = defaultTagBgColor,
    Color tagBarFontColor = defaultTagFontColor,
    double tagBarFontSize = 14.0,
    double cityItemFontSize = 12.0,
    double topIndexFontSize = 16,
    double topIndexHeight = 40,
    Color topIndexFontColor = defaultTopIndexFontColor,
    Color topIndexBgColor = defaultTopIndexBgColor,
    Color itemFontColor = Colors.black,
    Color itemSelectFontColor = Colors.red,
  }) {
    return Navigator.push(
        context,
        new PageRouteBuilder(
          settings: RouteSettings(name: 'CitiesPicker'),
          transitionDuration: const Duration(milliseconds: 250),
          pageBuilder: (context, _, __) => new Theme(
              data: theme ?? Theme.of(context),
              child: CitiesSelector(
                  locationCode: locationCode,
                  tagBarActiveColor: tagBarActiveColor,
                  tagBarFontActiveColor: tagBarFontActiveColor,
                  tagBarBarColor: tagBarBarColor,
                  tagBarFontColor: tagBarFontColor,
                  tagBarFontSize: tagBarFontSize,
                  cityItemFontSize: cityItemFontSize,
                  topIndexFontSize: topIndexFontSize,
                  topIndexHeight: topIndexHeight,
                  topIndexFontColor: topIndexFontColor,
                  topIndexBgColor: topIndexBgColor,
                  itemFontColor: itemFontColor,
                  itemSelectFontColor: itemSelectFontColor)),
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
