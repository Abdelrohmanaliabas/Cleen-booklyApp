import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:new_bookely_app/Feature/home/presentation/views/home_View.dart';
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
    super.initState();
    initSlidinginimation();
    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
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
      ),
    );
  }

  void initSlidinginimation() {
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

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 4), () {
      //   Get.to(() => const HomeView(), transition: Transition.leftToRight);
      GoRouter.of(context).push('/HomeView');
    });
  }
}
