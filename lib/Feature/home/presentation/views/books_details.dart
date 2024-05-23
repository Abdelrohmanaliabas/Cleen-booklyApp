import 'package:flutter/material.dart';
import 'package:new_bookely_app/Feature/home/presentation/views/widget/book_details_body.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BookDetailsBody(),
    );
  }
}
