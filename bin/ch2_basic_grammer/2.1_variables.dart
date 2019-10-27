hello() {
//    var company = 'netease';
//    String company = 'netease';

//    dynamic loki = 'odinson';
//    loki = 1024;
//    assert(loki == 1024);

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

  print('success');
}
