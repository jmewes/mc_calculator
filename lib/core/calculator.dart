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
        var referencePoint = Point(minX, minY, commonZ!);
        return referencePoint + (offset + OneDimensionOffset(y: -(blocksY - 1)));
      } else {
        var referencePoint = Point(minX, maxY, commonZ!);
        return referencePoint + offset;
      }
    }

    if (offset.x != null) {
      var offsetX = offset.x!;
      if (offsetX.isNegative) {
        var referencePoint = Point(minX, minY, commonZ!);
        return referencePoint + (offset + OneDimensionOffset(x: -(blocksX - 1)));
      } else {
        var referencePoint = Point(maxX, minY, commonZ!);
        return referencePoint + offset;
      }
    }

    if (offset.z != null) {
      var offsetZ = offset.z!;
      if (offsetZ.isNegative) {
        var referencePoint = Point(commonX!, minY, minZ);
        return referencePoint + (offset + OneDimensionOffset(z: -(blocksZ - 1)));
      } else {
        var referencePoint = Point(commonX!, minY, maxZ);
        return referencePoint + offset;
      }
    }

    throw "Invalid configuration";
  }
}
