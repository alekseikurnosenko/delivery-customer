import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

import 'package:openapi/model/order_status.dart';
import 'package:openapi/model/create_dish_input.dart';
import 'package:openapi/model/dish.dart';
import 'package:openapi/model/restaurant.dart';
import 'package:openapi/model/create_restaurant_input.dart';
import 'package:openapi/model/edit_dish_input.dart';
import 'package:openapi/model/edit_restaurant_input.dart';
import 'package:openapi/model/order.dart';

class RestaurantsApi {
    final Dio _dio;
    Serializers _serializers;

    RestaurantsApi(this._dio, this._serializers);

        /// Create dish served by restaurant
        ///
        /// 
        Future<Response<Dish>>createDish(String restaurantId,CreateDishInput createDishInput,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/restaurants/{restaurantId}/dishes".replaceAll("{" r'restaurantId' "}", restaurantId.toString());

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(createDishInput);
            var jsoncreateDishInput = json.encode(serializedBody);
            bodyData = jsoncreateDishInput;

            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'post'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [ {"type": "http", "name": "JWT" }],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

        var serializer = _serializers.serializerForType(Dish);
        var data = _serializers.deserializeWith<Dish>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<Dish>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        /// Create new restaurant
        ///
        /// 
        Future<Response<Restaurant>>createRestaurant(CreateRestaurantInput createRestaurantInput,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/restaurants";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(createRestaurantInput);
            var jsoncreateRestaurantInput = json.encode(serializedBody);
            bodyData = jsoncreateRestaurantInput;

            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'post'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [ {"type": "http", "name": "JWT" }],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

        var serializer = _serializers.serializerForType(Restaurant);
        var data = _serializers.deserializeWith<Restaurant>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<Restaurant>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        /// 
        ///
        /// 
        Future<Response>deleteDish(String restaurantId,String dishId,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/restaurants/{restaurantId}/dishes/{dishId}".replaceAll("{" r'restaurantId' "}", restaurantId.toString()).replaceAll("{" r'dishId' "}", dishId.toString());

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = [];



            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'delete'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [ {"type": "http", "name": "JWT" }],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            );
            }
        /// 
        ///
        /// 
        Future<Response>deleteRestaurant(String restaurantId,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/restaurants/{restaurantId}".replaceAll("{" r'restaurantId' "}", restaurantId.toString());

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = [];



            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'delete'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [ {"type": "http", "name": "JWT" }],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            );
            }
        /// 
        ///
        /// 
        Future<Response<Dish>>editDish(String restaurantId,String dishId,EditDishInput editDishInput,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/restaurants/{restaurantId}/dishes/{dishId}".replaceAll("{" r'restaurantId' "}", restaurantId.toString()).replaceAll("{" r'dishId' "}", dishId.toString());

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(editDishInput);
            var jsoneditDishInput = json.encode(serializedBody);
            bodyData = jsoneditDishInput;

            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'put'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [ {"type": "http", "name": "JWT" }],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

        var serializer = _serializers.serializerForType(Dish);
        var data = _serializers.deserializeWith<Dish>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<Dish>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        /// Edit restaurant info
        ///
        /// 
        Future<Response<Restaurant>>editRestaurant(String restaurantId,EditRestaurantInput editRestaurantInput,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/restaurants/{restaurantId}".replaceAll("{" r'restaurantId' "}", restaurantId.toString());

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(editRestaurantInput);
            var jsoneditRestaurantInput = json.encode(serializedBody);
            bodyData = jsoneditRestaurantInput;

            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'put'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [ {"type": "http", "name": "JWT" }],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

        var serializer = _serializers.serializerForType(Restaurant);
        var data = _serializers.deserializeWith<Restaurant>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<Restaurant>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        /// 
        ///
        /// 
        Future<Response<Order>>finishPreparingOrder(String restaurantId,String orderId,{ OrderStatus status,CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/restaurants/{restaurantId}/orders/{orderId}/finishPreparing".replaceAll("{" r'restaurantId' "}", restaurantId.toString()).replaceAll("{" r'orderId' "}", orderId.toString());

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

                queryParams[r'status'] = status;
        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = [];



            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'post'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [ {"type": "http", "name": "JWT" }],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

        var serializer = _serializers.serializerForType(Order);
        var data = _serializers.deserializeWith<Order>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<Order>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        /// 
        ///
        /// 
        Future<Response<List<Order>>>orders(String restaurantId,{ OrderStatus status,CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/restaurants/{restaurantId}/orders".replaceAll("{" r'restaurantId' "}", restaurantId.toString());

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

                queryParams[r'status'] = status;
        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = [];



            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'get'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [ {"type": "http", "name": "JWT" }],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

                final FullType type = const FullType(BuiltList, const [const FullType(Order)]);
                BuiltList<Order> dataList = _serializers.deserialize(response.data is String ? jsonDecode(response.data) : response.data, specifiedType: type);
                var data = dataList.toList();

            return Response<List<Order>>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        /// 
        ///
        /// 
        Future<Response<Restaurant>>ownRestaurant({ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/restaurants/me";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = [];



            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'get'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [ {"type": "http", "name": "JWT" }],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

        var serializer = _serializers.serializerForType(Restaurant);
        var data = _serializers.deserializeWith<Restaurant>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<Restaurant>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        /// Get restaurant info
        ///
        /// 
        Future<Response<Restaurant>>restaurant(String restaurantId,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/restaurants/{restaurantId}".replaceAll("{" r'restaurantId' "}", restaurantId.toString());

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = [];



            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'get'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [ {"type": "http", "name": "JWT" }],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

        var serializer = _serializers.serializerForType(Restaurant);
        var data = _serializers.deserializeWith<Restaurant>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<Restaurant>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        /// Get restaurant dishes
        ///
        /// 
        Future<Response<List<Dish>>>restaurantDishes(String restaurantId,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/restaurants/{restaurantId}/dishes".replaceAll("{" r'restaurantId' "}", restaurantId.toString());

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = [];



            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'get'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [ {"type": "http", "name": "JWT" }],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

                final FullType type = const FullType(BuiltList, const [const FullType(Dish)]);
                BuiltList<Dish> dataList = _serializers.deserialize(response.data is String ? jsonDecode(response.data) : response.data, specifiedType: type);
                var data = dataList.toList();

            return Response<List<Dish>>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        /// Get list of restaurants
        ///
        /// 
        Future<Response<List<Restaurant>>>restaurants({ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/restaurants";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = [];



            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'get'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [ {"type": "http", "name": "JWT" }],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

                final FullType type = const FullType(BuiltList, const [const FullType(Restaurant)]);
                BuiltList<Restaurant> dataList = _serializers.deserialize(response.data is String ? jsonDecode(response.data) : response.data, specifiedType: type);
                var data = dataList.toList();

            return Response<List<Restaurant>>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        /// 
        ///
        /// 
        Future<Response<Order>>startPreparingOrder(String restaurantId,String orderId,{ OrderStatus status,CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/restaurants/{restaurantId}/orders/{orderId}/startPreparing".replaceAll("{" r'restaurantId' "}", restaurantId.toString()).replaceAll("{" r'orderId' "}", orderId.toString());

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

                queryParams[r'status'] = status;
        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = [];



            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'post'.toUpperCase(),
            headers: headerParams,
            extra: {
                'secure': [ {"type": "http", "name": "JWT" }],
            },
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

        var serializer = _serializers.serializerForType(Order);
        var data = _serializers.deserializeWith<Order>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<Order>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        }
