library openapi.api;

import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:openapi/serializers.dart';
import 'package:openapi/auth/api_key_auth.dart';
import 'package:openapi/auth/basic_auth.dart';
import 'package:openapi/auth/oauth.dart';
import 'package:openapi/api/basket_api.dart';
import 'package:openapi/api/couriers_api.dart';
import 'package:openapi/api/orders_api.dart';
import 'package:openapi/api/profile_api.dart';
import 'package:openapi/api/restaurants_api.dart';

final _defaultInterceptors = [
  OAuthInterceptor(),
  BasicAuthInterceptor(),
  ApiKeyAuthInterceptor()
];

class Openapi {
  Dio dio;
  Serializers serializers;
  String basePath = "http://enigmatic-garden-23553.herokuapp.com";

  Openapi(
      {this.dio,
      Serializers serializers,
      String basePathOverride,
      List<Interceptor> interceptors}) {
    if (dio == null) {
      BaseOptions options = new BaseOptions(
        baseUrl: basePathOverride ?? basePath,
        connectTimeout: 5000,
        receiveTimeout: 3000,
      );
      this.dio = new Dio(options);
    }

    if (interceptors == null) {
      this.dio.interceptors.addAll(_defaultInterceptors);
    } else {
      this.dio.interceptors.addAll(interceptors);
    }

    this.serializers = serializers ?? standardSerializers;
  }

  void setOAuthToken(String name, String token) {
    (this.dio.interceptors.firstWhere((element) => element is OAuthInterceptor,
            orElse: null) as OAuthInterceptor)
        ?.tokens[name] = token;
  }

  void setBasicAuth(String name, String username, String password) {
    (this.dio.interceptors.firstWhere(
            (element) => element is BasicAuthInterceptor,
            orElse: null) as BasicAuthInterceptor)
        ?.authInfo[name] = BasicAuthInfo(username, password);
  }

  void setApiKey(String name, String apiKey) {
    (this.dio.interceptors.firstWhere(
            (element) => element is ApiKeyAuthInterceptor,
            orElse: null) as ApiKeyAuthInterceptor)
        ?.apiKeys[name] = apiKey;
  }

  /**
    * Get BasketApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  BasketApi getBasketApi() {
    return BasketApi(dio, serializers);
  }

  /**
    * Get CouriersApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  CouriersApi getCouriersApi() {
    return CouriersApi(dio, serializers);
  }

  /**
    * Get OrdersApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  OrdersApi getOrdersApi() {
    return OrdersApi(dio, serializers);
  }

  /**
    * Get ProfileApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  ProfileApi getProfileApi() {
    return ProfileApi(dio, serializers);
  }

  /**
    * Get RestaurantsApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  RestaurantsApi getRestaurantsApi() {
    return RestaurantsApi(dio, serializers);
  }
}
