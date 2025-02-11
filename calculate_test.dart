import 'package:calculator.dart';
import 'package:test/test.dart';

void main() {
  test('Empty string returns 0', () {
    expect(add(''), equals(0));
  });
    test('Single number returns the number itself', () {
    expect(add('1'), equals(1));
  });
}
