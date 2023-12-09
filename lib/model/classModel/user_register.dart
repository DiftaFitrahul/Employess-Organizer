class UserRegister {
  String? email;
  String? password;

  UserRegister({this.email, this.password});

  Map<String, String> toJson() {
    final Map<String, String> data = <String, String>{};
    data['email'] = email!;
    data['password'] = password!;

    return data;
  }
}
