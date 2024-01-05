import 'package:flutter/material.dart';
import 'package:ny_times/global.dart';
import 'package:ny_times/main.dart';
import 'package:ny_times/src/injection/injection.dart';

void main() {
  Global.baseURL = "https//prod";
  WidgetsFlutterBinding.ensureInitialized();
  Injection.init();
  runApp(const MyApp());
}
