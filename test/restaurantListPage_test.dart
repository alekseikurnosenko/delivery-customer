import 'dart:io';

import 'package:delivery_customer/catalog/restaurantsListPage.dart';
import 'package:delivery_customer/iocContainer.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:openapi/model/restaurant.dart';
import 'package:provider/provider.dart';

import 'stubIocContainer.dart';

void main() {
  group('RestaurantsListPage', () {
    StubIocContainer container;
    Widget root;

    setUp(() {
      HttpOverrides.global = null;

      container = StubIocContainer();

      container.basketService = MockBasketService();
      container.restaurantsApi = MockRestaurantsApi();
      container.ordersApi = MockOrdersApi();

      root = Provider<IocContainer>(
          create: (_) => container,
          child: MaterialApp(
              theme: ThemeData(), home: Scaffold(body: RestaurantsListPage())));
    });

    testWidgets('displays items', (WidgetTester tester) async {
      var stubRestaurant = Restaurant((b) => b..name = "Stub restaurant");
      when(StubIocContainer().restaurantsApi.restaurants())
          .thenAnswer((_) => Future.value(Response(data: [stubRestaurant])));

      await tester.pumpWidget(root);
      await tester.pump();

      expect(
          find.descendant(
              of: find.byKey(Key('RestaurantList')),
              matching: find.text('Stub restaurant')),
          findsOneWidget);
    });

    testWidgets('displays error', (WidgetTester tester) async {
      when(StubIocContainer().restaurantsApi.restaurants())
          .thenAnswer((_) => Future.error(Exception('Failed')));

      await tester.pumpWidget(root);
      await tester.pump();

      expect(
          find.descendant(
              of: find.byKey(Key('RestaurantList')),
              matching: find.byKey(Key('LoadingError'))),
          findsOneWidget);
    });
  });
}
