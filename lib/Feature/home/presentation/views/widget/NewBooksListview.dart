import 'package:flutter/material.dart';
import 'package:new_bookely_app/Feature/home/presentation/views/widget/NewBooksListViewItem.dart';

class NewBooksListView extends StatelessWidget {
  const NewBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(top: 10),
          child: NewBooksInListViewItem(),
        );
      },
      itemCount: 15,
    );
  }
}
