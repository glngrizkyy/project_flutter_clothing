import 'package:clothing_one/view/home_dashboard/home_dashboard.dart';
import 'package:go_router/go_router.dart';

import '../../view/splash_screen/splashscreen.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: '/home_dashboard',
      builder: (context, state) => const HomeDashboard(),
    ),
  ],
);
