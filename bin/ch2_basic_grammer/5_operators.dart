void main() {
//  int a = 1;
//  print(a is! double);
//  print(2 / 2 == 1);
  equalityAndRelationalOperators();
}

arithmeticOperator() {
  assert(2 + 3 == 5);
  assert(2 - 3 == -1);
  assert(2 * 3 == 6);
  assert(5 / 2 == 2.5);
  assert(5 ~/ 2 == 2);
  assert(5 % 2 == 1);

  var a, b;

  a = 0;
  b = ++a;
  assert(a == b);

  a = 0;
  b = a++;
  assert(a != b);

  a = 0;
  b = --a;
  assert(a == b);

  a = 0;
  b = a--;
  assert(a != b);
}

equalityAndRelationalOperators() {
  String s = '';
  s == '1';
  int a = 1;

  User me = User('lx', 25);
  User someone = User('unknown', 1);
  print(me == (someone));
}


assignmentOperators() {
  String a, b;
  a = 'hello';
  b ??= 'world';
  a += b;
  User u = User('1', 1)
  .._age = 22
  ..a(2)
  .._name='2';

}

class User {
  String _name;
  int _age;

  User(this._name, this._age);

  void a(int a) {

  }

  @override
  bool operator ==(other) {
    if (other != null && other is User) {
      return _name == other._name && _age == other._age;
    }
    return false;
  }
}
