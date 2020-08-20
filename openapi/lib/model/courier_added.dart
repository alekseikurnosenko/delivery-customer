        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'courier_added.g.dart';

abstract class CourierAdded implements Built<CourierAdded, CourierAddedBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'accountId')
    String get accountId;
    
        @nullable
    @BuiltValueField(wireName: r'courierId')
    String get courierId;
    
        @nullable
    @BuiltValueField(wireName: r'fullName')
    String get fullName;
    
        @nullable
    @BuiltValueField(wireName: r'onShift')
    bool get onShift;
    
        @nullable
    @BuiltValueField(wireName: r'routingKey')
    String get routingKey;

    // Boilerplate code needed to wire-up generated code
    CourierAdded._();

    factory CourierAdded([updates(CourierAddedBuilder b)]) = _$CourierAdded;
    static Serializer<CourierAdded> get serializer => _$courierAddedSerializer;

}

