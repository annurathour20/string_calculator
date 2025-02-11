import 'package:calculator.dart';
import 'package:test/test.dart';

void main() {
  test('Empty string returns 0', () {
    expect(add(''), equals(0));
  });
    test('Single number returns the number itself', () {
    expect(add('1'), equals(1));
  });
    test('Multiple numbers return their sum', () {
    expect(add('1,2,3'), equals(6));
  });

  test('Handles newlines between numbers', () {
    expect(add('1\n2,3'), equals(6));
  });

  test('Supports custom delimiters', () {
    expect(add('//;\n1;2'), equals(3));
  });

}
