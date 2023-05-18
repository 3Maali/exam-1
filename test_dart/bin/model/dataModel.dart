class dataModel {
  
  String? email;
  String? password;
  

  dataModel(
      {this.email, this.password});

  factory dataModel.fromjson({required Map json}) {
    return dataModel(
        email: json['email'],
        password: json['password'],
        );
  }

  toMap() {
    return {
      "email": email,
      "password": password,
      
    };
  }
}