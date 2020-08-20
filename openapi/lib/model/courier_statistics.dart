        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'courier_statistics.g.dart';

abstract class CourierStatistics implements Built<CourierStatistics, CourierStatisticsBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'registered')
    int get registered;
    
        @nullable
    @BuiltValueField(wireName: r'online')
    int get online;

    // Boilerplate code needed to wire-up generated code
    CourierStatistics._();

    factory CourierStatistics([updates(CourierStatisticsBuilder b)]) = _$CourierStatistics;
    static Serializer<CourierStatistics> get serializer => _$courierStatisticsSerializer;

}

