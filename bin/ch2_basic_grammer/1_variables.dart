hello() {
  var company = 'netease';
  String company1 = 'netease';

  dynamic loki = 'odinson';
  loki = 1024;
  assert(loki == 1024);

  var name;
  assert(name == null);

  int age;
  assert(age == null);

  assert(null is Object);
}

finalAndConst() {
  final firstName = 'Harry';
  final String lastName = 'Potter';

  const g = 9.8;
  const gOnMoon = 0.16 * g;

  var foo = const [];
  final fooF = const [];
  const fooC = const [];
  foo = [1, 2];
}

buildInTypesNumbers() {
  var age = 25;
  var hex = 0xDEAD;
  var population = 7707570800;

  var g = 9.8;
  var exponents = 1.42e5;

  var one = int.parse('1');
  assert(one == 1);
  var onePointOne = double.parse('1.1');
  assert(onePointOne == 1.1);

  var oneString = 1.toString();
  assert(oneString == '1');
  var piString = 3.1415.toStringAsFixed(2);
  assert(piString == '3.14');
}

buildInTypesStrings() {
  var s1 = 'Single quotes work well for string literals.';
  var s2 = "Double quotes work just as well.";
  var s3 = 'It\'s easy to escape the string delimiter.';
  var s4 = "It's even easier to use the other delimiter.";

  var s = 'dart';
  var result = 'hello $s';
  result = 'hello ${s.toLowerCase()}';
  assert(result == 'hello dart');
  assert(result == 'hello ' 'dart');
  assert(result == 'hello ' + 'dart');
  assert(result * 2 == 'hello dart' * 2);
  assert(result ==
      'hello '
          'dart');

  var longText = '''
  Hello world, 
  Hello dart.
  ''';

  var raw = r"In a raw string, even \n isn't special.";

  // These work in a const string.
  const aConstNum = 0;
  const aConstBool = true;
  const aConstString = 'a constant string';

  // These do NOT work in a const string.
  var aNum = 0;
  var aBool = true;
  var aString = 'a string';

  const validConstString = '$aConstNum $aConstBool $aConstString';
  // const invalidConstString = '$aNum $aBool $aString';
}

buildInTypesBooleans() {
  // Check for an empty string.
  var fullName = '';
  assert(fullName.isEmpty);

  // Check for zero.
  var hitPoints = 0;
  assert(hitPoints <= 0);

  // Check for null.
  var unicorn;
  assert(unicorn == null);

  // Check for NaN.
  var iMeantToDoThis = 0 / 0;
  assert(iMeantToDoThis.isNaN);
}

buildInTypesLists() {
  var list = [1, 2, 3];
  assert(list.length == 3);
  assert(list[0] == 1);
  list[0] = 0;
  assert(list[0] == 0);

  var mixList = [1, 'hello'];
  var constList = const [1, 2, 3];
}

buildInTypesMaps() {
  var heroMap = {
    //key: value
    'SF': 'Shadow Fiend',
    'Tiny': 'Stone Giant'
  };

  heroMap = Map();
  heroMap['SF'] = 'Shadow Fiend';
  assert(heroMap['SF'] == 'Shadow Fiend');
  assert(heroMap['CG'] == null);
  assert(heroMap.length == 1);

  var products = const {'NewsApp': 'NetEase'};

  var radis = 1;
  print(#radis);
}

var topVar = '';

main() {
  var mainVar = '';
  assert(topVar is String);
  assert(mainVar is String);

  hello() {
    var helloVar = '';
    assert(topVar is String);
    assert(mainVar is String);
    assert(helloVar is String);
  }

  finalAndConst();
  buildInTypesNumbers();
  buildInTypesStrings();
  buildInTypesBooleans();
  buildInTypesLists();
  buildInTypesMaps();

  print('success');
}
