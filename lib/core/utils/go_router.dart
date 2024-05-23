import 'package:go_router/go_router.dart';
import 'package:new_bookely_app/Feature/home/presentation/views/books_details.dart';
import 'package:new_bookely_app/Feature/home/presentation/views/home_View.dart';
import 'package:new_bookely_app/Feature/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: '/HomeView',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: '/BookDetails',
        builder: (context, state) => const BookDetails(),
      ),
    ],
  );
}
