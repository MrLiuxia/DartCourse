hello() {
  var callbacks = [];
  for (var i = 0; i < 2; i++) {
    callbacks.add(() => print(i));
  }
  callbacks.forEach((c) => c());
  var collection = [0, 1, 2];
  for (var x in collection) {
    print(x);
  }

//  while (!isDone()) {
//    doSomething();
//  }
//  do {
//    printLine();
//  } while (!atEndOfPage());

//  while (true) {
//    if (shutDownRequested()) break;
//    processIncomingRequests();
//  }
//
//  for (int i = 0; i < candidates.length; i++) {
//    var candidate = candidates[i];
//    if (candidate.yearsExperience < 5) {
//      continue;
//    }
//    candidate.interview();
//  }
//
//  candidates
//      .where((c) => c.yearsExperience >= 5)
//      .forEach((c) => c.interview());
}

switchDemo() {
  String cmd;

  switch (cmd) {
    case 'opem':
      var s = 1;
      break;
    case '1':
      var s = 1;
      throw Error();
  }

}

exceptionDemo() {
//  throw new FormatException('Expected at least 1 section');

//  throw 'Out of memory!';

//  distanceTo(Point other) => throw new UnimplementedError();
//
//
//  try {
//    breedMoreLlamas();
//  } finally {
//    // Always clean up,
//    // even if an exception is thrown.
//    cleanLlamaStalls();
//  }
//
//  try {
//    breedMoreLlamas();
//  } catch(e) {
//    // Handle the exception first.
//    print('Error: $e');
//  } finally {
//    // Then clean up.
//    cleanLlamaStalls();
//  }
}

