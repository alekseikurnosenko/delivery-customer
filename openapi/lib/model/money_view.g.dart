// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'money_view.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MoneyView> _$moneyViewSerializer = new _$MoneyViewSerializer();

class _$MoneyViewSerializer implements StructuredSerializer<MoneyView> {
  @override
  final Iterable<Type> types = const [MoneyView, _$MoneyView];
  @override
  final String wireName = 'MoneyView';

  @override
  Iterable<Object> serialize(Serializers serializers, MoneyView object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.amount != null) {
      result
        ..add('amount')
        ..add(serializers.serialize(object.amount,
            specifiedType: const FullType(double)));
    }
    if (object.currencyCode != null) {
      result
        ..add('currencyCode')
        ..add(serializers.serialize(object.currencyCode,
            specifiedType: const FullType(String)));
    }
    if (object.formatted != null) {
      result
        ..add('formatted')
        ..add(serializers.serialize(object.formatted,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  MoneyView deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MoneyViewBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'currencyCode':
          result.currencyCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'formatted':
          result.formatted = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$MoneyView extends MoneyView {
  @override
  final double amount;
  @override
  final String currencyCode;
  @override
  final String formatted;

  factory _$MoneyView([void Function(MoneyViewBuilder) updates]) =>
      (new MoneyViewBuilder()..update(updates)).build();

  _$MoneyView._({this.amount, this.currencyCode, this.formatted}) : super._();

  @override
  MoneyView rebuild(void Function(MoneyViewBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MoneyViewBuilder toBuilder() => new MoneyViewBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MoneyView &&
        amount == other.amount &&
        currencyCode == other.currencyCode &&
        formatted == other.formatted;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, amount.hashCode), currencyCode.hashCode),
        formatted.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MoneyView')
          ..add('amount', amount)
          ..add('currencyCode', currencyCode)
          ..add('formatted', formatted))
        .toString();
  }
}

class MoneyViewBuilder implements Builder<MoneyView, MoneyViewBuilder> {
  _$MoneyView _$v;

  double _amount;
  double get amount => _$this._amount;
  set amount(double amount) => _$this._amount = amount;

  String _currencyCode;
  String get currencyCode => _$this._currencyCode;
  set currencyCode(String currencyCode) => _$this._currencyCode = currencyCode;

  String _formatted;
  String get formatted => _$this._formatted;
  set formatted(String formatted) => _$this._formatted = formatted;

  MoneyViewBuilder();

  MoneyViewBuilder get _$this {
    if (_$v != null) {
      _amount = _$v.amount;
      _currencyCode = _$v.currencyCode;
      _formatted = _$v.formatted;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MoneyView other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MoneyView;
  }

  @override
  void update(void Function(MoneyViewBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MoneyView build() {
    final _$result = _$v ??
        new _$MoneyView._(
            amount: amount, currencyCode: currencyCode, formatted: formatted);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
