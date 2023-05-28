import 'package:final_project/Favorite/FavoriteList_Manager.dart';
import 'package:final_project/Pages/Cart_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    var favManager = Provider.of<FavoriteListManager>(context);
    var favList = favManager.favItems;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: favList.length,
              itemBuilder: (context, index) {
                var item = favList[index];
                return Container(
                  padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset('assets/pic/${item.img}',
                        width: 350.0, height: 350.0),
                  ),
                );
              },
            ),
          ),
          const Divider(
            color: Colors.black,
            height: 10,
            thickness: 1,
            indent: 10,
            endIndent: 10,
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                icon: const Icon(Icons.shopping_cart),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => CartPage()));
                },
              ))
          // const Divider(
          // color: Colors.black,
          // height: 1,
          // thickness: 1,
          // indent: 10,
          // endIndent: 10,
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(16.0),
          //   child: TextButton(
          //     onPressed: (() {
          //             cartManager.clearCart();
          //           }),
          //           child: const Text("CHECK OUT",
          //           style: TextStyle(
          //             color: Color.fromARGB(255, 255, 255, 255),
          //             backgroundColor: Color.fromARGB(255, 0, 46, 84),
          //             fontSize: 24
          //           )),
          //   ),
          // ),
        ],
      ),
    );
  }
}
