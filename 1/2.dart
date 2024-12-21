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

  int res = 0;

  for (final e in left) {
    res += (e * right.where((r) => r == e).length);
  }
  print(res);
}
