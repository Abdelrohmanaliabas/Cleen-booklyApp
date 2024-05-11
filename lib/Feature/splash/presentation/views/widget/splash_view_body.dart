import 'package:flutter/material.dart';
import 'package:new_bookely_app/core/utils/assets.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingInimation;
  late Animation<Offset> slidingInimationLogo;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    slidingInimation =
        Tween<Offset>(begin: const Offset(0, 5), end: const Offset(0, 0))
            .animate(animationController);
    slidingInimationLogo =
        Tween<Offset>(begin: const Offset(0, -2), end: const Offset(0, 0))
            .animate(animationController);
    animationController.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AnimatedBuilder(
            animation: slidingInimationLogo,
            builder: (context, _) {
              return SlideTransition(
                position: slidingInimationLogo,
                child: Image.asset(
                  AssetsData.logo,
                ),
              );
            }),
        const SizedBox(
          height: 7,
        ),
        AnimatedBuilder(
            animation: slidingInimation,
            builder: (context, _) {
              return SlideTransition(
                position: slidingInimation,
                child: const Text(
                  'Read Free Books',
                  textAlign: TextAlign.center,
                ),
              );
            })
      ],
    );
  }
}
