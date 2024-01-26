
import 'package:flutter/material.dart';
import 'package:local_notification/source/db.dart';


Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await LNService.settings();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:  HomeScreen(),
    );
  }
}