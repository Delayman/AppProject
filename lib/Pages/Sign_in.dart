import 'package:final_project/Pages/Login_page.dart';
import 'package:final_project/Pages/Sign_up.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:io';
import 'dart:convert';


class Signin extends StatelessWidget {
  
  final List<TextEditingController> UserDatalist =
      List.generate(2, (i) => TextEditingController());
  final email = '';
  final password = '';

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
                    controller: UserDatalist[0],
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email...',
                      hintText: 'Enter valid email id as abc@gmail.com'
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
                    controller: UserDatalist[1],
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password...',
                      hintText: 'Enter password'
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: (() {
                      debugPrint("Sign in!");
                      if(UserDatalist[0] == email && UserDatalist[1] == password)
                      {
                        //ลิงค์ไปหน้า Menu ตรงนี้
                        Navigator.push(
                        context,MaterialPageRoute(builder: (context) => const Loginpage()),);
                      }
                      else{
                        showDialog(context: context,
                         builder: ((context){
                          return AlertDialog(
                            content: Text("Incorrect username or password!"));
                         }));
                      }
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
                      context,MaterialPageRoute(builder: (context) => Signup()),);
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
