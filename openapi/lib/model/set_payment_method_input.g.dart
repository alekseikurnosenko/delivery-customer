// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_payment_method_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SetPaymentMethodInput> _$setPaymentMethodInputSerializer =
    new _$SetPaymentMethodInputSerializer();

class _$SetPaymentMethodInputSerializer
    implements StructuredSerializer<SetPaymentMethodInput> {
  @override
  final Iterable<Type> types = const [
    SetPaymentMethodInput,
    _$SetPaymentMethodInput
  ];
  @override
  final String wireName = 'SetPaymentMethodInput';

  @override
  Iterable<Object> serialize(
      Serializers serializers, SetPaymentMethodInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.paymentMethodId != null) {
      result
        ..add('paymentMethodId')
        ..add(serializers.serialize(object.paymentMethodId,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  SetPaymentMethodInput deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SetPaymentMethodInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'paymentMethodId':
          result.paymentMethodId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$SetPaymentMethodInput extends SetPaymentMethodInput {
  @override
  final String paymentMethodId;

  factory _$SetPaymentMethodInput(
          [void Function(SetPaymentMethodInputBuilder) updates]) =>
      (new SetPaymentMethodInputBuilder()..update(updates)).build();

  _$SetPaymentMethodInput._({this.paymentMethodId}) : super._();

  @override
  SetPaymentMethodInput rebuild(
          void Function(SetPaymentMethodInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetPaymentMethodInputBuilder toBuilder() =>
      new SetPaymentMethodInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetPaymentMethodInput &&
        paymentMethodId == other.paymentMethodId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, paymentMethodId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SetPaymentMethodInput')
          ..add('paymentMethodId', paymentMethodId))
        .toString();
  }
}

class SetPaymentMethodInputBuilder
    implements Builder<SetPaymentMethodInput, SetPaymentMethodInputBuilder> {
  _$SetPaymentMethodInput _$v;

  String _paymentMethodId;
  String get paymentMethodId => _$this._paymentMethodId;
  set paymentMethodId(String paymentMethodId) =>
      _$this._paymentMethodId = paymentMethodId;

  SetPaymentMethodInputBuilder();

  SetPaymentMethodInputBuilder get _$this {
    if (_$v != null) {
      _paymentMethodId = _$v.paymentMethodId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SetPaymentMethodInput other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SetPaymentMethodInput;
  }

  @override
  void update(void Function(SetPaymentMethodInputBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SetPaymentMethodInput build() {
    final _$result =
        _$v ?? new _$SetPaymentMethodInput._(paymentMethodId: paymentMethodId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
