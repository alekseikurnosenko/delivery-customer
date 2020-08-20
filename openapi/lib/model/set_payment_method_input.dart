        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'set_payment_method_input.g.dart';

abstract class SetPaymentMethodInput implements Built<SetPaymentMethodInput, SetPaymentMethodInputBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'paymentMethodId')
    String get paymentMethodId;

    // Boilerplate code needed to wire-up generated code
    SetPaymentMethodInput._();

    factory SetPaymentMethodInput([updates(SetPaymentMethodInputBuilder b)]) = _$SetPaymentMethodInput;
    static Serializer<SetPaymentMethodInput> get serializer => _$setPaymentMethodInputSerializer;

}

