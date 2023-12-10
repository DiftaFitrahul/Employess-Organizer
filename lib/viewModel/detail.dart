import 'package:get/get.dart';

import '../model/classModel/get_employee.dart';
import '../model/repository/employee.dart';

class DetailController extends GetxController with StateMixin<GetEmployee> {
  Future<void> getSingleEmployee({required id}) async {
    try {
      change(GetEmployee(), status: RxStatus.loading());
      final result = await EmployeeService().getEmployeeDetail(id: id);
      if (result.status.hasError) {
        change(GetEmployee(), status: RxStatus.error());
        return;
      }
      final data = (result.body)['data'];
      change(GetEmployee.fromJson(data), status: RxStatus.success());
    } catch (e) {
      change(GetEmployee(), status: RxStatus.error());
    }
  }
}
