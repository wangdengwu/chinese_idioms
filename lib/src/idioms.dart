import 'dart:math';

import 'idioms/all.dart';

/// The default value of the `top` parameter of the [generateIdioms]
/// function.
const int topDefault = 1000;

final _random = Random();

/// Randomly generates Chinese idioms.
/// You can inject [Random] using the [random] parameter.
Iterable<String> generateIdioms({int top = topDefault, Random? random}) sync* {
  final rand = random ?? _random;
  var idioms = all.take(top).toList(growable: false);
  String pickRandom(List<String> list) => list[rand.nextInt(list.length)];

  // We're in a sync* function, so `while (true)` is okay.
  while (true) {
    final String idiom = pickRandom(idioms);

    yield idiom;
  }
}
