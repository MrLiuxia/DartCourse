main() {
//  hello();
//  var ip = ImmutablePoint(1, 2);

//  Rectangle r = Rectangle(0, 0, 10, 20);
//  r.right++;
//  print(r.right);
//  var m = MusicalPerformer();

  var demo = StaticDemo('main');
  var a = Point(1, 2), b = Point(2, 3);
}


class StaticDemo {
  final String tag;

  static int value = 2;

  StaticDemo(this.tag) {
    print(value);
  }
}

hello() {
  var p = new Point(2, 2);

  // Set the value of the instance variable y.
  p.y = 3;

  // Get the value of y.
  assert(p.y == 3);

  // Invoke distanceTo() on p.
  num distance = p.distanceTo(new Point(4, 4));

  // If p is non-null, set its y value to 4.
  p?.y = 4;

//  var p = const ImmutablePoint(2, 2);
//
//  var a = const ImmutablePoint(1, 1);
//  var b = const ImmutablePoint(1, 1);
//
//  assert(identical(a, b)); // They are the same instance!
}

class APoint extends Point {
  APoint() : super.fromJson(getDefaultData());

  static getDefaultData() {
    return '';
  }
}

class Point {
  int x, y;
  final int dis;

  Point(this.x, this.y) : dis = 1;

  Point.fromJson(Map json) : dis = 1 {
    x = json['x'];
    y = json['y'];
  }

  Point.alongXAxis(num x) : this(x, 0);

  distanceTo(Point p) {
    return 0;
  }
}

class ImmutablePoint {
  final num x;
  final num y;

  const ImmutablePoint(this.x, this.y);

  static final ImmutablePoint origin = const ImmutablePoint(0, 0);
}

class Logger {
  final String name;

  static final Map<String, Logger> _cache = Map();

  factory Logger(String name) {
    if (!_cache.containsKey(name)) {
      _cache[name] = Logger._(name);
    }
    return _cache[name];
  }

  Logger._(this.name);
}

class Rectangle {
  num left;
  num top;
  num width;
  num height;

  Rectangle(this.left, this.top, this.width, this.height);

  num get right => left + width;

  set right(num value) => left = value - width;

  num get bottom => top + height;

  set bottom(num value) => top = value - height;
}

abstract class AbstractContainer {
  // ...Define constructors, fields, methods...

//  void updateChildren(); // Abstract method.
//s
}

class SpecializedContainer extends AbstractContainer {
  // ...Define more constructors, fields, methods...

  void updateChildren() {
    // ...Implement updateChildren()...
  }

// Abstract method causes a warning but
// doesn't prevent instantiation.
//  void doSomething();
}

// A person. The implicit interface contains greet().
//class Person {
//  // In the interface, but visible only in this library.
//  final _name;
//
//  // Not in the interface, since this is a constructor.
//  Person(this._name);
//
//  // In the interface.
//  String greet(who) => 'Hello, $who. I am $_name.';
//}

class Imposter implements Person {
  // We have to define this, but we don't use it.
  final _name = "";

  String greet(who) => 'Hi $who. Do you know who I am?';
}

enum Color { red, green, blue }

enumDemo() {
  assert(Color.red.index == 0);
  assert(Color.green.index == 1);
  assert(Color.blue.index == 2);

  List<Color> colors = Color.values;
  assert(colors[2] == Color.blue);
  Color c;

  switch (c) {
    case Color.red:
    case Color.green:
    case Color.blue:
  }
}

class Musician extends Performer with Musical {
  // ···
}

class Maestro extends Person with Musical, Aggressive, Demented {
  Maestro(String maestroName) {
//    name = maestroName;
    canConduct = true;
  }
}

mixin Musical {
  bool canPlayPiano = false;
  bool canCompose = false;
  bool canConduct = false;

  void entertainMe() {
    if (canPlayPiano) {
      print('Playing piano');
    } else if (canConduct) {
      print('Waving hands');
    } else {
      print('Humming to self');
    }
  }
}

mixin MusicalPerformer on Musician {
  // ···
}

class Performer {}

class Person {}

class Aggressive {}

class Demented {}
