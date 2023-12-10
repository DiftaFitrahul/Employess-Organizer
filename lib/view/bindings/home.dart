import 'package:get/get.dart';

import '../../viewModel/detail_employee.dart';
import '../../viewModel/home.dart';

class HomeScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => DetailController());
  }
}
