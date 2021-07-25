import 'package:flutter/material.dart';
import 'package:flutter_quizz/screens/home.dart';
import 'package:google_fonts/google_fonts.dart';

import 'helpers/database_helper.dart';
import 'models/grocery.dart';

void main() {
   WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        textTheme: GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: Home(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key? key, required this.title}) : super(key: key);

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int? selectedId;
//   final textController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         title: TextField(
//           controller: textController,
//         ),
//       ),
//       body: Center(
//         child: FutureBuilder<List<Grocery>>(
//             future: DatabaseHelper.instance.getGroceries(),
//             builder:
//                 (BuildContext context, AsyncSnapshot<List<Grocery>> snapshot) {
//               if (!snapshot.hasData) {
//                 return CircularProgressIndicator();
//               }
//               return snapshot.data!.isEmpty
//                   ? Center(child: Text('No Groceries in List.'))
//                   : ListView(
//                       children: snapshot.data!.map((grocery) {
//                         return Center(
//                           child: Card(
//                             color: selectedId == grocery.id
//                                 ? Colors.white70
//                                 : Colors.white,
//                             child: ListTile(
//                               title: Text(grocery.name),
//                               onTap: () {
//                                 setState(() {
//                                   if (selectedId == null) {
//                                     textController.text = grocery.name;
//                                     selectedId = grocery.id;
//                                   } else {
//                                     textController.text = '';
//                                     selectedId = null;
//                                   }
//                                 });
//                               },
//                               onLongPress: () {
//                                 setState(() {
//                                   DatabaseHelper.instance.remove(grocery.id!);
//                                 });
//                               },
//                             ),
//                           ),
//                         );
//                       }).toList(),
//                     );
//             }),
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.save),
//         onPressed: () async {
//           selectedId != null
//               ? await DatabaseHelper.instance.update(
//                   Grocery(id: selectedId, name: textController.text),
//                 )
//               : await DatabaseHelper.instance.add(
//                   Grocery(name: textController.text),
//                 );
//           setState(() {
//             textController.clear();
//             selectedId = null;
//           });
//         },
//       ),
//       // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
