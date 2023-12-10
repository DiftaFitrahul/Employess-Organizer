import 'package:employees_organizer/model/classModel/get_employee.dart';
import 'package:employees_organizer/model/repository/employee.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeController extends GetxController with StateMixin<List<GetEmployee>> {
  @override
  void onInit() {
    getEmployees();
    super.onInit();
  }

  Future<void> getEmployees({int page = 1}) async {
    try {
      change([], status: RxStatus.loading());
      final result = await EmployeeService().getEmployee(page: page);
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

  Future<void> signOut() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('token');
  }
}
