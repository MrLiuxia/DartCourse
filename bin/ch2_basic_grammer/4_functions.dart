////main() {
////  FunctionDemo demo = FunctionDemo();
//////  demo.hello();
//////  demo.doFunc((s) => print(s), 'Hello');
////  demo.say('liuxia');
////  demo.say('liuxia', 'hello');
////  demo.say('liuxia', 'hello', 'mac');
////  print(demo.say('liuxia'));
////  print(demo.say('liuxia', 'hello'));
////  print(demo.say('liuxia', 'hello', 'mac'));
////}
////
//void main() {
//  print('hello world');
//}
//
///// run like this: dart demo.dart hello world
//void main(List<String> args) {
//  assert(args.length == 2);
//  assert(args[0] == 'hello' && args[1] == 'world');
//}
//
//class FunctionDemo {
//  bool isEmptyList(List list) {
//    return list == null || list.isEmpty;
//  }
//
//  isEmptyMap(Map map) {
//    return map == null || map.isEmpty;
//  }
//
//  isNotEmptyList(List list) => !isEmptyList(list);
//
//  isNotEmptyMap(Map map) => !isNotEmptyMap(map);
//
//  var helloWorld = () => print('hello world');
//
//  var logger = (tag, message) => print('$tag: $message');
//
//  hello() {
//    helloWorld();
//    logger('HELLO', 'amazing dart');
//  }
//
//  doFunc(Function(String s) func, String s) {
////    func(s);
//    var accountData = AccountData();
//  }
//
//  onClick1() {
//    updateProfileData(nickname: 'liuxia', age: 25);
//  }
//
//  updateProfileData({String avatar, String nickname, int age}) {
//    // ...
//  }
//
//  onClick() {
//    say('liuxia');
//    say('liuxia', 'hello');
//    say('liuxia', 'hello', 'mac');
//  }
//
//  String say(String name, [String message, String device]) {
//    return '$name'
//        "${message == null ? '' : ' says $message'}"
//        "${device == null ? '' : ' on $device'} ";
//  }
//
//  handleScheme(String scheme, [bool fromOut = false]) {}
//
//  updateProfileData1({String avatar, String nickname = '火星网友', int age}) {
//    // ...
//  }
//
//  doStuff({List list = const [1, 2, 3]}) {}
//
//  functionAdFirstClassObject() {}
//
//  printElement(element) {
//    print(element);
//  }
//
//  demo() {
//    var list = [1, 2, 3];
//    list.forEach(printElement);
//  }
//
//  demo1() {
//    var upper = (String s) => s.toUpperCase();
//    assert(upper('hello') == 'HELLO');
//  }
//}
//
//class ProfileData {
//  String avatar;
//  String nickName;
//  int gender;
//
//  ProfileData(this.avatar, this.nickName, this.gender);
//}
//
//class AccountData {
//  String initId;
//  String initKey;
//  String mainAccount; //业务中用户标识请使用mainAccount
//  String ydAccount;
//  String ssn;
//  String token;
//  String platform;
//
//  AccountData(
//      {this.initId,
//      this.initKey,
//      this.mainAccount,
//      this.ydAccount,
//      this.ssn,
//      this.token,
//      this.platform});
//}

foo() {} // A top-level function

class A {
  static void bar() {} // A static method
  void baz() {} // An instance method
}

main() {
  var x;

  // Comparing top-level functions.
  x = foo;
  assert(foo == x);

  // Comparing static methods.
  x = A.bar;
  assert(A.bar == x);

  // Comparing instance methods.
  var inst1 = new A(); // Instance #1 of A
  var w = new A(); // Instance #2 of A
  var y = w;
  x = w.baz;

  // These closures refer to the same instance (#2),
  // so they're equal.
  assert(y.baz == x);

  // These closures refer to different instances,
  // so they're unequal.
  assert(inst1.baz != w.baz);
}
