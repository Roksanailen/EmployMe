// import 'dart:developer';
// // 
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:safqa/firebase_options.dart';
// import 'package:safqa/services/shared_prefrences_service.dart';

// class NotificationService {
//   NotificationService._();

//   static final flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

//   static const channel = AndroidNotificationChannel(
//     'high_importance_channel', // id
//     'High Importance Notifications', // title
//     description: 'This channel is used for important notifications.', // description
//     importance: Importance.high,
//     enableVibration: true,

//     playSound: true,
//   );

//   static Future<void> init() async {
//     await Firebase.initializeApp(name: 'safqa', options: DefaultFirebaseOptions.currentPlatform);
//     final fcmToken = await FirebaseMessaging.instance.getToken();
//     print('fcmtoken' + (fcmToken).toString());
//     await SharedPreferencesService.setFCMToken(fcmToken);
//   }

//   static void listen() {
//     // FirebaseMessaging.onMessageOpenedApp.listen(
//     //   (RemoteMessage message) {
//     //     print('///////////onMessageOpenedApp////////////');
//     //     log('${message.contentAvailable}');
//     //     log(message.data.toString());
//     //     print('omar ${message.data}');

//     //     log('omar ${message.notification}');
//     //     {
//     //       if (message.data['withNotification'] == true || message.data['type'] != "MESSAGE_NOTIFICATION") {
//     //         Map<String, dynamic> notification = message.data;
//     //         // AndroidNotification android = message.notification!.android!;
//     //         flutterLocalNotificationsPlugin.show(
//     //           notification.hashCode,
//     //           notification['title'],
//     //           notification['body'],
//     //           NotificationDetails(
//     //             android: AndroidNotificationDetails(
//     //               channel.id,
//     //               channel.name,
//     //               channelDescription: channel.description,
//     //               playSound: true,
//     //               icon: '@mipmap/launcher_icon',
//     //               importance: Importance.max,
//     //             ),
//     //           ),
//     //         );
//     //       }
//     //     }
//     //   },
//     // );
//     FirebaseMessaging.onMessage.listen(
//       (RemoteMessage message) {
//         print('//////////////onMessage/////////////');
//         log('$message.contentAvailable');
//         log(message.data.toString());
//         log('${message.notification?.title}');
//         print('omar ${message.data}');
//         print('message//////////////////');
//         log('///////////////////////////');
//         {
//           if (message.data['withNotification'] == 'true') {
//             if (message.data['type'] != "MESSAGE_NOTIFICATION") {
//               Map<String, dynamic> notification = message.data;
//               // AndroidNotification android = message.notification!.android!;
//               flutterLocalNotificationsPlugin.show(
//                 notification.hashCode,
//                 notification['title'],
//                 notification['body'],
//                 NotificationDetails(
//                   android: AndroidNotificationDetails(
//                     channel.id,
//                     channel.name,
//                     channelDescription: channel.description,
//                     playSound: true,
//                     icon: '@mipmap/launcher_icon',
//                     importance: Importance.max,
//                   ),
//                 ),
//               );
//               print('message//////////////////');
//             }
//           }
//         }
//       },
//     );
//   }

//   static void requestPermission() {
//     flutterLocalNotificationsPlugin.resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()!.requestNotificationsPermission();
//   }
// }
