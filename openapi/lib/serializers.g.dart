// GENERATED CODE - DO NOT MODIFY BY HAND

part of serializers;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(AddItemToBasketInput.serializer)
      ..add(Address.serializer)
      ..add(Basket.serializer)
      ..add(BasketItem.serializer)
      ..add(Courier.serializer)
      ..add(CourierAdded.serializer)
      ..add(CourierLocationUpdated.serializer)
      ..add(CourierShiftStarted.serializer)
      ..add(CourierShiftStopped.serializer)
      ..add(CourierStatistics.serializer)
      ..add(CreateCourierInput.serializer)
      ..add(CreateDishInput.serializer)
      ..add(CreateRestaurantInput.serializer)
      ..add(DeliveryRequestDTO.serializer)
      ..add(DeliveryRequested.serializer)
      ..add(Dish.serializer)
      ..add(DomainEvent.serializer)
      ..add(EditDishInput.serializer)
      ..add(EditRestaurantInput.serializer)
      ..add(LatLng.serializer)
      ..add(MoneyView.serializer)
      ..add(Order.serializer)
      ..add(OrderAssigned.serializer)
      ..add(OrderCanceled.serializer)
      ..add(OrderDelivered.serializer)
      ..add(OrderItemDTO.serializer)
      ..add(OrderPickedUp.serializer)
      ..add(OrderPlaced.serializer)
      ..add(OrderPreparationFinished.serializer)
      ..add(OrderPreparationStarted.serializer)
      ..add(OrderStatus.serializer)
      ..add(PageOrder.serializer)
      ..add(Pageable.serializer)
      ..add(Profile.serializer)
      ..add(RemoveFromBasketInput.serializer)
      ..add(Restaurant.serializer)
      ..add(RestaurantAdded.serializer)
      ..add(SetPaymentMethodInput.serializer)
      ..add(Sort.serializer)
      ..add(UpdateLocationInput.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(BasketItem)]),
          () => new ListBuilder<BasketItem>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(DomainEvent)]),
          () => new ListBuilder<DomainEvent>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Order)]),
          () => new ListBuilder<Order>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Order)]),
          () => new ListBuilder<Order>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(OrderItemDTO)]),
          () => new ListBuilder<OrderItemDTO>()))
    .build();

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
