import 'package:final_project/Pages/Block_App.dart';
import 'package:final_project/Pages/Cart_page.dart';
import 'package:final_project/Product/Game_Item.dart';
import 'package:flutter/material.dart';
import 'package:final_project/Cart/Cart_Manager.dart';
import 'package:provider/provider.dart';


class MockingPage extends StatelessWidget {
  const MockingPage({super.key});

  @override
  Widget build(BuildContext context) {
    var cartManager = Provider.of<CartManager>(context);
    return Scaffold(
        appBar: AppBar(title: const Text('Mocking'), centerTitle: true,),
        body: Center(
          child: Padding(
      padding: const EdgeInsets.all(.0),
      child: InkWell(
        child: Container(
            child: Stack(
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  Center(
                    child: InkWell(
                    onTap: () 
                    {
                      var product = Game_Item(id: '1', name: 'Sekiro', img: 'Sekiro.jpg', price: 2000.00);
                      cartManager.addToCart(product);
                    },
                  child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset('assets/pic/Sekiro.jpg',
                  width: 110.0, 
                  height: 110.0),
                ),
              ),
            ),
                 Center(
                    child: InkWell(
                    onTap: () 
                    {
                      var product = Game_Item(id: '2', name: 'Until Dawn', img: 'Until_Dawn.jpg', price: 1000.00);
                      cartManager.addToCart(product);
                    },
                  child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset('assets/pic/Until_Dawn.jpg',
                  width: 110.0, 
                  height: 110.0),
                ),
              ),
            ),
                  Center(
                    child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                      MaterialPageRoute(
                      builder: (_) => CartPage()));},
                  child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset('assets/pic/Logo.png',
                  width: 110.0, 
                  height: 110.0),
                ),
              ),
            ),
                ],
              ),
            ),
          ],
        )),
      ),
    ),
        ),
    );
  }
}
