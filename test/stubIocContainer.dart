import 'package:delivery_customer/basket/basketService.dart';
import 'package:delivery_customer/iocContainer.dart';
import 'package:mockito/mockito.dart';
import 'package:openapi/api/orders_api.dart';
import 'package:openapi/api/restaurants_api.dart';

class MockBasketService extends Mock implements BasketService {}

class MockRestaurantsApi extends Mock implements RestaurantsApi {}

class MockOrdersApi extends Mock implements OrdersApi {}

class StubIocContainer implements IocContainer {
  static final StubIocContainer _instance = StubIocContainer._internal();
  factory StubIocContainer() => _instance;

  StubIocContainer._internal();

  @override
  BasketService basketService;

  @override
  OrdersApi ordersApi;

  @override
  RestaurantsApi restaurantsApi;
}
