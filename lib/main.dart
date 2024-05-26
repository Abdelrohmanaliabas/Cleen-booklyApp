import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:new_bookely_app/Feature/home/data/domain/entitis/book_entity.dart';
import 'package:new_bookely_app/Feature/splash/presentation/constant.dart';
import 'package:new_bookely_app/Feature/splash/presentation/views/splash_view.dart';
import 'package:new_bookely_app/core/utils/go_router.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox<BookEntity>(kfeatureBox);
  await Hive.openBox<BookEntity>(kNewsBox);
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
        scaffoldBackgroundColor: kBackGroundColor,
        textTheme: const TextTheme(),
      ),
    );
  }
}
