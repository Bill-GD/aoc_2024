import 'dart:io';

String scriptPath() {
  return File(Platform.script.path).parent.path.substring(1);
}
