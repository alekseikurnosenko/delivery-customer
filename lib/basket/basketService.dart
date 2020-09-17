import 'package:openapi/api/basket_api.dart';
import 'package:openapi/model/add_item_to_basket_input.dart';
import 'package:openapi/model/basket.dart';
import 'package:openapi/model/order.dart';
import 'package:openapi/model/remove_from_basket_input.dart';
import 'package:rxdart/subjects.dart';

class BasketService {
  BehaviorSubject<Basket> _basketSubject = BehaviorSubject();

  BasketApi basketApi;
  BasketService({this.basketApi});

  Stream<Basket> get basket => _basketSubject;

  void fetch() {
    basketApi.basket().then((value) => _basketSubject.sink.add(value.data));
  }

  Future<void> addToBasket(AddItemToBasketInput input) async {
    var basket = await basketApi.addItemToBasket(input);
    _basketSubject.sink.add(basket.data);
  }

  Future<void> removeFromBasket(RemoveFromBasketInput input) async {
    var basket = await basketApi.removeItemFromBasket(input);
    _basketSubject.sink.add(basket.data);
  }

  Future<Order> checkout() async {
    var order = await basketApi.checkout();
    // So here we can assumed that basket is already cleared
    _basketSubject.sink.add(null);
    return order.data;
  }
}
