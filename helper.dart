import 'dart:io';

String inputPath() {
  return File(Platform.script.path).parent.path.substring(1) + '/input.txt';
}
