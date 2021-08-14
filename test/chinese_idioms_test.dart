import 'package:chinese_idioms/chinese_idioms.dart';
import 'package:test/test.dart';

void main() {
  test('get chinese idioms', () {
    final iterable = generateIdioms();
    expect(iterable.take(1).toList(growable: false).length, 1);
  });
}
