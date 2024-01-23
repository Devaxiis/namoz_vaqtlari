import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:local_notification/source/db.dart';
import 'package:local_notification/source/fcm.dart';
import 'package:local_notification/source/firebase_api.dart';
import 'package:local_notification/ui/home_screen.dart';

// Firebase
import 'package:firebase_core/firebase_core.dart';
import 'package:local_notification/ui/notification_screen.dart';
import 'firebase_options.dart';
final navigatorKey = GlobalKey<NavigatorState>();

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await LNService.settings();
  await FireBaseApi().initNotifications();
  await FirebaseMessaging.instance.setAutoInitEnabled(true);
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeScreen(),
      navigatorKey: navigatorKey,
      routes: {
        '/notification_screen':(context)=> const NotificationScreen(),
      },
    );
  }
}

