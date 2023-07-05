import 'package:flutter/foundation.dart';

/// Created by ipcjs on 2023/7/5.

/// 控制是否显示调试用的输出
const kVerbose = true && kDebugMode;

extension ListExt<E> on List<E> {
  /// copy from [elementAtOrNull]
  E? elementAtOrNullCompat(int index) {
    if (index >= this.length) return null;
    return this[index];
  }
}
