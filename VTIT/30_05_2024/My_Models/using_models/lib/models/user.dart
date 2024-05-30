class User {
  final int id;
  final String name;
  final String email;

  User({required this.id, required this.name, required this.email});

  // phuong thuc de tao doi tuong User tu Json
  factory User.fromJson(Map<String, dynamic> json){
    return User(id: json['id'], name: json['name'], email: json['email']);
  }
  //phuong thuc de chuyen doi tuong User thanh Json
  Map<String, dynamic> toJson(){
    return {
      'id' : id,
      'name' : name,
      'email': email,
    };
  }
}