import 'package:bored_ddd/presentation/_bindings/home_binding.dart';
import 'package:bored_ddd/presentation/views/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: HomeBinding(),
      home: MyHomePage(),
    );
  }
}
