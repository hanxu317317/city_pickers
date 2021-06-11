const List<Point> EmptyArray = [];
const NoName = "";

///  use National Bureau of Statistics's data, build tree, the [point] is trees's node
class Point {
//  Point get nullPoint = () => {};
  int? code;
  late List<Point> child;
  int? depth;
  String? letter;
  late String name;

  Point.nullPoint() {
    this.child = [];
    this.name = NoName;
  }

  bool get isNull => this.code == null;

  Point({
    this.code = 0,
    this.child = EmptyArray,
    this.depth,
    this.letter,
    this.name = NoName,
  });

  /// add node for Point, the node's type must is [Point]
  addChild(Point node) {
    this.child.add(node);
  }

  @override
  String toString() {
    // TODO: implement toString
    return "{code: $code, name: $name, letter: $letter, child: Array & length = ${child.length}";
  }
}
