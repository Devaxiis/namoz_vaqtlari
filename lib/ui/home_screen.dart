// import 'package:flutter/material.dart';
// import 'package:local_notification/source/db.dart';
// import 'package:local_notification/source/firebase_api.dart';
//
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   TextEditingController nameController = TextEditingController();
//   TextEditingController bodyController = TextEditingController();
//   TextEditingController timeController = TextEditingController();
//   bool type = false;
//
//   @override
//   void initState() {
//     LNService.getPermission();
//     super.initState();
//   }
//
//   Future<void> getNotification(
//       String name, String body, String time, bool type) async {
//     final a = int.tryParse(time);
//     if (type) {
//       Future.delayed(Duration(minutes: a!))
//           .then((value) => LNService.sendNotification(name, body));
//     } else {
//       Future.delayed(Duration(seconds: a!))
//           .then((value) => LNService.sendNotification(name, body));
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Home Screen'),
//       ),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               SizedBox(
//                 height: 55,
//                 child: TextField(
//                   textInputAction: TextInputAction.next,
//                   controller: timeController,
//                   keyboardType: TextInputType.number,
//                   textAlign: TextAlign.start,
//                   decoration: const InputDecoration(
//                       hintText: "Iltimos vaqtni kiriting"),
//                 ),
//               ),
//               SizedBox(
//                 height: 55,
//                 child: TextField(
//                   textInputAction: TextInputAction.next,
//                   controller: nameController,
//                   decoration: const InputDecoration(
//                       hintText: "Iltimos nomini kiriting"),
//                 ),
//               ),
//               SizedBox(
//                 height: 55,
//                 child: TextField(
//                   textInputAction: TextInputAction.done,
//                   controller: bodyController,
//                   decoration: const InputDecoration(
//                       hintText: "Iltimos tanasini kiriting"),
//                 ),
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   const Text("Secund"),
//                   Switch(
//                       value: type,
//                       onChanged: (value) {
//                         type = value;
//                         setState(() {});
//                       }),
//                   const Text("Minut"),
//                 ],
//               ),
//               OutlinedButton(
//                 onPressed: () {
//                   if (nameController.text != '' &&
//                       bodyController.text != '' &&
//                       timeController.text != '') {
//                     getNotification(
//                         nameController.text.trim(),
//                         bodyController.text.trim(),
//                         timeController.text.trim(),
//                         type);
//                     nameController.text = '';
//                     bodyController.text = '';
//                     timeController.text = '';
//                     type = false;
//                     setState(() {});
//                   } else {
//                     ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
//                         content: Text("Iltimos hamm boshliqlarni toldiring.")));
//                   }
//                 },
//                 child: const Padding(
//                     padding: EdgeInsets.symmetric(horizontal: 10),
//                     child: Text('Local Notification')),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
