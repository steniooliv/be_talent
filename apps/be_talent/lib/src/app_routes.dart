import 'package:be_talent/src/features/employees/view/pages/employees_page.dart';
import 'package:be_talent/src/features/splash/view/pages/splash_page.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  AppRoutes._();

  static final routes = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SplashPage(),
      ),
      GoRoute(
        path: '/employees',
        builder: (context, state) => EmployeesPage(),
      ),
    ],
  );
}
