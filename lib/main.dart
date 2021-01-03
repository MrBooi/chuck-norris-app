import 'package:flutter/material.dart';
import 'chuck_norris_app.dart';
import 'injection_container.dart' as di;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  di.initServices();
  runApp(ChuckNorrisApp());
}
