/**
 * Created with Android Studio.
 * User: 三帆
 * Date: 03/02/2019
 * Time: 22:45
 * email: sanfan.hx@alibaba-inc.com
 * tartget:  xxx
 */

const List<Point> EmptyArray = [];
const NoName = "";

class Point {
  int code;
  List<Point> child = EmptyArray;
  int depth;
  String letter;
  String name = NoName;
  Point({this.code = 0, this.child, this.depth, this.letter, this.name});

  addChild(Point node) {
    this.child.add(node);
  }

  @override
  String toString() {
    // TODO: implement toString
    return "{code: $code, name: $name, letter: $letter, child: Array & length = ${child == null ? 0 : child.length}";
  }
}