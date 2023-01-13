class User {
  late String firstName;
  late String lastName;
  late String email;
  late String phone;
  late String password;
  late String city;
  late String birthDate;
  late String martialStatus;
  late String district;

  User({required this.firstName,required this.lastName,required this.email,required this.phone,required this.password,
     required this.city,required this.birthDate,required this.martialStatus,required this.district});


  factory User.fromJson(Map<String,dynamic> j){
    return  User(
        firstName:j["firstName"] ,
        lastName: j["lastName"],
        email: j["email"],
        phone: j["phone"],
        password: j["password"],
        city: j["city"],
        birthDate: j["birthDate"],
        martialStatus: j["martialStatus"],
        district: j["district"]);
  }
}