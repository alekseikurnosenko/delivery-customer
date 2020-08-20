        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'money_view.g.dart';

abstract class MoneyView implements Built<MoneyView, MoneyViewBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'amount')
    double get amount;
    
        @nullable
    @BuiltValueField(wireName: r'currencyCode')
    String get currencyCode;
    
        @nullable
    @BuiltValueField(wireName: r'formatted')
    String get formatted;

    // Boilerplate code needed to wire-up generated code
    MoneyView._();

    factory MoneyView([updates(MoneyViewBuilder b)]) = _$MoneyView;
    static Serializer<MoneyView> get serializer => _$moneyViewSerializer;

}

