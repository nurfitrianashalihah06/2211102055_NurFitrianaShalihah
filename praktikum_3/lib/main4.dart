// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(title: Text("ListView Example")),
//         body: ListView(
//           padding: const EdgeInsets.all(8),
//           children: <Widget>[
//             Container(
//               height: 50,
//               color: Colors.amber[600],
//               child: const Center(child: Text('Entry A')),
//             ),
//             Container(
//               height: 50,
//               color: Colors.amber[500],
//               child: const Center(child: Text('Entry B')),
//             ),
//             Container(
//               height: 50,
//               color: Colors.amber[100],
//               child: const Center(child: Text('Entry C')),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(title: Text("ListView.builder Example")),
//         body: MyListView(), // Menggunakan widget terpisah untuk daftar
//       ),
//     );
//   }
// }

// class MyListView extends StatelessWidget {
//   final List<String> entries = <String>['A', 'B', 'C'];
//   final List<int> colorCodes = <int>[600, 500, 100];

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       padding: const EdgeInsets.all(8),
//       itemCount: entries.length,
//       itemBuilder: (BuildContext context, int index) {
//         return Container(
//           height: 50,
//           margin: const EdgeInsets.symmetric(vertical: 4),
//           color: Colors.amber[colorCodes[index]],
//           child: Center(
//             child: Text(
//               'Entry ${entries[index]}',
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("ListView.separated Example")),
        body: ListViewSeparatedExample(),
      ),
    );
  }
}

class ListViewSeparatedExample extends StatelessWidget {
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 50,
          color: Colors.amber[colorCodes[index]],
          child: Center(
            child: Text(
              'Entry ${entries[index]}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}
