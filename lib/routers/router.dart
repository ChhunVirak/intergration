import 'package:auto_route/auto_route.dart';
import 'package:superapp_intergration/modules/intergration_web/screens/home_screen.dart';
import 'package:superapp_intergration/modules/intergration_web/screens/not_found_screen.dart';
import 'package:superapp_intergration/modules/intergration_web/screens/splash_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      initial: true,
      path: '/sso',
      page: SplashScreen,
    ),
    CustomRoute(
      transitionsBuilder: TransitionsBuilders.noTransition,
      path: '/home',
      page: HomeScreen,
    ),
    CustomRoute(
        transitionsBuilder: TransitionsBuilders.noTransition,
        path: '/notfounded',
        page: ErrorScreen,
        name: 'DialogScreen'),
  ],
)
class $AppRouter {}
