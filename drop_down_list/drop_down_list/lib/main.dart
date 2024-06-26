// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: jdk(),
//     );
//   }
// }

// class jdk extends StatefulWidget {
//   const jdk({super.key});

//   @override
//   State<jdk> createState() => _jdkState();
// }

// class _jdkState extends State<jdk> {
//   String lol= '1';
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Center(
//         child: DropdownButton(
//           icon: Icon(Icons.calendar_view_day),
//           isDense: true,
//           value: lol,
          
//           items: [
//           DropdownMenuItem(child: Text("bhavnagar"), value: '1',),
//           DropdownMenuItem(child: Text("ahmdabad"), value: '2',),
//           DropdownMenuItem(child: Text("surat"), value: '4',),
//           DropdownMenuItem(child: Text("rajkot"), value: '5',)
//         ],
//          onChanged:(String? newvalue){
//           setState(() {
//             lol= newvalue!;
//           });
//          } ),
//       ),
//     ); 
//   }
// }


import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const jdk(),
    );
  }
}

class jdk extends StatefulWidget {
  const jdk({Key? key}) : super(key: key);

  @override
  State<jdk> createState() => _jdkState();
}

class _jdkState extends State<jdk> {
  String? lol ; // Declare as nullable String or initialize with null

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            
            child: DropdownButton<String>(
              icon: Icon(Icons.calendar_view_day),
              
              isDense: true,
              value: lol,
              hint: Text('select'),
              items: [
                DropdownMenuItem(child: Text("bhavnagar"), value: '1'),
                DropdownMenuItem(child: Text("ahmedabad"), value: '2'),
                DropdownMenuItem(child: Text("surat"), value: '4'),
                DropdownMenuItem(child: Text("rajkot"), value: '5'),
              ],
              onChanged: (String? newValue) {
                setState(() {
                  lol = newValue;
                });
              },
              
            ),
          ),
        ],
      ),
    );
  }
}
