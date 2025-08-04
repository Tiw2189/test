// To parse this JSON data, do
//
//     final customerRegisterPostRes = customerRegisterPostResFromJson(jsonString);

import 'dart:convert';

CustomerRegisterPostRes customerRegisterPostResFromJson(String str) => CustomerRegisterPostRes.fromJson(json.decode(str));

String customerRegisterPostResToJson(CustomerRegisterPostRes data) => json.encode(data.toJson());

class CustomerRegisterPostRes {
    String fullname;
    String phone;
    String email;
    String image;
    String password;

    CustomerRegisterPostRes({
        required this.fullname,
        required this.phone,
        required this.email,
        required this.image,
        required this.password,
    });

    factory CustomerRegisterPostRes.fromJson(Map<String, dynamic> json) => CustomerRegisterPostRes(
        fullname: json["fullname"],
        phone: json["phone"],
        email: json["email"],
        image: json["image"],
        password: json["password"],
    );

    Map<String, dynamic> toJson() => {
        "fullname": fullname,
        "phone": phone,
        "email": email,
        "image": image,
        "password": password,
    };
}
