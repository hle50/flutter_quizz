import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 20, color: Colors.grey, fontWeight: FontWeight.bold);
    return Scaffold(
      backgroundColor: Color(0xffdfdfdf),
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                 Container(
                   height: 180,
                   margin: EdgeInsets.only(bottom: 10.0),
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10.0),
                     color: Colors.white
                   ),
                   child: Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Container(
                           child: Icon(Icons.account_circle, size: 60, color: Colors.blue,),
                         ),
                         Text('KEN', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0)),
                         Text('2 months', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0, color: Colors.grey)),
                       ],
                     ),
                   ),
                 ),
                  Container(
                    height: 80,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(right: 5.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.white
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                      Icon(Icons.workspaces_filled, size: 35, color: Colors.amber,),
                                      Text('59cm', style: textStyle,),
                                ],
                              )
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 10.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.white
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                      Icon(Icons.analytics, size: 35, color: Colors.deepOrange,),
                                      Text('6.0kg', style: textStyle),
                                ],
                              )
                            ),
                          ),
                        ),

                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),

    );
  }
}
