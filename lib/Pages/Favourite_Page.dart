import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:io';
import 'dart:convert';

class Item {
 final String? pic;

  Item({
     this.pic,
  });

  @override
  String toString(){
    return "{pic:$pic}";
  }
}

class FavouritePage extends StatelessWidget
{

  @override
    Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: Text("Favourite game"),),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Container(
            padding: EdgeInsets.all(20),
            child: ListView(
              children: <Widget>[
              Container(decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Image.asset('assets/pic/Logo.png'),
                  )
            ]),
          ),
        ),
      );
    }
  
    // Widget FavouriteGameBox(BuildContext context){

    // }
}