import 'package:flutter/material.dart';
import 'package:new_bookely_app/Feature/home/presentation/views/widget/CustomBookDetailsAppBar.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 24, left: 30, right: 30),
      child: Column(
        children: [
          CustomAppBarDetailsBook(),
        ],
      ),
    );
  }
}
