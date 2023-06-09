import 'package:final_project/Cart/Cart_Manager.dart';
import 'package:final_project/Favorite/FavoriteList_Manager.dart';
import 'package:final_project/Pages/Login_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Widget  Test_FG = new MediaQuery(data: new MediaQueryData(),
    //   child: new MaterialApp(home: new FirstPage()));
    //return const MaterialApp(title: 'Login page', home: Loginpage());
    return //ChangeNotifierProvider(
        MultiProvider(
      providers: [
        ChangeNotifierProvider<CartManager>(create: (_) => CartManager()),
        ChangeNotifierProvider<FavoriteListManager>(
            create: (_) => FavoriteListManager()),
      ],
      //create: (context) => CartManager(),

      child: const MaterialApp(title: 'Login page', home: Loginpage()),
      //)
    );
  }
}
