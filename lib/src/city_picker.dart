import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import '../modal/result.dart';
import 'base.dart';

/// ios风格下的地区选择组件, 支持初始化选中地区, 支持配置高度
/// 用法说明:
/// ```
/// await CityPicker.showPicker(
///   location: String,
///   height: double
/// );
///
/// ```
class CityPickers {
  /// 用来弹出地区选择器
  /// @param context 上下文对象
  /// @param locationCode 初始化地区选择, 可是以省份, 城市, 乡镇的 id,
  ///                 如果给定的id是省份, 则初始化会城市id为选择某省份下的城市列表中的第一个, 乡镇同.
  /// @param height 弹出的选择器. 所占的高度
  ///
  /// @param onChangeDat 暂时无用
  ///
  /// @return Result 类型的结果 see [Result]
  ///
  static Future<Result> showCityPicker({
    @required BuildContext context,
    String locationCode,
    double height = 400,
    Function onChangeData,
  }) {
    return Navigator.of(context, rootNavigator: true).push(
      new _CityPickerRoute(
        theme: Theme.of(context, shadowThemeOnly: true),
        locationCode: locationCode,
        height: height,
        barrierLabel:
            MaterialLocalizations.of(context).modalBarrierDismissLabel,
      ),
    );
  }
}

class _CityPickerRoute<T> extends PopupRoute<T> {
  final ThemeData theme;
  final String barrierLabel;
  final String locationCode;
  final Function onChangeData;
  final double height;
  _CityPickerRoute(
      {this.theme,
      this.height,
      this.barrierLabel,
      this.onChangeData,
      this.locationCode});

  @override
  Duration get transitionDuration => Duration(milliseconds: 2000);

  @override
  @override
  Color get barrierColor => Colors.black54;

  @override
  bool get barrierDismissible => true;

  AnimationController _animationController;

  @override
  AnimationController createAnimationController() {
    assert(_animationController == null);
    _animationController =
        BottomSheet.createAnimationController(navigator.overlay);
    return _animationController;
  }

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    Widget bottomSheet = new MediaQuery.removePadding(
        removeTop: true,
        context: context,
        child: _CityPickerWidget(
            route: this, height: this.height, locationCode: locationCode));
    if (theme != null) {
      bottomSheet = new Theme(data: theme, child: bottomSheet);
    }
    return bottomSheet;
  }
}

class _CityPickerWidget extends StatefulWidget {
  final _CityPickerRoute route;
  final String locationCode;
  final double height;
  final Function onChangeData;

  _CityPickerWidget(
      {Key key,
      this.height,
      this.locationCode,
      this.onChangeData,
      @required this.route});

  @override
  State createState() {
    return new _CityPickerState();
  }
}

class _CityPickerState extends State<_CityPickerWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new GestureDetector(
      child: new AnimatedBuilder(
        animation: widget.route.animation,
        builder: (BuildContext context, Widget child) {
          return BaseView(
            progress: widget.route.animation.value,
            locationCode: widget.locationCode,
            height: widget.height,
            onChangeData: widget.onChangeData,
          );
        },
      ),
    );
  }
}
