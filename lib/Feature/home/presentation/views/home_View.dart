import 'package:flutter/material.dart';
import 'package:new_bookely_app/Feature/home/presentation/views/widget/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: HomeViewBody(),
    ));
  }
}
