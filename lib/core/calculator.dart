import 'dart:math';

import 'package:minecraft_calculator/core/model.dart';

class Calculator {
  static Point getTarget({
    required Point start,
    required Point end,
    required OneDimensionOffset offset,
  }) {
    int blocksX = (start.x - end.x).abs() + 1;
    int blocksY = (start.y - end.y).abs() + 1;
    int blocksZ = (start.z - end.z).abs() + 1;

    int deltaX = (start.x - end.x).abs();
    int deltaY = (start.y - end.y).abs();
    int deltaZ = (start.z - end.z).abs();

    var minX = min(start.x, end.x);
    var minY = min(start.y, end.y);
    var minZ = min(start.z, end.z);

    var maxX = max(start.x, end.x);
    var maxY = max(start.y, end.y);
    var maxZ = max(start.z, end.z);

    int? commonX = (minX == maxX) ? minX : null;
    int? commonY = (minY == maxY) ? minY : null;
    int? commonZ = (minZ == maxZ) ? minZ : null;

    if (offset.y != null) {
      var offsetY = offset.y!;
      if (offsetY.isNegative) {
        var bottomRight = Point(minX, minY, commonZ!);
        return bottomRight + (offset + OneDimensionOffset(y: -(blocksY - 1)));
      } else {
        var topRight = Point(minX, maxY, commonZ!);
        return topRight + offset;
      }
    }

    if (offset.x != null) {
      var offsetX = offset.x!;
      if (offsetX.isNegative) {
        var bottomRight = Point(minX, minY, commonZ!);
        return bottomRight + (offset + OneDimensionOffset(x: -(blocksX - 1)));
      } else {
        var bottomLeft = Point(maxX, minY, commonZ!);
        return bottomLeft + offset;
      }
    }

    if (offset.z != null) {
      var offsetZ = offset.z!;
      if (offsetZ.isNegative) {
        var referencePoint = Point(commonX!, minY, minZ);
        return referencePoint + (offset + OneDimensionOffset(z: -(blocksZ - 1)));
      } else {
        throw "Operation not supported yet";
      }
    }

    throw "Invalid configuration";
  }
}
