import 'package:delivery_customer/basket/basketService.dart';
import 'package:delivery_customer/main.dart';
import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:openapi/api.dart';
import 'package:openapi/api/orders_api.dart';
import 'package:openapi/api/restaurants_api.dart';

abstract class IocContainer {
  BasketService basketService;

  RestaurantsApi restaurantsApi;

  OrdersApi ordersApi;
}

class IocContainerImpl implements IocContainer {
  BasketService basketService;

  RestaurantsApi restaurantsApi;

  OrdersApi ordersApi;

  Openapi _api;
  IocContainerImpl() {
    _api = Openapi(interceptors: [
      _HeaderInterceptor(),
      // _FirebaseTokenInterceptor(),
      LogInterceptor(
          requestHeader: false,
          requestBody: true,
          responseBody: true,
          responseHeader: false)
    ]);

    restaurantsApi = _api.getRestaurantsApi();
    ordersApi = _api.getOrdersApi();

    basketService = BasketService(basketApi: _api.getBasketApi());
  }
}

class _HeaderInterceptor extends Interceptor {
  @override
  Future onRequest(RequestOptions options) {
    options.headers.putIfAbsent("Authorization", () => "Bearer ${MyApp.token}");
    return super.onRequest(options);
  }
}

class _FirebaseTokenInterceptor extends Interceptor {
  String token;

  _FirebaseTokenInterceptor() {
    FirebaseMessaging().onTokenRefresh.listen((event) {
      token = event;
    });

    FirebaseMessaging().getToken().then((value) => {token = value});
  }

  @override
  Future onRequest(RequestOptions options) {
    if (token != null) {
      options.headers.putIfAbsent("X-FirebaseToken", () => token);
    }

    return super.onRequest(options);
  }
}
