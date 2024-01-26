//
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:local_notification/main.dart';
//
// class FireBaseApi{
//
//   final _firebaseMessaging = FirebaseMessaging.instance;
//
//   Future<void> initNotifications()async{
//
//     _firebaseMessaging.requestPermission();
//
//     final FCMToken = await _firebaseMessaging.getToken();
//
//     print("Token ====] $FCMToken  [====");
//    initPushNotifications();
//   }
//
//   void handleMessage(RemoteMessage? message){
//
//     if(message == null)return print("==[errorrrrr]==");
//
//     navigatorKey.currentState?.pushNamed(
//         "/notification_screen",
//         arguments: message);
//   }
//
//   Future initPushNotifications() async {
//
//     FirebaseMessaging.instance.getInitialMessage().then(handleMessage);
//
//     FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
//   }
//
// }