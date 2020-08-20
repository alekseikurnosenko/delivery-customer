        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'courier_shift_stopped.g.dart';

abstract class CourierShiftStopped implements Built<CourierShiftStopped, CourierShiftStoppedBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'courierId')
    String get courierId;
    
        @nullable
    @BuiltValueField(wireName: r'routingKey')
    String get routingKey;

    // Boilerplate code needed to wire-up generated code
    CourierShiftStopped._();

    factory CourierShiftStopped([updates(CourierShiftStoppedBuilder b)]) = _$CourierShiftStopped;
    static Serializer<CourierShiftStopped> get serializer => _$courierShiftStoppedSerializer;

}

