import 'package:lpinyin/lpinyin.dart';

///  use National Bureau of Statistics's data, build tree, the [point] is trees's node
class Point {
  static final _pinyinPlaceholder = new Pinyin._([], '', '');

  final String? code;
  final List<Point> children;
  final int? depth;
  final String? letter;
  final String name;

  Point.nullPoint()
      : children = [],
        name = '',
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
