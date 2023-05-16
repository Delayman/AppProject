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
    return ListView(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20))
          ),
          alignment: Alignment.center,
          margin: const EdgeInsets.only(top: 100),
          padding: const EdgeInsets.only(bottom: 10),
          width: 300,
          height: 500,
          child :Align(
            child: SizedBox(
              width: 200,
              child: ListView(
                padding: EdgeInsets.only(top: 200,left: 10,right: 10),
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
              ]),
            ),
          ),
          
          // child: Align(
          //   alignment: Alignment.center,
          //   child: ElevatedButton(
          //     onPressed: ((){
          //       debugPrint("Logined!");
          //       //Function Here!!
          //     }),
          //     child: const Text('Login') ,
          //     style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 0, 22, 59)),
          //   )),
        )
      ],
    );
  }
}
