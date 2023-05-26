import 'package:final_project/Pages/Sign_in.dart';
import 'package:final_project/Pages/Sign_up.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:io';
import 'dart:convert';

class Loginpage extends StatelessWidget{
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color.fromARGB(255, 0, 0, 57),
            Color.fromARGB(255, 0, 189, 241)])),
          child: ListView(
            children: <Widget>[
              Container(  //กล่องโลโก้
                height: 350, //แก้ความสูงส่วนของช่องใส่โลโก้ตรงนี้
                padding: const EdgeInsets.only(bottom: 70), //แก้ระยะห่างของโลโก้จากแถบขาวตรงนี้
                child: Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset('assets/pic/Logo.png', height: 50) //แก้ Logo กับขนาด Logo ตรงนี้
                ,)
              ),
              Container( //กล่องปุ่มกด
                alignment: Alignment.center,
                padding: const EdgeInsets.only(bottom: 10),
                height: 300, //แก้ความสูงแถบขาวตรงนี้
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(right: 30,left: 30),
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: <Widget>[
                      ElevatedButton(
                    onPressed: (() {
                      debugPrint("Sign in!");
                      //Link function here!
                      Navigator.push(
                      context,MaterialPageRoute(builder: (context) => Signin()),);
                    }),
                    child: Text("Sign in"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      padding: EdgeInsets.all(20)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: (() {
                      debugPrint("Sign up!");
                      //Link function here!
                      Navigator.push(
                      context,MaterialPageRoute(builder: (context) => Signup()),);
                    }),
                    child: Text("Sign up"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      padding: EdgeInsets.all(20)),
                  )
                    ]),)
              )
            ],
    ),)),
    );
  }
}
