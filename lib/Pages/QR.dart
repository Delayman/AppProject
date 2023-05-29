import 'package:flutter/material.dart';

class QRcode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                Text('QR code',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 50
                ),
                ),
                
                SizedBox(height: 50,),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset('assets/pic/Rickrolling_QR_code.png',
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
                
                  SizedBox(height: 100,),
                  Material(
                    color: Color.fromARGB(255, 28, 38, 116),
                                borderRadius: BorderRadius.circular(20),
                              child:InkWell(
                                onTap: () {
                                  print('Click');
                                },
                                borderRadius: BorderRadius.circular(15),
                              child: Container(
                                padding: const EdgeInsets.all(25),
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 0, 46, 84),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                alignment: Alignment.center,
                                child: Text('Checkout',
                                      style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white
                                      ),
                              ),
                            ),
                          )
                  )
                ]
                ),
          ),
        ],
      ),
              
              );
            }
          }
                    