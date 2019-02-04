const List<Point> EmptyArray = [];
const NoName = "";

///  use National Bureau of Statistics's data, build tree, the [point] is trees's node
class Point {
  int code;
  List<Point> child = EmptyArray;
  int depth;
  String letter;
  String name = NoName;
  Point({this.code = 0, this.child, this.depth, this.letter, this.name});

  /// add node for Point, the node's type must is [Point]
  addChild(Point node) {
    this.child.add(node);
  }

  @override
  String toString() {
    // TODO: implement toString
    return "{code: $code, name: $name, letter: $letter, child: Array & length = ${child == null ? 0 : child.length}";
  }
}
