//
// Created with Android Studio.
// User: 三帆
// Date: 03/02/2019
// Time: 22:45
// email: sanfan.hx@alibaba-inc.com
// tartget:  xxx
//

const List<Point> EmptyArray = [];
const NoName = "";

///  以国家地区数据. 构建树型结构, 设定的节点数据结构
class Point {
  int code;
  List<Point> child = EmptyArray;
  int depth;
  String letter;
  String name = NoName;
  Point({this.code = 0, this.child, this.depth, this.letter, this.name});

  /// 为 [Point]增加子节点, 节点类型必须是 [Point]
  addChild(Point node) {
    this.child.add(node);
  }

  @override
  String toString() {
    // TODO: implement toString
    return "{code: $code, name: $name, letter: $letter, child: Array & length = ${child == null ? 0 : child.length}";
  }
}