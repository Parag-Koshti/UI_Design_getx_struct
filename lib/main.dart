import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:igenerate_17/Navigation_bar.dart';
import 'package:igenerate_17/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavigationMenu(),
      getPages: AppPages.pages,
    );
  }
}
