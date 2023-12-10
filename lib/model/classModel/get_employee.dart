class GetEmployee {
  String? id;
  String? email;
  String? firstName;
  String? lastName;
  String? avatar;

  GetEmployee(
      {this.id, this.email, this.firstName, this.lastName, this.avatar});

  factory GetEmployee.fromJson(Map<String, dynamic> json) {
    return GetEmployee(
      id: json['id'],
      email: json['email'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      avatar: json['avatar'],
    );
  }
}
