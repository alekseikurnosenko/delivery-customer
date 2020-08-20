        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'courier_shift_started.g.dart';

abstract class CourierShiftStarted implements Built<CourierShiftStarted, CourierShiftStartedBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'courierId')
    String get courierId;
    
        @nullable
    @BuiltValueField(wireName: r'routingKey')
    String get routingKey;

    // Boilerplate code needed to wire-up generated code
    CourierShiftStarted._();

    factory CourierShiftStarted([updates(CourierShiftStartedBuilder b)]) = _$CourierShiftStarted;
    static Serializer<CourierShiftStarted> get serializer => _$courierShiftStartedSerializer;

}

