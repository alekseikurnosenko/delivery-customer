import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

import 'package:openapi/model/add_item_to_basket_input.dart';
import 'package:openapi/model/basket.dart';
import 'package:openapi/model/remove_from_basket_input.dart';
import 'package:openapi/model/order.dart';

class BasketApi {
    final Dio _dio;
    Serializers _serializers;

    BasketApi(this._dio, this._serializers);

        /// 
        ///
        /// 
        Future<Response<Basket>>addItemToBasket(AddItemToBasketInput addItemToBasketInput,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/basket/addItem";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(addItemToBasketInput);
            var jsonaddItemToBasketInput = json.encode(serializedBody);
            bodyData = jsonaddItemToBasketInput;

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

        var serializer = _serializers.serializerForType(Basket);
        var data = _serializers.deserializeWith<Basket>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<Basket>(
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
        Future<Response<Basket>>basket({ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/basket";

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

        var serializer = _serializers.serializerForType(Basket);
        var data = _serializers.deserializeWith<Basket>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<Basket>(
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
        Future<Response<Order>>checkout({ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/basket/checkout";

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
        Future<Response<Basket>>removeItemFromBasket(RemoveFromBasketInput removeFromBasketInput,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/basket/removeItem";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(removeFromBasketInput);
            var jsonremoveFromBasketInput = json.encode(serializedBody);
            bodyData = jsonremoveFromBasketInput;

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

        var serializer = _serializers.serializerForType(Basket);
        var data = _serializers.deserializeWith<Basket>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<Basket>(
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
