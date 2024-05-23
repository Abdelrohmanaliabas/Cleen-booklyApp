import 'package:flutter/material.dart';
import 'package:new_bookely_app/Feature/home/presentation/views/widget/CustomListViewItem.dart';

class FeatureListViewVirtical extends StatelessWidget {
  const FeatureListViewVirtical({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.only(right: 10),
              child: CustomlistViewItem(),
            );
          }),
    );
  }
}
