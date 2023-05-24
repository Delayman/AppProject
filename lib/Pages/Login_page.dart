import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:io';
import 'dart:convert';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Flutter mySQL', home: MyInputScreen());
  }
}

String _localhost() {
  if (Platform.isAndroid)
    return 'http://10.0.2.2:3000';
  else // for iOS simulator
    return 'http://localhost:3000';
}

class MyInputScreen extends StatelessWidget {
  const MyInputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 133, 235),
      body: InputScreen(),
    );
  }
}

class InputScreen extends StatefulWidget {
  @override
  _InputScreen createState() => _InputScreen();
}

//Creating a class to store the data;
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

class _InputScreen extends State<InputScreen> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController newpassword = TextEditingController();
  Future? serverResponse;

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

  void updateData() async {
    final response = await http.post(
      Uri.parse(_localhost() + "/updateDB"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'username': username.text,
        'password': newpassword.text
      }),
    );
  }

  void deleteData() async {
    final response = await http.post(
      Uri.parse(_localhost() + "/deleteDB"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'username': username.text,
      }),
    );
  }

  Future<List<Item>> showData() async {
    final response = await http.get(Uri.parse(_localhost() + "/showDB"));

    var responseData = json.decode(response.body);
    //Creating a list to store input data;
    List<Item> items = [];
    responseData.forEach((index, value) {
      Item item = Item(
          id: value["id"],
          username: value["username"],
          password: value["password"]);
      items.add(item);
    });

    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 133, 235),
      body: Center(
        child: ListView(
        children: <Widget>[
          Container(  //กล่องโลโก้
            height: 400, //แก้ความสูงส่วนของช่องใส่โลโก้ตรงนี้
            padding: const EdgeInsets.only(bottom: 100), //แก้ระยะห่างของโลโก้จากแถบขาวตรงนี้
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
            height: 300, //แก้ความสูงแถบขาวตรงนี้
            child: Container(
              width: 200,
              alignment: Alignment.center,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  ElevatedButton(
                onPressed: (() {
                  debugPrint("Sign in!");

                }),
                child: Text("Sign in"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  padding: EdgeInsets.all(20)),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20.0),),
              ElevatedButton(
                onPressed: (() {
                  debugPrint("Sign up!");

                }),
                child: Text("Sign up"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  padding: EdgeInsets.all(20)),
              )
                ]),)
          )
        ],
    )),
    );
  }
}
