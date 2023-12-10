import 'dart:convert';

import 'package:employees_organizer/model/classModel/user_login.dart';
import 'package:employees_organizer/model/classModel/user_register.dart';
import 'package:get/get.dart';

class AuthService extends GetConnect {
  Future<Response> login({required UserLogin model}) => post(
      'https://reqres.in/api/login',
      jsonEncode(
        model.toJson(),
      ));
  Future<Response> register({required UserRegister model}) => post(
      'https://reqres.in/api/register',
      jsonEncode(
        model.toJson(),
      ));
}
