
import 'package:flutter/material.dart';
import 'package:local_notification/src/presentation/ui/main_home_screen.dart';
import 'package:local_notification/src/utils/resource/service_notification/servcie_notification.dart';


Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();


  await LNService.settings();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainHomeScreen(),
    );
  }
}