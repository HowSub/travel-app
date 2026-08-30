import 'package:go_router/go_router.dart';
import 'package:travel/features/home/presentation/screens/home_screen.dart';
import 'package:travel/features/splash/presentation/screens/app_splash_screen.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => AppSplashScreen()),
    GoRoute(path: '/home', builder: (context, state) => HomeScreen()),
  ],
);
