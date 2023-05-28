import 'package:final_project/Cart/Cart_Manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    var cartManager = Provider.of<CartManager>(context);
    var cartItems = cartManager.items;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                var item = cartItems[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 224, 222, 222),
                          borderRadius: BorderRadius.circular(.0),
                          boxShadow: const [
                            BoxShadow(
                                color: Color.fromARGB(250, 62, 62, 62),
                                blurRadius: 4.0,
                                offset: Offset(2.0, 3.0))
                          ]),
                      child: ListTile(
                        leading: Image.asset(
                          'assets/pic/${item.img}',
                          width: 100,
                        ),
                        title: Text(
                          item.name,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          '฿${item.price.toInt()}',
                          style: const TextStyle(fontSize: 16),
                        ),
                        trailing: IconButton(
                          icon: const Icon(Icons.close),
                          onPressed: () {
                            cartManager.removeFromCart(item);
                          },
                        ),
                      ),
                    ),
                  ]),
                );
              },
            ),
          ),
          const Divider(
            color: Colors.black,
            height: 1,
            thickness: 1,
            indent: 10,
            endIndent: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'TOTAL:',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  '฿${cartManager.totalPrice.toInt()}',
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: 300,
              child: TextButton(
                onPressed: (() {
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
        ],
      ),
    );
  }
}
