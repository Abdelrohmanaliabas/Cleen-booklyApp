import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:new_bookely_app/Feature/home/presentation/views/widget/CustomListViewItem.dart';
import 'package:new_bookely_app/core/utils/assets.dart';
import 'package:new_bookely_app/core/utils/styles.dart';

class NewBooksInListViewItem extends StatelessWidget {
  const NewBooksInListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push('/BookDetails');
      },
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.17,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.7 / 4,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(4),
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(AssetsData.testImage),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 14,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: const Text(
                    'Ahmet book is the best ',
                    style: Style.fontStyle24,
                    maxLines: 2,
                    overflow: TextOverflow.clip,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                const Text(
                  'Auther book',
                  style: Style.fontStyle14,
                  maxLines: 1,
                ),
                const SizedBox(
                  height: 12,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: const Row(
                    children: [
                      Text(
                        'Free',
                        style: Style.fontStyle16,
                      ),
                      Spacer(),
                      Icon(
                        Icons.star,
                        color: Colors.yellowAccent,
                      ),
                      Text(
                        '(240)',
                        style: Style.fontStyle14,
                      ),
                      Text(
                        '4.8',
                        style: Style.fontStyle14,
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
