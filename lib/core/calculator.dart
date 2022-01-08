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

    int directionX = end.x - start.x;
    int directionY = end.y - start.y;
    int directionZ = end.z - start.z;

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
        var bottomRight = Point(x: minX, y: minY, z: commonZ!);
        return bottomRight + (offset + OneDimensionOffset(y: - (blocksY - 1)));
      } else {
        var topRight = Point(x: minX, y: maxY, z: commonZ!);
        return topRight + offset;
      }
    }
    
    return Point(x: 0, y: 0, z: 0);
  }
}