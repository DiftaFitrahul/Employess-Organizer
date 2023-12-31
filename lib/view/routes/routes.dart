import 'package:employees_organizer/view/bindings/home.dart';
import 'package:employees_organizer/view/bindings/login.dart';
import 'package:employees_organizer/view/bindings/register.dart';
import 'package:employees_organizer/view/bindings/splash.dart';
import 'package:employees_organizer/view/routes/routes_name.dart';
import 'package:employees_organizer/view/screen/add_employee.dart';
import 'package:employees_organizer/view/screen/auth/login.dart';
import 'package:employees_organizer/view/screen/auth/register.dart';
import 'package:employees_organizer/view/screen/detail_employee.dart';
import 'package:employees_organizer/view/screen/home.dart';
import 'package:employees_organizer/view/screen/loading/login.dart';
import 'package:employees_organizer/view/screen/splash.dart';
import 'package:get/get.dart';

import '../bindings/add_employee.dart';
import '../bindings/detail_employee.dart';
import '../screen/loading/register.dart';

class Routes {
  const Routes._();
  static final pages = [
    GetPage(
      name: RoutesName.home,
      page: () => const HomeScreen(),
      binding: HomeScreenBinding(),
    ),
    GetPage(
      name: RoutesName.splash,
      page: () => const SplashScreen(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: RoutesName.login,
      page: () => const LoginScreen(),
      binding: LoginScreenBinding(),
    ),
    GetPage(
      name: RoutesName.register,
      page: () => const RegisterScreen(),
      binding: RegisterScreenBinding(),
    ),
    GetPage(
      name: RoutesName.loadingLoginAuth,
      page: () => const LoadingLoginAuth(),
    ),
    GetPage(
      name: RoutesName.loadingRegisterAuth,
      page: () => const LoadingRegisterAuth(),
    ),
    GetPage(
      name: RoutesName.detail,
      page: () => const DetailScreen(),
      binding: DetailScreenBinding(),
    ),
    GetPage(
      name: RoutesName.addEmployee,
      page: () => const AddEmployeeScreen(),
      binding: AddEmployeeBinding(),
    )
  ];
}
