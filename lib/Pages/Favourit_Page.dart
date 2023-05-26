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

class FavouritPage extends StatelessWidget
{
  List<Item>? Picdata;
  var jsonstring = File("lib/Json/FavouritJson.json").readAsStringSync();
  final Map<String, dynamic> jsonmap = json.decoder.convert(jsonstring);
  

  @override
    Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: Text("Favourit game"),),
        body: Container(
          padding: EdgeInsets.all(20),
          child: List.generate(FavouritData.leng, (index) => null),
        ),
      );
    }
}
