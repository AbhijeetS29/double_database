// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
//
// import 'main.dart';
//
//
// class HomePage extends StatefulWidget {
//   const HomePage({super.key});
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//
//
//   //AlertDialogBox
//   Future<void> _showMyDialog() async {
//     return showDialog<void>(
//       context: context,
//       barrierDismissible: false, // user must tap button!
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: const Text('Log Out Alert  !'),
//           content: const SingleChildScrollView(
//             child: ListBody(
//               children: <Widget>[
//                 Text('Do you really want to log out ?'),
//               ],
//             ),
//           ),
//           actions: <Widget>[
//             TextButton(
//               child: const Text('Log Out'),
//               onPressed: () async {
//                 Navigator.of(context).pop();
//                 await FirebaseAuth.instance.signOut();
//                 Navigator.of(context).pushReplacement(
//                   MaterialPageRoute(builder: (_) =>  MyHomePage()),
//                 );
//               },
//             ),TextButton(
//               child: const Text('No thanks !'),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }
//
//   //Navigation drawer
//   int _selectedIndex = 0;
//   static const TextStyle optionStyle =
//   TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
//   static const List<Widget> _widgetOptions = <Widget>[
//     Text(
//       'Index 0: Home',
//       style: optionStyle,
//     ),
//     Text(
//       'Index 1: Business',
//       style: optionStyle,
//     ),
//     Text(
//       'Index 2: School',
//       style: optionStyle,
//     ),
//   ];
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
//   var color4 = const Color(0xff99b2ff);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Mss StudentWing"),
//         centerTitle: true ,
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.logout_outlined),
//             tooltip: 'Log Out',
//             onPressed: () {
//               _showMyDialog();
//             },
//           ),
//         ],
//       ),
//       body: Container(
//
//
//       ),
//       drawer: Drawer(
//         child: ListView(
//           // Important: Remove any padding from the ListView.
//           padding: EdgeInsets.zero,
//           children: [
//             const DrawerHeader(
//               decoration: BoxDecoration(
//                 color: Color(0xff99b2ff),
//               ),
//               child: Text("Mss Student Wing "),
//             ),
//             ListTile(
//               title: const Text('Home'),
//               selected: _selectedIndex == 0,
//               onTap: () {
//                 Fluttertoast.showToast(
//                     msg: "Home Selected",
//                     toastLength: Toast.LENGTH_SHORT,
//                     gravity: ToastGravity.CENTER,
//                     timeInSecForIosWeb: 1,
//                     backgroundColor: color4,
//                     textColor: Colors.black87,
//                     fontSize: 16.0
//                 );
//                 Navigator.pop(context);
//               },
//             ),
//             ListTile(
//               title: const Text('Business'),
//               selected: _selectedIndex == 1,
//               onTap: () {
//                 // Update the state of the app
//                 _onItemTapped(1);
//                 // Then close the drawer
//                 Navigator.pop(context);
//               },
//             ),
//             ListTile(
//               title: const Text('School'),
//               selected: _selectedIndex == 2,
//               onTap: () {
//                 // Update the state of the app
//                 _onItemTapped(2);
//                 // Then close the drawer
//                 Navigator.pop(context);
//               },
//             ),
//           ],
//         ),
//       ),
//
//     );
//   }
// }
