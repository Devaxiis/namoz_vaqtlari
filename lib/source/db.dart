// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
//
// sealed class LNService {
//   /// main object
//   static final flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
//
//   /// ANDROID 13 and Higher
//   static Future<bool?> getPermission() async {
//     return await flutterLocalNotificationsPlugin.resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()?.requestNotificationsPermission();
//   }
//
//   static Future<void> settings() async {
//     details;
//     /// android
//     const initializationSettingsAndroid = AndroidInitializationSettings("@mipmap/ic_launcher");
//
//     /// macos and ios
//     final DarwinInitializationSettings initializationSettingsDarwin =
//     DarwinInitializationSettings(onDidReceiveLocalNotification: (int id, String? title, String? body, String? payload) async {});
//
//     /// linux
//     const initializationSettingsLinux = LinuxInitializationSettings(defaultActionName: 'Open notification');
//
//
//     final initializationSettings = InitializationSettings(
//         android: initializationSettingsAndroid,
//         iOS: initializationSettingsDarwin,
//         macOS: initializationSettingsDarwin,
//         linux: initializationSettingsLinux);
//
//     await flutterLocalNotificationsPlugin.initialize(initializationSettings, onDidReceiveNotificationResponse: onDidReceiveNotificationResponse);
//   }
//
//   static void onDidReceiveNotificationResponse(NotificationResponse response) {
//     print("Read Notification: ${response.payload}");
//     /// TODO
//   }
//
//   static NotificationDetails get details {
//     const AndroidNotificationDetails androidNotificationDetails = AndroidNotificationDetails('your channel id', 'your channel name',
//         channelDescription: 'your channel description',
//         importance: Importance.max,
//         priority: Priority.high,
//         ticker: 'ticker');
//
//     const DarwinNotificationDetails darwinNotificationDetails = DarwinNotificationDetails();
//     const NotificationDetails notificationDetails = NotificationDetails(android: androidNotificationDetails, iOS: darwinNotificationDetails, macOS: darwinNotificationDetails,);
//     return notificationDetails;
//   }
//
//   static Future<void> sendNotification(String title, String body) async {
//     await flutterLocalNotificationsPlugin.show(2, title, body, details, payload: 'Data');
//   }
//
// }