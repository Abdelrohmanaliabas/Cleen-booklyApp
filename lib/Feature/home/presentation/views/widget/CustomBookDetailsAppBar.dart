import 'package:flutter/material.dart';

class CustomAppBarDetailsBook extends StatelessWidget {
  const CustomAppBarDetailsBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.close,
            size: 32,
          ),
        ),
        const Spacer(),
        IconButton(
            onPressed: () {}, icon: const Icon(Icons.shopping_cart_outlined))
      ],
    );
  }
}
