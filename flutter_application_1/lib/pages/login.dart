import 'dart:convert';
import 'dart:developer';
import 'package:flutter_application_1/config/config.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/register.dart';
import 'package:flutter_application_1/pages/showtrip.dart';



class LoginPage extends StatefulWidget {
  LoginPage({super.key});
  
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
String url = '';

@override
void initState() {
super.initState();
Configuration.getConfig().then(
  (config) {
	url = config['apiEndpoint'];
  },
);
}
TextEditingController phontCtl = TextEditingController();
int i=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: SizedBox(
        child: Container(
          width: MediaQuery.of(context).size.width,
          
          child: Column(
          children: [
              GestureDetector(
                onTap: () => login(),
                child: Image.asset('assets/images/download (1).jpg')),
              Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                children: [
                  Text('หมายเลขโทรศัพท์'),
                ],
              ),
            ),
              Padding(
              padding: EdgeInsets.only(left: 30,right: 30,bottom: 20),
              child: TextField(
                decoration: InputDecoration(
                  border:
                    OutlineInputBorder(borderSide: BorderSide(width: 1)))),
              ),
              Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                children: [
                  Text('รหัสผ่าน'),
                ],
              ),
            ),
              Padding(
              padding: EdgeInsets.only(left: 30,right: 30),
              child: TextField(
                controller: phontCtl,
                decoration: InputDecoration(
                  border:
                    OutlineInputBorder(borderSide: BorderSide(width: 1)))),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30,right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(onPressed: register, child: const Text('ลงทะเบียนใหม่')),
                    FilledButton(onPressed: login, child: const Text('เข้าสู่ระบบ')),
                  ],
                ),
              )
                  
               
           
              
            ],
            )
        ),
      ),
    );
  }

   void login() {
    var data = {"phone": "0817399999", "password": "1111"};
    http
        .post(Uri.parse("http://10.34.3.129:3000/customers/login"),
            headers: {"Content-Type": "application/json; charset=utf-8"},
            body: jsonEncode(data))
        .then(
      (value) {
        log(value.body);
      },
    ).catchError((error) {
      log('Error $error');
    });
  }
  void register() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Register(),
        ));
  }
}