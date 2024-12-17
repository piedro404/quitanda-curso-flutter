class UserModel {
  String? name;
  String? email;
  String? phone;
  String? cpf;
  String? password;
  String? id;
  String? token;

  UserModel({
    this.name,
    this.email,
    this.phone,
    this.cpf,
    this.password,
    this.id,
    this.token,
  });

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'],
      name: map['fullname'],
      email: map['email'],
      password: map['password'],
      phone: map['phone'],
      cpf: map['cpf'],
      token: map['token'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'password': password,
      'phone': phone,
      'cpf': cpf,
      'token': token,
    };
  }

  @override
  String toString() {
    return 'name: $name | cpf: $cpf';
  }
}
