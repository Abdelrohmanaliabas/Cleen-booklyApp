import 'package:flutter/material.dart';
import 'package:new_bookely_app/Feature/splash/presentation/constant.dart';
import 'package:new_bookely_app/Feature/splash/presentation/views/splash_view.dart';
import 'package:new_bookely_app/core/utils/go_router.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: KBackGroundColor,
        textTheme: const TextTheme(),
      ),
    );
  }
}
