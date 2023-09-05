import 'package:auto_route/auto_route.dart';
import 'package:movie_app/features/detail/presentation/view/detail_page.dart';
import 'package:movie_app/features/list_movie/presentation/view/list_page.dart';
import 'package:movie_app/features/search_movie/presentation/view/search_page.dart';
import 'package:movie_app/features/splash/splash_page.dart';

export 'router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, path: '/'),
    AutoRoute(page: DetailPage, path: '/detail-screen'),
    AutoRoute(page: SearchPage, path: '/search-screen'),
    AutoRoute(page: ListPage, path: '/list-screen'),
  ]
)

class $AppRouter {}
