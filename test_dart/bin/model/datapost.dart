class datapost {
  
  String? name;
  String? age;
  String? address;
  

  datapost(
      {this.name, this.age , this.address});

  factory datapost.fromjson({required Map json}) {
    return datapost(
        name: json['name'],
        age: json['age'],
        address: json['address'],
        );
  }

  toMap() {
    return {
      "name": name,
      "age": age,
      "address" : address,
      
    };
  }
}