            import 'package:openapi/model/address.dart';
            import 'package:openapi/model/domain_event.dart';
            import 'package:built_collection/built_collection.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'profile.g.dart';

abstract class Profile implements Built<Profile, ProfileBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'id')
    String get id;
    
        @nullable
    @BuiltValueField(wireName: r'createdAt')
    DateTime get createdAt;
    
        @nullable
    @BuiltValueField(wireName: r'userId')
    String get userId;
    
        @nullable
    @BuiltValueField(wireName: r'deliveryAddress')
    Address get deliveryAddress;
    
        @nullable
    @BuiltValueField(wireName: r'paymentMethodId')
    String get paymentMethodId;
    
        @nullable
    @BuiltValueField(wireName: r'events')
    BuiltList<DomainEvent> get events;
    
        @nullable
    @BuiltValueField(wireName: r'deleted')
    bool get deleted;

    // Boilerplate code needed to wire-up generated code
    Profile._();

    factory Profile([updates(ProfileBuilder b)]) = _$Profile;
    static Serializer<Profile> get serializer => _$profileSerializer;

}

