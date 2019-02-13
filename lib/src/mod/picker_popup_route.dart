//
// Created with Android Studio.
// User: 三帆
// Date: 07/02/2019
// Time: 21:55
// email: sanfan.hx@alibaba-inc.com
// tartget:  xxx
//

import 'package:flutter/material.dart';
import 'package:city_pickers/src/mod/inherit_process.dart';

class CityPickerRoute<T> extends PopupRoute<T> {
  final ThemeData theme;
  final String barrierLabel;
  final bool canBarrierDismiss;
  final Widget child;
  final double barrierOpacity;

  CityPickerRoute({
    this.theme,
    this.child,
    this.canBarrierDismiss = true,
    this.barrierOpacity = 0.5,
    this.barrierLabel,
  });

  @override
  Duration get transitionDuration => Duration(milliseconds: 2000);

  @override
  @override
  Color get barrierColor => Color.fromRGBO(0, 0, 0, barrierOpacity);

  @override
  bool get barrierDismissible => canBarrierDismiss;

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
        child: InheritRouteWidget(router: this, child: child));
    if (theme != null) {
      bottomSheet = new Theme(data: theme, child: bottomSheet);
    }
    return bottomSheet;
  }
}
