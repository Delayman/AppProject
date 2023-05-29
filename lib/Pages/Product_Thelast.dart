import 'package:final_project/Cart/Cart_Manager.dart';
import 'package:final_project/Favorite/FavoriteList_Manager.dart';
import 'package:final_project/Product/Game_Item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

var product = Game_Item(
    id: '4',
    name: 'The Last of Us Part I',
    img: 'The_Last_Of_Us.webp',
    price: 1890.00);

class ProductpageTheLast extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var cartManager = Provider.of<CartManager>(context);
    var favManager = Provider.of<FavoriteListManager>(context);
    bool isContains = favManager.checkFav(product);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
            width: 550,
            height: 450,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/pic/The_Last_Of_Us.webp'),
                    fit: BoxFit.cover)),
          ),
          //รูปพื้นหลัง

          //ปุ่มfavour

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 400,
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(.2),
                        offset: Offset(0, -4),
                        blurRadius: 8)
                  ]), //กล่องครอบหน้าสีขาว
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 10, right: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            "The Last of Us Part I",
                            style: TextStyle(fontSize: 50, color: Colors.black),
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.favorite),
                          color: isContains ? Colors.red : Colors.grey,
                          onPressed: () {
                            favManager.addToFav(product);
                          },
                        ),
                      ],
                    ),
                  ),
                  //ปุ่มกด Favourite

                  Padding(
                      padding:
                          const EdgeInsets.only(top: 5, left: 10, right: 10),
                      child: Column(
                        children: [
                          Text(
                            'Experience the emotional storytelling and unforgettable tales!',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      )),

                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    child: Image.asset(
                      'assets/pic/Windows.png',
                      height: 20,
                      width: 20,
                    ),
                    height: 45,
                    width: double.infinity,
                  ),
                  //วินโดว์

                  SizedBox(
                    height: 25,
                  ),
                  Material(
                      color: Color.fromARGB(255, 28, 38, 116),
                      borderRadius: BorderRadius.circular(20),
                      child: InkWell(
                        onTap: () {
                          cartManager.addToCart(product);
                        },
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 0, 46, 84),
                              borderRadius: BorderRadius.circular(15)),
                          alignment: Alignment.center,
                          child: Text(
                            'Add to cart      ฿ 1,890',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ))
                  //ปุ่ม Add to cart
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
