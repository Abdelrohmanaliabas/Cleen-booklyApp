import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_bookely_app/Feature/splash/presentation/constant.dart';
import 'package:new_bookely_app/Feature/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData.dark().copyWith(scaffoldBackgroundColor: KBackGroundColor),
      home: const SplashView(),
    );
  }
}
