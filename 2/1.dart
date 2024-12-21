import 'dart:io';

import '../helper.dart';

void main() {
  final inputFile = File(inputPath());

  int safeCount = 0;
  for (final report in inputFile.readAsLinesSync()) {
    final levels = report.trim().split(' ').map(int.parse).toList();

    bool safe = true;
    bool increasing = false, decreasing = false;
    for (int i = 0; i < levels.length - 1; i++) {
      if (!safe) break;
      final diff = levels[i] - levels[i + 1];

      if (diff == 0 || diff.abs() > 3) safe = false;
      if (diff > 0) {
        increasing = true;
      } else {
        decreasing = true;
      }
      if (increasing && decreasing) safe = false;
    }
    if (safe) safeCount++;
  }
  print(safeCount);
}
