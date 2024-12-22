import 'package:hello_world/hello_world.dart';
import 'package:hello_world/test.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(calculate(), 42);
  });

  test('testString', () {
    expect(testString(), 'Hello, World!');
  });
}
