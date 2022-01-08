import 'package:minecraft_calculator/core/calculator.dart';
import 'package:minecraft_calculator/core/model.dart';
import 'package:test/test.dart';

void main() {
  test('Should clone area to above', () {
    var start = Point(5, -60, -5);
    var end = Point(3, -58, -5);

    var calculatedTarget = Calculator.getTarget(
      start: start,
      end: end,
      offset: OneDimensionOffset(y: 1),
    );

    expect(calculatedTarget, equals(Point(3, -57, -5)));
  });

  group('Should clone area to right', () {
    test('Should clone area to one right', () {
      var start = Point(4, -58, 1);
      var end = Point(6, -60, 1);

      var calculatedTarget = Calculator.getTarget(
        start: start,
        end: end,
        offset: OneDimensionOffset(x: -1),
      );

      expect(calculatedTarget, equals(Point(1, -60, 1)));
    });

    test('Should clone area to three right', () {
      var start = Point(4, -58, 1);
      var end = Point(6, -60, 1);

      var calculatedTarget = Calculator.getTarget(
        start: start,
        end: end,
        offset: OneDimensionOffset(x: -3),
      );

      expect(calculatedTarget, equals(Point(-1, -60, 1)));
    });
  });

  group('Should clone area to the left', () {
    test('Should clone area one to the left', () {
      var start = Point(4, -58, 1);
      var end = Point(6, -60, 1);

      var calculatedTarget = Calculator.getTarget(
        start: start,
        end: end,
        offset: OneDimensionOffset(x: 1),
      );

      expect(calculatedTarget, equals(Point(7, -60, 1)));
    });

    test('Should clone area four to the left', () {
      var start = Point(4, -58, 1);
      var end = Point(6, -60, 1);

      var calculatedTarget = Calculator.getTarget(
        start: start,
        end: end,
        offset: OneDimensionOffset(x: 4),
      );

      expect(calculatedTarget, equals(Point(10, -60, 1)));
    });
  });

  group('Should clone area to below', () {
    test('Start/End combination 1', () {
      var start = Point(6, -55, 1);
      var end = Point(4, -57, 1);

      var calculatedTarget = Calculator.getTarget(
        start: start,
        end: end,
        offset: OneDimensionOffset(y: -1),
      );

      expect(calculatedTarget, equals(Point(4, -60, 1)));
    });

    test('Start/End combination 2', () {
      var start = Point(4, -55, 1);
      var end = Point(6, -57, 1);

      var calculatedTarget = Calculator.getTarget(
        start: start,
        end: end,
        offset: OneDimensionOffset(y: -1),
      );

      expect(calculatedTarget, equals(Point(4, -60, 1)));
    });

    test('Start/End combination 3', () {
      var start = Point(6, -57, 1);
      var end = Point(4, -55, 1);

      var calculatedTarget = Calculator.getTarget(
        start: start,
        end: end,
        offset: OneDimensionOffset(y: -1),
      );

      expect(calculatedTarget, equals(Point(4, -60, 1)));
    });
  });

  test('Should clone area to the back', () {
    var start = Point(4, -58, 1);
    var end = Point(4, -60, -1);

    var calculatedTarget = Calculator.getTarget(
      start: start,
      end: end,
      offset: OneDimensionOffset(z: -1),
    );

    expect(calculatedTarget, equals(Point(4, -60, -4)));
  });

  test('Should clone area to the front', () {
    var start = Point(4, -58, 1);
    var end = Point(4, -60, -1);

    var calculatedTarget = Calculator.getTarget(
      start: start,
      end: end,
      offset: OneDimensionOffset(z: 1),
    );

    expect(calculatedTarget, equals(Point(4, -60, 2)));
  });
}
