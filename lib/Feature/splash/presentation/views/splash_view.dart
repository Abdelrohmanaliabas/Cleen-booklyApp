// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:new_bookely_app/Feature/splash/presentation/views/widget/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          SplashViewBody(),
        ],
      ),
    );
  }
}
