            import 'package:openapi/model/money_view.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dish.g.dart';

abstract class Dish implements Built<Dish, DishBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'id')
    String get id;
    
        @nullable
    @BuiltValueField(wireName: r'name')
    String get name;
    
        @nullable
    @BuiltValueField(wireName: r'price')
    MoneyView get price;

    // Boilerplate code needed to wire-up generated code
    Dish._();

    factory Dish([updates(DishBuilder b)]) = _$Dish;
    static Serializer<Dish> get serializer => _$dishSerializer;

}

