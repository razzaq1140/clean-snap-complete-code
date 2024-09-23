import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: public_member_api_docs
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smooth Page Indicator Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);

  @override
  Widget build(BuildContext context) {
    final pages = List.generate(
        6,
            (index) => Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.grey.shade300,
          ),
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          child: Container(
            height: 280,
            child: Center(
                child: Text(
                  "Page $index",
                  style: TextStyle(color: Colors.indigo),
                )),
          ),
        ));

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: ExpansionTile(
              title: Text('How to use the App?'),

          ),
        ),
      ),
    );
  }
}

final colors = const [
  Colors.red,
  Colors.green,
  Colors.greenAccent,
  Colors.amberAccent,
  Colors.blue,
  Colors.amber,
];


// import 'package:flutter/material.dart';
//
// void main() => runApp(MyApp());
// class MyApp extends StatefulWidget {
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//
//   bool isExpanded = true;
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('ExpansionTile Example'),
//         ),
//         body: Theme(
//           data: Theme.of(context).copyWith(
//          dividerColor: Colors.transparent,),
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Container(
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(8)
//               ),
//               child: ExpansionTile(
//                 onExpansionChanged: (newExpanded){
//                   setState(() {
//                     isExpanded = newExpanded;
//                   });
//                 },
//                 trailing: Icon(
//                     isExpanded ? Icons.keyboard_arrow_down_outlined : Icons.keyboard_arrow_right,color: Colors.grey,
//                 ),
//                   title: Text('How to use the App?',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
//                 children: [
//                  ListTile(
//                    // contentPadding: EdgeInsets.zero,
//                    title: Text('Find answers to common questions about the app.',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400,fontSize: 14),),
//                  ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
