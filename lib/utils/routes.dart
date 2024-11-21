import 'package:go_router/go_router.dart';
import 'package:riverpod_playground/ui/dashboard/dashboardscreen.dart';
import 'package:riverpod_playground/ui/login/loginscreen.dart';
import 'package:riverpod_playground/ui/splash/splashscreen.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
      path: SplashScreen.routeName,
      builder: (context, state) => SplashScreen()),
  GoRoute(
      path: LoginScreen.routeName,
      builder: (context, state) => LoginScreen()),
  GoRoute(
      path: DashboardScreen.routeName,
      builder: (context, state) => DashboardScreen()),
]);
