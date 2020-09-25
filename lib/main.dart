import 'package:delivery_customer/basket/basketPage.dart';
import 'package:delivery_customer/checkout/checkoutPage.dart';
import 'package:delivery_customer/homePage.dart';
import 'package:delivery_customer/iocContainer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(Provider(create: (context) => IocContainerImpl(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  static final String token =
      "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6IlJVUkNNa0ZHTWpsR1FUZ3lPVU5CUkVFMU9EaEJNRGt3UlRaRVEwRkZPVU0xUkRVelF6aERRZyJ9.eyJpc3MiOiJodHRwczovL2Rldi1kZWxpdmVyeS5hdXRoMC5jb20vIiwic3ViIjoiYXV0aDB8NWU4YTEyZmQ4NWRkOTgwYzY4ZTQyN2YxIiwiYXVkIjoiaHR0cHM6Ly9kZWxpdmVyeS9hcGkiLCJpYXQiOjE1OTc4MzIwMDUsImV4cCI6MTYwMDQyNDAwNSwiYXpwIjoiR1l1OHFydUpoTnpMTTFKZWlQaWNVWFpmSXljNjNlUXYiLCJndHkiOiJwYXNzd29yZCIsInBlcm1pc3Npb25zIjpbXX0.bNi0vlf6WOa1jL3FHJRTNaOW6p8uXawssftqRx4Unx_758nzOw0UJBegvI0f88lOgazalihgXqGbsEF65v_mLdo099lNhhRS20X9037NHTugPgC-LA79uf0MJugTKxdSDDzK1dvu0QyFwLv8SY-U61WBoTFTp92QqB_3KmhXwGnWtjSSO1_E7Wkz7QDwO4uJyzMH6eeC8bSqK39rvoHtLDpYlJO4hw2JBydsZGfgNInILrdqLMzU7EO5dibrG4_BNQ1zQEtt92BPVGAx5XMu8AylSkWPh56fH9UScqcqJdnhhCa1_x_ZoIk1MdTvUeccV70idIsaRGL82SeTXX2Qzg";
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
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case "/basket":
            return MaterialPageRoute(
                builder: (context) => BasketPage(), fullscreenDialog: true);
        }
      },
      routes: {
        "/": (context) {
          // var order = Order((b) => b
          //   ..status = OrderStatus.awaitingPickup
          //   ..courier.fullName = "Jake P"
          //   ..items.add(OrderItemDTO((b) => b
          //     ..dish.name = "Burger"
          //     ..quantity = 1))
          //   ..items.add(OrderItemDTO((b) => b
          //     ..dish.name = "Fries"
          //     ..quantity = 2))
          //   ..deliveryAddress.location.latitude = 1.0
          //   ..deliveryAddress.location.longitude = 1.0
          //   ..restaurant.name = "Mc'Something"
          //   ..restaurant.address.location.latitude = 0.0
          //   ..restaurant.address.location.longitude = 0.0);
          // return OrderPage(order);
          return CustomerHomePage();
        },
        "/checkout": (context) => CheckoutPage(),
        // "/order": (context) => OrderPage(), ?? TODO: check the how to better accept params here
      },
    );
  }
}
