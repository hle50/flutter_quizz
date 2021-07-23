import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0288D1),
      body: Center(
        child: GridView.count(
          shrinkWrap: true,
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  color: Colors.orange,
                  border: Border.all(
                      color: Colors.white, // Set border color
                      width: 1.0), // Set border width
                  borderRadius: BorderRadius.all(
                      Radius.circular(5.0)), // Set rounded corner radius
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      color: Colors.grey,
                      // offset: Offset(1, 3),
                    )
                  ] // Make rounded corner of border
                  ),
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Icon(
                    Icons.child_care,
                    color: Colors.pink,
                    size: 44.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                ],
              ),
              // color: Colors.teal[100],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('Heed not the rabble'),
              color: Colors.teal[200],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('Sound of screams but the'),
              color: Colors.teal[300],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('Who scream'),
              color: Colors.teal[400],
            ),
          ],
        ),
      ),
    );
  }
}
