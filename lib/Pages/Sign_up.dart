import 'package:final_project/Pages/Login_page.dart';
import 'package:final_project/Pages/Sign_in.dart';
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
}

String _localhost() {
  if (Platform.isAndroid)
    return 'http://10.0.2.2:3306';
  else
    return 'http://localhost:3306';
}

class Signup extends StatelessWidget {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  Future? serverResponse;

  Signup({super.key});

  void addData() async {
    final response = await http.post(
      Uri.parse(_localhost() + "/addDB"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'username': username.text,
        'password': password.text
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(198, 0, 0, 70),
      body: Center(
          child: ListView(
        children: <Widget>[
          Container(
              //กล่องโลโก้
              height: 200, //แก้ความสูงส่วนของช่องใส่โลโก้ตรงนี้
              padding: const EdgeInsets.only(
                  bottom: 30), //แก้ระยะห่างของโลโก้จากแถบขาวตรงนี้
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset('assets/pic/Logo.png',
                    height: 50) //แก้ Logo กับขนาด Logo ตรงนี้
                ,
              )),
          Container(
              //กล่องปุ่มกด
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              alignment: Alignment.center,
              padding: const EdgeInsets.only(bottom: 10),
              height: 500, //แก้ความสูงแถบขาวตรงนี้
              child: Container(
                padding: const EdgeInsets.only(right: 30, left: 30, top: 30),
                alignment: Alignment.center,
                child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: <Widget>[
                      Text("Register",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      Text("User name", style: TextStyle(fontSize: 20)),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: username,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Username...',
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text("Email", style: TextStyle(fontSize: 20)),
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
                      Text("Password", style: TextStyle(fontSize: 20)),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: password,
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
                          // debugPrint(username.text);
                          addData();
                          debugPrint(password.text);

                          debugPrint("Sign up complete!");
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Signin()),
                          );
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Signin()),
                          );
                        }),
                        child: Text("Sign in",
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 46, 84),
                            )),
                      ),
                      FutureBuilder(
                          future: serverResponse,
                          builder: (BuildContext ctx, AsyncSnapshot snapshot) {
                            if (snapshot.data == null) {
                              return Container(
                                child: Center(
                                  child: Text("No data"),
                                  // child: CircularProgressIndicator(),
                                ),
                              );
                            } else {
                              debugPrint(snapshot.data.toString());
                              return ListView.builder(
                                  scrollDirection: Axis.vertical,
                                  shrinkWrap: true,
                                  itemCount: snapshot.data.length,
                                  itemBuilder: ((context, index) {
                                    return Container(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Text(snapshot.data[index].id
                                              .toString()),
                                          Text(snapshot.data[index].username),
                                          Text(snapshot.data[index].password)
                                        ],
                                      ),
                                    );
                                  }));
                            }
                          })
                    ]),
              ))
        ],
      )),
    );
  }
}
