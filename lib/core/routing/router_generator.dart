import 'package:bookly/core/routing/app_routes.dart';
import 'package:bookly/features/home/presentation/view/home_view.dart';
import 'package:bookly/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

class RouterGenerator {
  static GoRouter mainRoutingInOurApp = GoRouter(
    initialLocation: AppRoutes.splashView,
    routes: [

    GoRoute(
      path: AppRoutes.splashView,
    name: AppRoutes.splashView,
    builder: (context, state) => SplashView(),
    ),
      GoRoute(
      path: AppRoutes.homeView,
    name: AppRoutes.homeView,
    builder: (context, state) => HomeView(),
    ),
    ]
    
    );
}
