import 'package:lpinyin/lpinyin.dart';

///  use National Bureau of Statistics's data, build tree, the [point] is trees's node
class Point {
  static final _pinyinPlaceholder = new Pinyin._([], '', '');

  final String? code;
  final List<Point> children;
  final int? depth;
  final String? letter;
  final String name;

  /// Just a classification node, not corresponding to the actual region.
  final bool isClassificationNode;

  Point.nullPoint()
      : children = [],
        name = '',
        isClassificationNode = false,
        code = null,
        depth = null,
        letter = null;

  bool get isNull => this.code == null;

  Point({
    this.code = '0',
    required this.children,
    this.depth,
    String? letter,
    this.name = '',
    this.isClassificationNode = false,
  }) : letter = letter?.toUpperCase();

  String? _lowerCaseName;
  String get lowerCaseName => _lowerCaseName ??= name.toLowerCase();

  Pinyin? _pinyin = _pinyinPlaceholder;
  Pinyin? get pinyin {
    if (identical(_pinyin, _pinyinPlaceholder)) {
      _pinyin = Pinyin.tryParse(name);
    }
    return _pinyin;
  }

  /// add node for Point, the node's type must is [Point]
  addChild(Point node) {
    this.children.add(node);
  }

  @override
  String toString() {
    return "Point {code: $code, name: $name, letter: $letter, child: Array & length = ${children.length}";
  }
}

class Pinyin {
  static Pinyin? tryParse(String text) {
    // TODO: 2022/11/8 ipcjs 处理搜索英文首字母...
    if (text.isEmpty || !ChineseHelper.containsChinese(text)) {
      return null;
    }
    final pinyin = PinyinHelper.getPinyinE(text, separator: ' ', defPinyin: '?')
        .split(' ');

    return Pinyin._(
      pinyin,
      pinyin.join(''),
      pinyin.map((e) => e[0]).join(''),
    );
  }

  final List<String> pinyin;
  final String short;
  final String full;
  const Pinyin._(this.pinyin, this.full, this.short);
}
