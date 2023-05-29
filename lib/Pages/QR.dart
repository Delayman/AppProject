import 'package:final_project/Cart/Cart_Manager.dart';
import 'package:final_project/Pages/Cart_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class QRcode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var cartManager = Provider.of<CartManager>(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0),
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.white,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'QR code',
                    style: TextStyle(color: Colors.black, fontSize: 50),
                  ),

                  SizedBox(
                    height: 50,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/pic/Rickrolling_QR_code.png',
                      height: 300,
                      width: 300,
                    ),
                  ),

                  //Container(
                  //margin: EdgeInsets.all(20),
                  // child: Image(
                  // height: 200,
                  // width: 200,
                  // image: AssetImage('assets/pic/Rickrolling_QR_code.png')
                  // ),
                  //),

                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      width: 300,
                      child: TextButton(
                        onPressed: (() {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (_) => CartPage()));
                          cartManager.clearCart();
                        }),
                        style: TextButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 0, 46, 84)),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("CHECK OUT",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  //backgroundColor: Color.fromARGB(255, 0, 46, 84),
                                  fontSize: 20)),
                        ),
                      ),
                    ),
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
