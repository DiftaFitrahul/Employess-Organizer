import 'package:employees_organizer/model/classModel/get_employee.dart';
import 'package:employees_organizer/model/repository/employee.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with StateMixin<List<GetEmployee>> {
  @override
  void onInit() {
    getEmployee();
    super.onInit();
  }

  Future<void> getEmployee() async {
    try {
      change([], status: RxStatus.loading());
      final result = await EmployeeService().getEmployee();
      if (result.status.hasError) {
        change([], status: RxStatus.error());
        return;
      }
      final data = (result.body)['data'] as List;
      change(data.map((e) => GetEmployee.fromJson(e)).toList(),
          status: RxStatus.success());
    } catch (e) {
      change([], status: RxStatus.error());
    }
  }
}
