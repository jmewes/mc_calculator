
import 'package:equatable/equatable.dart';

class Point extends Equatable {
  final int x;
  final int y;
  final int z;

  Point(this.x, this.y, this.z);

  @override
  List<Object?> get props => [x, y, z];

  Point operator +(OneDimensionOffset offset) {
    if (offset.x != null) {
      return Point(x + offset.x!, y, z);
    }
    if (offset.y != null) {
      return Point(x, y + offset.y!, z);
    }
    if (offset.z != null) {
      return Point(x, y, z + offset.z!);
    }
    return this;
  }
}

class OneDimensionOffset extends Equatable {
  final int? x;
  final int? y;
  final int? z;

  OneDimensionOffset({this.x, this.y, this.z}) {
    if (x != null) {
      if (y != null || z != null) {
        throw "Only one dimension is allowed to be set";
      }
    }
    if (y != null) {
      if (x != null || z != null) {
        throw "Only one dimension is allowed to be set";
      }
    }
    if (z != null) {
      if (x != null || y != null) {
        throw "Only one dimension is allowed to be set";
      }
    }
  }

  @override
  List<Object?> get props => [x, y, z];


  OneDimensionOffset operator +(OneDimensionOffset other) {
    if (x != null) {
      if (other.y != null || other.z != null) {
        throw "Cannot create 1D offset with different dimensions.";
      }
      if (other.x == null) {
        throw "Cannot add offset with empty x";
      }
    }
    if (y != null) {
      if (other.x != null || other.z != null) {
        throw "Cannot create 1D offset with different dimensions.";
      }
      if (other.y == null) {
        throw "Cannot add offset with empty y";
      }
    }
    if (z != null) {
      if (other.x != null || other.y != null) {
        throw "Cannot create 1D offset with different dimensions.";
      }
      if (other.z == null) {
        throw "Cannot add offset with empty z";
      }
    }

    if (other.x != null) {
      return OneDimensionOffset(x: x! + other.x!);
    }
    if (other.y != null) {
      return OneDimensionOffset(y: y! + other.y!);
    }
    if (other.z != null) {
      return OneDimensionOffset(z: z! + other.z!);
    }
    return this;
  }
}
