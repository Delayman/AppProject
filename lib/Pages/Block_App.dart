import 'package:final_project/main.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:io';
import 'dart:convert';

void main() {
  runApp(const MyApp());
}

class Item {
  final int? id;
  final String? username;
  final String? password;

  Item({
    this.id,
    this.username,
    this.password,
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(title: 'Welcome to GAMEVLAW', home: First_Page());
  }
}

class First_Page extends StatelessWidget{
  const First_Page({super.key});

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
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Sign_in()),);
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
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Sign_up()),);
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

class Sign_in extends StatelessWidget {
  const Sign_in({super.key});
  
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
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const First_Page()),);
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
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Sign_up()),);
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

class Sign_up extends StatelessWidget {
  const Sign_up({super.key});
  
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
              padding: const EdgeInsets.only(right: 30,left: 30,top: 30),
              alignment: Alignment.center,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  Text("Register",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,)),
                  SizedBox(height: 20,),
                  Text("User name",
                  style: TextStyle(fontSize: 20)),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    //controller: username,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Username...',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Email",
                  style: TextStyle(fontSize: 20)),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    //controller: email,
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
                      debugPrint("Sign up complete!");
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Sign_in()),);
                    }),
                    child: Text("Sign up"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      padding: EdgeInsets.all(20)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    onPressed: (() {
                      debugPrint("Back to sign in!");
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Sign_in()),);
                    }),
                    child: Text("Sign in",
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