import 'package:delivery_customer/homePage.dart';
import 'package:delivery_customer/basketPage.dart';
import 'package:delivery_customer/checkoutPage.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String token =
      "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6IlJVUkNNa0ZHTWpsR1FUZ3lPVU5CUkVFMU9EaEJNRGt3UlRaRVEwRkZPVU0xUkRVelF6aERRZyJ9.eyJpc3MiOiJodHRwczovL2Rldi1kZWxpdmVyeS5hdXRoMC5jb20vIiwic3ViIjoiYXV0aDB8NWUwZjRjMmQwNDhmODAwZWE3MjlkYzJjIiwiYXVkIjoiaHR0cHM6Ly9kZWxpdmVyeS9hcGkiLCJpYXQiOjE1OTczNTM5MzgsImV4cCI6MTU5OTk0NTkzOCwiYXpwIjoiR1l1OHFydUpoTnpMTTFKZWlQaWNVWFpmSXljNjNlUXYiLCJndHkiOiJwYXNzd29yZCIsInBlcm1pc3Npb25zIjpbXX0.XrZeASB02-UzYPxBDKDVmcOg2ZJi7F9Bg5CCXCNPZbunKEqQZvOrYCaBen4ezN1XWkT-rkFl1pyqRHxUV6CCuW4tnXBc1arkwJ7Csoy_fJhQIGxhXnNqpQ7xzUazW5WLruRH315zs6xUts6qQrWkgQr5RdFWitLDx7PPnyMKu-FHuVA28LQ-PZdDUGGPGAZEa9NzriU0CvEWHae_xqhVoNL9v7fJmEDtLYljPKhWTmLwsr2kvDhUvQYrce5B8gVIe5ZD96aW9Vf2Ba2DQbt7i3OIf7MgZGDHpwbLj9lZyBg7MzoNWtluGXZReG9DUhzlax-VkgBX8CczqnZ37lgHQw";
  @override
  Widget build(BuildContext context) {
    // API.defaultApiClient.addDefaultHeader("Authorization", "Bearer $token");

    // IocContainer().courierRepository.fetch();

    // final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();

    // _firebaseMessaging.configure(onMessage: (message) async {
    //   print("OnMessage: $message");
    // }, onResume: (message) async {
    //   print("OnResume: $message");
    // }, onLaunch: (message) async {
    //   print("OnLaunch: $message");
    // });

    // _firebaseMessaging.getToken().then((value) => print("Token: $value"));

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
          // This makes the visual density adapt to the platform that you run
          // the app on. For desktop platforms, the controls will be smaller and
          // closer together (more dense) than on mobile platforms.
          visualDensity: VisualDensity.adaptivePlatformDensity,
          buttonTheme: ButtonThemeData(height: 36)),
      initialRoute: "/",
      routes: {
        "/": (context) => CustomerHomePage(),
        "/basket": (context) => BasketPage(),
        "/checkout": (context) => CheckoutPage(),
      },
    );
  }
}
