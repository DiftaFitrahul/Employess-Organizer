import 'package:employees_organizer/viewModel/auth/register.dart';
import 'package:get/get.dart';

class RegisterScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterController());
  }
}
