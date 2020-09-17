import 'package:delivery_customer/iocContainer.dart';
import 'package:delivery_customer/order/orderPage.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:openapi/model/order.dart';
import 'package:openapi/model/pageable.dart';
import 'package:provider/provider.dart';

part 'ordersPage.g.dart';

@swidget
Widget _orderItem(BuildContext context, Order order) {
  var onCardTap = () {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return OrderPage(order);
    }));
  };
  return Card(
      child: InkWell(
          onTap: onCardTap,
          child: Column(
            children: [
              Text(order.createdAt.toString()),
              Text(order.status.name)
            ],
          )));
}

@hwidget
Widget ordersPage(BuildContext context) {
  var ordersApi = Provider.of<IocContainer>(context).ordersApi;
  var page = Pageable((b) => b
    ..pageSize = 10
    ..pageNumber = 0);
  var orders = useState<List<Order>>(null);
  var isRefetching = useState(true);

  useEffect(() {
    if (!isRefetching.value) return;
    isRefetching.value = false;
    ordersApi
        .orders2(page)
        .then((value) => orders.value = value.data.content.asList());
  }, [isRefetching.value]);

  if (orders.value == null) {
    return Container(); // Loading
  }

  var list = RefreshIndicator(
      onRefresh: () async {
        isRefetching.value = true;
      },
      child: ListView.builder(
          itemCount: orders.value.length,
          itemBuilder: (context, index) => _OrderItem(orders.value[index])));

  return SafeArea(child: Scaffold(body: list));
}
