import 'dart:ffi';

import 'package:final_project/Pages/Login_page.dart';
import 'package:final_project/Pages/Sign_up.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:io';
import 'dart:convert';

class Item {
  final String? username;
  final String? email;
  final String? password;

  Item({
    this.username,
    this.email,
    this.password,
  });
}

String _localhost() {
  if (Platform.isAndroid)
    return 'http://10.0.2.2:3306';
  else
    return 'http://localhost:3306';
}

class Signin extends StatelessWidget {
  final List<TextEditingController> UserDatalist =
      List.generate(2, (i) => TextEditingController());
  final email = '';
  final password = '';

  Future? serverData;
  Future<bool>? loginPass;

  Future<List<Item>> getData() async {
    final response = await http.get(Uri.parse(_localhost() + "/showDB"));

    var responseData = json.decode(response.body);
    //Creating a list to store input data;
    List<Item> items = [];
    responseData.forEach((index, value) {
      Item item = Item(email: value["email"], password: value["password"]);
      items.add(item);
    });

    return items;
  }

  Future<bool> setLogin(
      Future? serverData, String email, String password) async {
    List<Item> serverDataList = await serverData;

    for (var data in serverDataList) {
      if (data.email == email && data.password == password) {
        return Future.value(true);
      }
    }

    return Future.value(false);
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
                padding: const EdgeInsets.only(right: 30, left: 30),
                alignment: Alignment.center,
                child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: <Widget>[
                      Text("Sign in",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      Text("Email", style: TextStyle(fontSize: 20)),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: UserDatalist[0],
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Email...',
                            hintText: 'Enter valid email id as abc@gmail.com'),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text("Password", style: TextStyle(fontSize: 20)),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: UserDatalist[1],
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Password...',
                            hintText: 'Enter password'),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: (() async {
                          debugPrint("Sign in!");
                          serverData = getData();

                          bool loginCheck = await setLogin(serverData,
                              UserDatalist[0].text, UserDatalist[1].text);

                          debugPrint(loginCheck.toString());

                          if (loginCheck) {
                            //ลิงค์ไปหน้า Menu ตรงนี้
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Loginpage()),
                            );
                          } else {
                            showDialog(
                                context: context,
                                builder: ((context) {
                                  return AlertDialog(
                                      content: Text(
                                          "Incorrect username or password!"));
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
                            context,
                            MaterialPageRoute(builder: (context) => Signup()),
                          );
                        }),
                        child: Text("Sign up",
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 46, 84),
                            )),
                      )
                    ]),
              )),
          FutureBuilder(
              future: serverData,
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
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(snapshot.data[index].id.toString()),
                              Text(snapshot.data[index].username),
                              Text(snapshot.data[index].password)
                            ],
                          ),
                        );
                      }));
                }
              })
        ],
      )),
    );
  }
}
