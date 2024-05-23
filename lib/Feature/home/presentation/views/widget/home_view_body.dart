import 'package:flutter/material.dart';
import 'package:new_bookely_app/Feature/home/presentation/views/widget/CustomListViewItem.dart';
import 'package:new_bookely_app/Feature/home/presentation/views/widget/Custom_app_bar.dart';
import 'package:new_bookely_app/Feature/home/presentation/views/widget/Feature_list_View_Horizental.dart';
import 'package:new_bookely_app/Feature/home/presentation/views/widget/NewBooksListViewItem.dart';
import 'package:new_bookely_app/Feature/home/presentation/views/widget/NewBooksListview.dart';
import 'package:new_bookely_app/core/utils/styles.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              CustomAppbarHome(),
              SizedBox(
                height: 24,
              ),
              FeatureListViewVirtical(),
              SizedBox(
                height: 32,
              ),
              Row(
                children: [
                  Text(
                    'New books',
                    style: Style.titleMedium,
                  ),
                ],
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: NewBooksListView(),
        )
      ],
    );
    // return const Column(
    //   children: [
    //     CustomAppbarHome(),
    //     SizedBox(
    //       height: 24,
    //     ),
    //     FeatureListViewVirtical(),
    //     SizedBox(
    //       height: 32,
    //     ),
    //     Row(
    //       children: [
    //         Text(
    //           'New books',
    //           style: Style.titleMedium,
    //         ),
    //       ],
    //     ),
    //     SizedBox(
    //       height: 16,
    //     ),
    //     NewBooksListView(),
    //   ],
    // );
  }
}
