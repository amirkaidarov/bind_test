import 'package:flutter/material.dart';
import 'core/app_widget.dart';
import 'injection.dart' as di;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  di.init();
  runApp(const AppWidget());
}

