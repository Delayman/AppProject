import 'package:final_project/Cart/Cart_Manager.dart';
import 'package:final_project/Pages/Block_App.dart';
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
                return Container(
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                decoration: BoxDecoration(  
                border: Border.all(
                color: const Color.fromARGB(255, 255, 255, 255),
                width: 8,
                ),
                color: const Color.fromARGB(129, 224, 222, 222),
                borderRadius: BorderRadius.circular(.0),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(36, 224, 222, 222),
                    // blurRadius: 2.0,
                    // offset: Offset(2.0,2.0)
                  )
                ]
                ),
                child: ListTile(
                  leading: Image.asset('assets/pic/${item.img}' ,width: 100,),
                  title: Text(item.name),
                  subtitle: Text('฿${item.price.toInt()}'),
                  trailing: IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () {
                      cartManager.removeFromCart(item);
                    },
                  ),
                ),
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
            child: Text(
              'TOTAL: ฿${cartManager.totalPrice.toInt()}',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextButton(
              onPressed: (() {
                      cartManager.clearCart();
                    }),
                    child: const Text("CHECK OUT",
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      backgroundColor: Color.fromARGB(255, 0, 46, 84),
                      fontSize: 24
                    )),
            ),
          ),
        ],
      ),
    );
  }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: const Text('Cart')),
//         body: Center(
//           child: Padding(
//       padding: const EdgeInsets.all(6.0),
//       child: InkWell(
//         child: Container(
//             child: Stack(
//           children: <Widget>[
//             Container(
//               child: Column(
//                 children: <Widget>[
//                   Center(
//                     child: InkWell(
//                     onTap: () {
//                       Navigator.push(context,
//                   MaterialPageRoute(
//                   builder: (_) => Sign_in()));},
//                   child: ClipRRect(
//                   borderRadius: BorderRadius.circular(20.0),
//                   child: Image.asset('assets/pic/Sekiro.jpg',
//                   width: 110.0, 
//                   height: 110.0),
//             ),
//         ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         )),
//       ),
//     ),
//         ),
//     );
//   }

}
