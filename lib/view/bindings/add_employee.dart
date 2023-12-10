import 'package:get/get.dart';

import '../../viewModel/add_employee.dart';

class AddEmployeeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddEmployeeController());
  }
}
