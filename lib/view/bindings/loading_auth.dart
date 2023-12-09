import 'package:employees_organizer/viewModel/auth/login.dart';
import 'package:get/get.dart';

class LoadingAuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
  }
}
