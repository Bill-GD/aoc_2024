import 'dart:io';

import '../helper.dart';

void main() {
  final inputFile = File(inputPath());
  final List<int> left = [], right = [];

  for (final line in inputFile.readAsLinesSync()) {
    final split = line.trim().split(' ').map(int.parse);
    left.add(split.first);
    right.add(split.last);
  }

  left.sort();
  right.sort();

  int totalDistance = 0;
  for (int i = 0; i < left.length; i++) {
    totalDistance += (left[i] - right[i]).abs();
  }
  print(totalDistance);
}
