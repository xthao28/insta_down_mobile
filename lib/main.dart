import 'package:flutter/material.dart';
import 'package:mobile_base_clean/core/presentation/app.dart';
import 'package:mobile_base_clean/core/presentation/bindings/app_binding.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppBinding().bind();
  runApp(App());
}
