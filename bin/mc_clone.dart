#!/usr/bin/env dart

import 'package:minecraft_calculator/core/calculator.dart';
import 'package:minecraft_calculator/core/model.dart';

void main(List<String> args) {
  if (args.length != 9) {
    throw "Invalid number of args";
  }

  var start = Point(int.parse(args[0]), int.parse(args[1]), int.parse(args[2]));
  var end = Point(int.parse(args[3]), int.parse(args[4]), int.parse(args[5]));
  var offset = OneDimensionOffset(
    x: int.parse(args[6]), y: int.parse(args[7]), z: int.parse(args[8]),);

  var target = Calculator.getTarget(start: start, end: end, offset: offset);

  print("/clone "
      "${start.x} ${start.y} ${start.z} "
      "${end.x} ${end.y} ${end.z} "
      "${target.x} ${target.y} ${target.z}");
}
