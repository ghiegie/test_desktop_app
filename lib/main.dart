import 'dart:io';

import 'package:flutter/material.dart';
import 'package:test_desktop_app/app.dart';
import 'package:window_size/window_size.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    setWindowTitle('My App');
    setWindowMinSize(const Size(800, 450));
  }

  runApp(const MyApp());
}

