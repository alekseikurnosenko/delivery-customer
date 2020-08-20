        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'domain_event.g.dart';

abstract class DomainEvent implements Built<DomainEvent, DomainEventBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'routingKey')
    String get routingKey;

    // Boilerplate code needed to wire-up generated code
    DomainEvent._();

    factory DomainEvent([updates(DomainEventBuilder b)]) = _$DomainEvent;
    static Serializer<DomainEvent> get serializer => _$domainEventSerializer;

}

