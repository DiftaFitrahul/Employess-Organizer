import 'package:get/get.dart';

import '../../viewModel/detail_employee.dart';

class DetailScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailController());
  }
}
