import 'package:employees_organizer/model/classModel/post_employee.dart';
import 'package:get/get.dart';

class EmployeeService extends GetConnect {
  Future<Response> getEmployee() => get('https://reqres.in/api/users?page=1');
  Future<Response> getEmployeeDetail({required int id}) =>
      get('https://reqres.in/api/users/$id');
  Future<Response> deleteEmployee({required int id}) =>
      delete('https://reqres.in/api/users/$id');
  Future<Response> createEmployee({required PostEmployee model}) =>
      post('https://reqres.in/api/users', model.toJson());
}
