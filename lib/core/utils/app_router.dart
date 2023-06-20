import 'package:go_router/go_router.dart';

import '../../features/home/presentation/views/Book_Details_View.dart';
import '../../features/home/presentation/views/home.dart';
import '../../features/search/presentation/views/Search_view.dart';
import '../../features/splash/presentation/Views/splash_view.dart';

abstract class AppRouter {
  static const Khomeview='/homeview';
  static const Kbookdetailsview='/bookdetailsview';
  static const KSearchView='/searchview';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: Khomeview,
        builder: (context, state) => const homeview(),
      ),
      GoRoute(
        path: Kbookdetailsview,
        builder: (context, state) => const BookViewDetails(),
      ),
      GoRoute(
        path: KSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
