import 'package:delivery_customer/iocContainer.dart';
import 'package:openapi/model/basket.dart';
import 'package:openapi/model/remove_from_basket_input.dart';
import 'package:rxdart/subjects.dart';
import 'package:openapi/model/add_item_to_basket_input.dart';

class BasketService {
  BehaviorSubject<Basket> _basketSubject = BehaviorSubject();

  Stream<Basket> get basket => _basketSubject;

  void fetch() {
    IocContainer()
        .api
        .getBasketApi()
        .basket()
        .then((value) => _basketSubject.sink.add(value.data));
  }

  Future<void> addToBasket(AddItemToBasketInput input) async {
    var basket = await IocContainer().api.getBasketApi().addItemToBasket(input);
    _basketSubject.sink.add(basket.data);
  }

  Future<void> removeFromBasket(RemoveFromBasketInput input) async {
    var basket =
        await IocContainer().api.getBasketApi().removeItemFromBasket(input);
    _basketSubject.sink.add(basket.data);
  }
}
