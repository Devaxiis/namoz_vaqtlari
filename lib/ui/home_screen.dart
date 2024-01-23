import 'package:flutter/material.dart';
import 'package:local_notification/source/db.dart';
import 'package:local_notification/source/firebase_api.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    LNService.getPermission();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: OutlinedButton(onPressed: (){
          LNService.sendNotification("Local Notification worked", "bu ishlamoqda");
        }, child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text('Local Notification')
        ),
        ),
      ),
    );
  }
}
