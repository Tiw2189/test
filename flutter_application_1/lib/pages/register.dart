import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ลงทะเบียนสมาชิกใหม่'),
      ),
      body: SizedBox(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30),
                  child: Text('ชื่อ-นามสกุล'),
                )
              ],
            ),
              
            Padding(
              padding: EdgeInsets.only(left: 30,right: 30,bottom: 20),
              child: TextField(
                decoration: InputDecoration(
                  border:
                    OutlineInputBorder(borderSide: BorderSide(width: 1)))),
              ),
              Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30),
                  child: Text('หมายเลขโทรศัพท์'),
                )
              ],
            ),
              
            Padding(
              padding: EdgeInsets.only(left: 30,right: 30,bottom: 20),
              child: TextField(
                decoration: InputDecoration(
                  border:
                    OutlineInputBorder(borderSide: BorderSide(width: 1)))),
              ),
              Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30),
                  child: Text('อีเมล'),
                )
              ],
            ),
              
            Padding(
              padding: EdgeInsets.only(left: 30,right: 30,bottom: 20),
              child: TextField(
                decoration: InputDecoration(
                  border:
                    OutlineInputBorder(borderSide: BorderSide(width: 1)))),
              ),Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30),
                  child: Text('รหัสผ่าน'),
                )
              ],
            ),
              
            Padding(
              padding: EdgeInsets.only(left: 30,right: 30,bottom: 20),
              child: TextField(
                decoration: InputDecoration(
                  border:
                    OutlineInputBorder(borderSide: BorderSide(width: 1)))),
              ),Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30),
                  child: Text('ยืนยันรหัสผ่าน'),
                )
              ],
            ),
              
            Padding(
              padding: EdgeInsets.only(left: 30,right: 30,bottom: 20),
              child: TextField(
                decoration: InputDecoration(
                  border:
                    OutlineInputBorder(borderSide: BorderSide(width: 1)))),
              ),
              FilledButton(onPressed: register, 
              child: Text('สมัครสมาชิก')),
              Column( 
                
                children: [Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30),
                    child: TextButton(onPressed: () {
                      
                    }, child: Text('หากมีบัญชีอยู่แล้ว?')),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30),
                    child: TextButton(onPressed: () {
                      
                    }, child: Text('เข้าสู่ระบบ')),
                  )
                ],
                  
                )
                  
                  
                ],
              )
              
            ],
          ),
        ),
      ),
    );

  }

  void register() {
              
            }
}