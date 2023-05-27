import 'package:final_project/Pages/Login_page.dart';
import 'package:final_project/Pages/Mocking_page.dart';
import 'package:final_project/Pages/Sign_up.dart';
import 'package:final_project/Pages/home_page.dart';
import 'package:final_project/Pages/Cart_page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:io';
import 'dart:convert';

class Item {
  final int? id;
  final String? username;
  final String? password;

  Item({
    this.id,
    this.username,
    this.password,
  });

}class Signin extends StatelessWidget {
  const Signin({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(198, 0, 0, 70),
      body: Center(
        child: ListView(
        children: <Widget>[
          Container(  //กล่องโลโก้
            height: 200, //แก้ความสูงส่วนของช่องใส่โลโก้ตรงนี้
            padding: const EdgeInsets.only(bottom: 30), //แก้ระยะห่างของโลโก้จากแถบขาวตรงนี้
            child: Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset('assets/pic/Logo.png', height: 50) //แก้ Logo กับขนาด Logo ตรงนี้
            ,)
          ),
          Container( //กล่องปุ่มกด
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20))
            ),
            alignment: Alignment.center,
            padding: const EdgeInsets.only(bottom: 10),
            height: 500, //แก้ความสูงแถบขาวตรงนี้
            child: Container(
              padding: const EdgeInsets.only(right: 30,left: 30),
              alignment: Alignment.center,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  Text("Sign in",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,)),
                  SizedBox(height: 20,),
                  Text("Email",
                  style: TextStyle(fontSize: 20)),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    //controller: username,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email...',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Password",
                  style: TextStyle(fontSize: 20)),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    //controller: password,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password...',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: (() {
                      debugPrint("Sign in!");
                      //ลิงค์ไปหน้า Menu ตรงนี้
                      Navigator.push(
                      context,MaterialPageRoute(builder: (context) => MockingPage()),);
                    }),
                    child: Text("Sign in"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      padding: EdgeInsets.all(20)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    onPressed: (() {
                      debugPrint("Go to sign up!");
                      Navigator.push(
                      context,MaterialPageRoute(builder: (context) => const Signup()),);
                    }),
                    child: Text("Sign up",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 46, 84),
                    )),
                  )
                    ]),)
          )
        ],
    )),
    );
  }
}
