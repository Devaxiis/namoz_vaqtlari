//
//
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:local_notification/source/db.dart';
//
// sealed class FcmService{
//
//   static final fcm = FirebaseMessaging.instance;
//
//   static Future<void> init() async {
//     /// background
//     FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
//
//     /// foreground
//     FirebaseMessaging.onMessage.listen(_firebaseMessagingForegroundHandler);
//
//     /// permission
//     NotificationSettings settings = await fcm.requestPermission(
//       alert: true,
//       announcement: false,
//       badge: true,
//       carPlay: false,
//       criticalAlert: false,
//       provisional: false,
//       sound: true,
//     );
//
//     fcmToken().then(print);
//   }
//
//   @pragma('vm:entry-point')
//   static Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
//     print("Handling a background message: ${message.messageId}");
//   }
//
//   static void _firebaseMessagingForegroundHandler(RemoteMessage message) {
//     print('Got a message whilst in the foreground!');
//     print('Message data: ${message.data}');
//
//     if (message.notification != null) {
//       print('Message also contained a notification: ${message.notification}');
//       LNService.sendNotification(message.notification?.title ?? "", message.notification?.body ?? "");
//     }
//   }
//
//   static Future<String?> fcmToken () async => await FirebaseMessaging.instance.getToken();
//
//   static Future<void> sendMessage() async {
//     try {
//       await FirebaseMessaging.instance.sendMessage(
//           to: '0cCdBno8twnpUCgYIARAAGAwSNwF-L9IrlVGPO9KHluzDrO4zH6SK6UJUkBPN6F0ighWQMjkCVFO5XHAmDFxOZ4Vyo1FM1ozvyPI',
//           data: {
//             "title":"FCM Message from G5",
//             "body":"This is an FCM notification message!",
//           },
//           messageId: "1",
//           messageType: "A",
//           collapseKey: "I",
//           ttl: 1
//       );
//     } catch(e) {
//       print("ERROR: $e");
//     }
//   }
// }