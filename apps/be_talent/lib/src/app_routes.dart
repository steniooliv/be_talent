import 'package:be_talent/src/features/employees/view/pages/employees_page.dart';
import 'package:be_talent/src/features/splash/view/pages/splash_page.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  AppRoutes._();

  static final GetIt _di = GetIt.I;

  static final routes = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SplashPage(),
      ),
      GoRoute(
        path: '/employees',
        builder: (context, state) => EmployeesPage(
          viewModel: _di.get(),
        ),
      ),
    ],
  );
}
