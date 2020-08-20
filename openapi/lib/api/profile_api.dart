import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

import 'package:openapi/model/set_payment_method_input.dart';
import 'package:openapi/model/address.dart';
import 'package:openapi/model/profile.dart';

class ProfileApi {
    final Dio _dio;
    Serializers _serializers;

    ProfileApi(this._dio, this._serializers);

        /// 
        ///
        /// 
        Future<Response<Profile>>setAddress(Address address,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/profile/address";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(address);
            var jsonaddress = json.encode(serializedBody);
            bodyData = jsonaddress;

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

        var serializer = _serializers.serializerForType(Profile);
        var data = _serializers.deserializeWith<Profile>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<Profile>(
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
        Future<Response<Profile>>setPaymentMethod(SetPaymentMethodInput setPaymentMethodInput,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/profile/payment_method";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(setPaymentMethodInput);
            var jsonsetPaymentMethodInput = json.encode(serializedBody);
            bodyData = jsonsetPaymentMethodInput;

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

        var serializer = _serializers.serializerForType(Profile);
        var data = _serializers.deserializeWith<Profile>(serializer, response.data is String ? jsonDecode(response.data) : response.data);

            return Response<Profile>(
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
