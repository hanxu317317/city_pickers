import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import '../modal/result.dart';
import 'mod/picker_popup_route.dart';
import 'package:city_pickers/src/base/base.dart';
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
    String locationCode,
    double height = 400,
    List<Mods> showType,
    Function onChangeData,
  }) {

    return Navigator.of(context, rootNavigator: true).push(
      new CityPickerRoute(
        theme: Theme.of(context, shadowThemeOnly: true),
        barrierLabel:
            MaterialLocalizations.of(context).modalBarrierDismissLabel,
        child: BaseView()
      ),
    );
  }
}
