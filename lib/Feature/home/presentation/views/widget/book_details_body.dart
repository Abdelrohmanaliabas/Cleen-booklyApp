import 'package:flutter/material.dart';
import 'package:new_bookely_app/Feature/home/presentation/views/widget/CustomBookDetailsAppBar.dart';
import 'package:new_bookely_app/Feature/home/presentation/views/widget/CustomListViewItem.dart';
import 'package:new_bookely_app/Feature/home/presentation/views/widget/Feature_list_View_Horizental.dart';
import 'package:new_bookely_app/Feature/home/presentation/views/widget/custombtm.dart';
import 'package:new_bookely_app/core/utils/styles.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, left: 30, right: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const CustomAppBarDetailsBook(),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.13),
            child: CustomlistViewItem(),
          ),
          const Text(
            'booksModel.volumeInfo.title!',
            maxLines: 1,
            style: Style.fontStyle24,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            'booksModel.volumeInfo.authors![0]',
            maxLines: 1,
            style: Style.fontStyle16,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Expanded(
                child: CustomButtom(
                  onPresed: () {},
                  backgroundColor: Colors.white,
                  text: 'Free',
                  textColor: Colors.black,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(12),
                      bottomLeft: Radius.circular(12)),
                ),
              ),
              Expanded(
                child: CustomButtom(
                  onPresed: () {},
                  backgroundColor: Color(0xffEF8262),
                  text: 'Free PreView',
                  textColor: Colors.white,
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(12),
                      bottomRight: Radius.circular(12)),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            'you can also like',
            style: Style.fontStyle16.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 16,
          ),
          FeatureListViewVirtical(),
        ],
      ),
    );
  }
}
