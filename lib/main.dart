import 'package:fashion_store/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(FashionStore());

  Future.delayed(Duration(seconds: 2), () {
    FlutterNativeSplash.remove();
  });
}
