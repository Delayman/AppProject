import 'package:final_project/Cart/Cart_Manager.dart';
import 'package:final_project/Favorite/FavoriteList_Manager.dart';
import 'package:final_project/Pages/Block_App.dart';
import 'package:final_project/Pages/Cart_page.dart';
import 'package:final_project/Pages/Favorite_page.dart';
import 'package:final_project/Pages/Login_page.dart';
import 'package:final_project/Pages/Product_Evil.dart';
import 'package:final_project/Pages/Product_Lies.dart';
import 'package:final_project/Pages/Product_Night.dart';
import 'package:final_project/Pages/Product_Thelast.dart';
import 'package:final_project/Pages/Product_Unchart.dart';
import 'package:final_project/Pages/Product_UntilDawn.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InkWellExampleApp extends StatelessWidget {
  const InkWellExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    var cartManager = Provider.of<CartManager>(context);
    var favManager = Provider.of<FavoriteListManager>(context);
    return Scaffold(
      appBar: AppBar(
        title: Image(image: AssetImage('assets/pic/Logo_Icon_Main.png')),
        centerTitle: true,
        //titleTextStyle: TextStyle(fontSize: 32,color: Color.fromARGB(255, 255, 255, 255)),
        backgroundColor: Color.fromARGB(255, 9, 33, 71), toolbarHeight: 70,
        actions: [
          PopupMenuButton<int>(
              onSelected: (item) =>
                  onSelectMenu(context, item, cartManager, favManager),
              itemBuilder: (context) => [
                    PopupMenuItem<int>(
                      value: 0,
                      child: Text('Cart'),
                    ),
                    PopupMenuItem<int>(
                      value: 1,
                      child: Text('Favourite'),
                    ),
                    PopupMenuItem<int>(
                      value: 2,
                      child: Text('Log Out'),
                    ),
                  ])
        ],
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            //SizedBox(height: 20),

            Container(
              margin: EdgeInsets.all(20),
              child: Material(
                color: Color.fromARGB(255, 9, 33, 71),
                elevation: 10,
                borderRadius: BorderRadius.circular(28),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => ProductpageUntil()));
                  },
                  child: Column(
                    // mainAxisSize: MainAxisSize.min,
                    children: [
                      Ink.image(
                        image: AssetImage('assets/pic/Until_Dawn.jpg'),
                        // padding: EdgeInsets.all(50),
                        height: 400,
                        width: double.infinity,
                        // fit: BoxFit.cover,
                      ),
                      Container(
                          height: 100,
                          /*color: Colors.amber,*/ width: double.infinity,
                          margin: EdgeInsets.only(left: 20, right: 20, top: 12),
                          child: ListView(
                            children: [
                              Text(
                                'Until Dawn',
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                              ),
                              Text(
                                '฿890',
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Color.fromARGB(255, 249, 207, 101),
                                ),
                                textAlign: TextAlign.right,
                              )
                            ],
                          )),
                    ],
                  ),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.all(20),
              child: Material(
                color: Color.fromARGB(255, 9, 33, 71),
                elevation: 10,
                borderRadius: BorderRadius.circular(28),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => ProductpageEvil()));
                  },
                  child: Column(
                    // mainAxisSize: MainAxisSize.min,
                    children: [
                      Ink.image(
                        image: AssetImage('assets/pic/Evil_Within.jpg'),
                        // padding: EdgeInsets.all(50),
                        height: 400,
                        width: double.infinity,
                        // fit: BoxFit.cover,
                      ),
                      Container(
                          height: 100,
                          /*color: Colors.amber,*/ width: double.infinity,
                          margin: EdgeInsets.only(left: 20, right: 20, top: 12),
                          child: ListView(
                            children: [
                              Text(
                                'Evil Within',
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                              ),
                              Text(
                                '฿879',
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Color.fromARGB(255, 249, 207, 101),
                                ),
                                textAlign: TextAlign.right,
                              )
                            ],
                          )),
                    ],
                  ),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.all(20),
              child: Material(
                color: Color.fromARGB(255, 9, 33, 71),
                elevation: 10,
                borderRadius: BorderRadius.circular(28),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => ProductpageLies()));
                  },
                  child: Column(
                    // mainAxisSize: MainAxisSize.min,
                    children: [
                      Ink.image(
                        image: AssetImage('assets/pic/Life_Of_P.webp'),
                        // padding: EdgeInsets.all(50),
                        height: 400,
                        width: double.infinity,
                        // fit: BoxFit.cover,
                      ),
                      Container(
                          height: 100,
                          /*color: Colors.amber,*/ width: double.infinity,
                          margin: EdgeInsets.only(left: 20, right: 20, top: 12),
                          child: ListView(
                            children: [
                              Text(
                                'Lies of P',
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                              ),
                              Text(
                                '฿1,048',
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Color.fromARGB(255, 249, 207, 101),
                                ),
                                textAlign: TextAlign.right,
                              )
                            ],
                          )),
                    ],
                  ),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.all(20),
              child: Material(
                color: Color.fromARGB(255, 9, 33, 71),
                elevation: 10,
                borderRadius: BorderRadius.circular(28),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => ProductpageTheLast()));
                  },
                  child: Column(
                    // mainAxisSize: MainAxisSize.min,
                    children: [
                      Ink.image(
                        image: AssetImage('assets/pic/The_Last_Of_Us.webp'),
                        // padding: EdgeInsets.all(50),
                        height: 400,
                        width: double.infinity,
                        // fit: BoxFit.cover,
                      ),
                      Container(
                          height: 100,
                          /*color: Colors.amber,*/ width: double.infinity,
                          margin: EdgeInsets.only(left: 20, right: 20, top: 12),
                          child: ListView(
                            children: [
                              Text(
                                'The Last Of Us Part I',
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                              ),
                              Text(
                                '฿1,890',
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Color.fromARGB(255, 249, 207, 101),
                                ),
                                textAlign: TextAlign.right,
                              )
                            ],
                          )),
                    ],
                  ),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.all(20),
              child: Material(
                color: Color.fromARGB(255, 9, 33, 71),
                elevation: 10,
                borderRadius: BorderRadius.circular(28),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => ProductpageNigh()));
                  },
                  child: Column(
                    // mainAxisSize: MainAxisSize.min,
                    children: [
                      Ink.image(
                        image: AssetImage('assets/pic/nigh.jpg'),
                        // padding: EdgeInsets.all(50),
                        height: 400,
                        width: double.infinity,
                        // fit: BoxFit.cover,
                      ),
                      Container(
                          height: 100,
                          /*color: Colors.amber,*/ width: double.infinity,
                          margin: EdgeInsets.only(left: 20, right: 20, top: 12),
                          child: ListView(
                            children: [
                              Text(
                                'Nightingale',
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                              ),
                              Text(
                                '฿1,100',
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Color.fromARGB(255, 249, 207, 101),
                                ),
                                textAlign: TextAlign.right,
                              )
                            ],
                          )),
                    ],
                  ),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.all(20),
              child: Material(
                color: Color.fromARGB(255, 9, 33, 71),
                elevation: 10,
                borderRadius: BorderRadius.circular(28),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => ProductpageUnchart()));
                  },
                  child: Column(
                    // mainAxisSize: MainAxisSize.min,
                    children: [
                      Ink.image(
                        image: AssetImage('assets/pic/unchart.jpg'),
                        // padding: EdgeInsets.all(50),
                        height: 400,
                        width: double.infinity,
                        // fit: BoxFit.cover,
                      ),
                      Container(
                          height: 100,
                          /*color: Colors.amber,*/ width: double.infinity,
                          margin: EdgeInsets.only(left: 20, right: 20, top: 12),
                          child: ListView(
                            children: [
                              Text(
                                'UNCHARTED 4',
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                              ),
                              Text(
                                '฿749',
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Color.fromARGB(255, 249, 207, 101),
                                ),
                                textAlign: TextAlign.right,
                              )
                            ],
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onSelectMenu(
      BuildContext context, int item, CartManager, FavoriteListManager) {
    // var cartManager = Provider.of<CartManager>(context);
    // var favManager = Provider.of<FavoriteListManager>(context);
    switch (item) {
      case 0:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => CartPage()),
        );
        break;
      case 1:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => FavoritePage()),
        );
        break;
      case 2:
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => Loginpage()),
            ((route) => false));
        CartManager.clearCart();
        FavoriteListManager.clearFavList();
    }
  }
}
