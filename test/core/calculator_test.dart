import 'package:minecraft_calculator/core/calculator.dart';
import 'package:minecraft_calculator/core/model.dart';
import 'package:test/test.dart';

void main() {
  test('Should clone area to above', () {
    var start = Point(x: 5, y: -60, z: -5);
    var end = Point(x: 3, y: -58, z: -5);

    var calculatedTarget = Calculator.getTarget(
      start: start,
      end: end,
      offset: OneDimensionOffset(y: 1),
    );

    expect(calculatedTarget, equals(Point(x: 3, y: -57, z: -5)));
  });

  group('Should clone area to below', () {
    test('Start/End combination 1', () {
      var start = Point(x: 6, y: -55, z: 1);
      var end = Point(x: 4, y: -57, z: 1);

      var calculatedTarget = Calculator.getTarget(
        start: start,
        end: end,
        offset: OneDimensionOffset(y: -1),
      );

      expect(calculatedTarget, equals(Point(x: 4, y: -60, z: 1)));
    });

    test('Start/End combination 2', () {
      var start = Point(x: 4, y: -55, z: 1);
      var end = Point(x: 6, y: -57, z: 1);

      var calculatedTarget = Calculator.getTarget(
        start: start,
        end: end,
        offset: OneDimensionOffset(y: -1),
      );

      expect(calculatedTarget, equals(Point(x: 4, y: -60, z: 1)));
    });

    test('Start/End combination 3', () {
      var start = Point(x: 6, y: -57, z: 1);
      var end = Point(x: 4, y: -55, z: 1);

      var calculatedTarget = Calculator.getTarget(
        start: start,
        end: end,
        offset: OneDimensionOffset(y: -1),
      );

      expect(calculatedTarget, equals(Point(x: 4, y: -60, z: 1)));
    });
  });


}
