import 'package:flutter/material.dart';


class Productpage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 6,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/pic/Until_Dawn.jpg'),
                fit: BoxFit.cover
                )
              ),
            ),
            //รูปพื้นหลัง
            
            Positioned( 
              left: 30,
              top: 30,
              child: InkWell(
                onTap: () {},
              child: ClipOval(
            child: Container(
              height: 42,width: 42,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.25),
                    offset: Offset(0, 4),
                    blurRadius: 8
                  )
                ]
              ),
              child: Center(
                child: Image.asset('assets/pic/left-arrow.png'),
              ),
             ),
            ),
            ),
            ),
            //ปุ่มย้อนกลับ

            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height * 5,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.2),
                    offset: Offset(0,-4),
                    blurRadius: 8
                    )
                  ]
                ),//กล่องครอบหน้าสีขาว
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 20,
                          left: 20,
                          right: 20
                          ),
                              child: Row(
                                children: [
                                  Expanded (
                                    child: Text("Until Dawn",
                                      style: TextStyle(
                                        fontSize: 50,
                                      color: Colors.black
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {},
                                      child: Image.asset('asstes/pic/Heart_F.jpg')
                                  ),
                                ],
                              ),
                            ),
                            //ปุ่มกด Favourite

                            Padding(
                              padding: const EdgeInsets.only(
                                top: 20,
                                left: 30,
                                right: 30
                              ),
                              child: Row(
                                children: [
                                  Text('Experience the emotional storytelling and unforgettable tales!',
                                  style: TextStyle(
                                    fontSize: 30),
                                  ),
                              ],)
                              ),

                              Material(
                                color: Color.fromARGB(255, 28, 38, 116),
                                borderRadius: BorderRadius.circular(20),
                              child:InkWell(
                                onTap: () {
                                  print('Click');
                                },
                                borderRadius: BorderRadius.circular(20),
                              child: Container(
                                padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 50),
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 0, 46, 84),
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                child: Text('Add to cart    2,000.00 Bath',
                                      style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black
                                      ),
                              ),
                            ),
                          )
                          )
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
                    