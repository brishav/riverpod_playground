import 'package:go_router/go_router.dart';
import 'package:riverpod_playground/ui/splash/splashscreen.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
      path: SplashScreen.routeName,
      builder: (context, state) => SplashScreen()),
]);
