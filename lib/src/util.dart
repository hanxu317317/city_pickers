//
// Created with Android Studio.
// User: 三帆
// Date: 28/01/2019
// Time: 21:38
// email: sanfan.hx@alibaba-inc.com
// target: 组件内部使用的工具方法
import 'package:flutter/material.dart';
import 'dart:async';

/// it's a cache class, aim to reduce calculations;
class Cache {
  Map<String, dynamic> _cache = {};

  // factory
  factory Cache() {
    return _getInstance();
  }

  static Cache get instance => _getInstance();
  static Cache _instance;

  Cache._();

  void set(String key, dynamic value) {
    _cache[key] = value;
  }

  bool has(String key) {
    return _cache.containsKey(key);
  }

  dynamic get(String key) {
    if (has(key)) {
      return _cache[key];
    }
    return null;
  }

  dynamic remove(String key) {
    if (has(key)) {
      _cache.remove(key);
    }
    return null;
  }

  static Cache _getInstance() {
    if (_instance == null) {
      _instance = new Cache._();
    }
    return _instance;
  }
}

void setTimeout({int milliseconds, callback = VoidCallback}) {
  new Timer(Duration(milliseconds: milliseconds), () {
    callback();
  });
}

typedef ItemWidgetBuilder = Widget Function(
    dynamic item, List<dynamic> list, int index);
