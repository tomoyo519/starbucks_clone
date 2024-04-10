// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coffeeOrder.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CoffeeOrder _$CoffeeOrderFromJson(Map<String, dynamic> json) {
  return _CoffeeOrder.fromJson(json);
}

/// @nodoc
mixin _$CoffeeOrder {
  String get name => throw _privateConstructorUsedError;
  String get iceOrHot => throw _privateConstructorUsedError;
  String get size => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoffeeOrderCopyWith<CoffeeOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoffeeOrderCopyWith<$Res> {
  factory $CoffeeOrderCopyWith(
          CoffeeOrder value, $Res Function(CoffeeOrder) then) =
      _$CoffeeOrderCopyWithImpl<$Res, CoffeeOrder>;
  @useResult
  $Res call({String name, String iceOrHot, String size});
}

/// @nodoc
class _$CoffeeOrderCopyWithImpl<$Res, $Val extends CoffeeOrder>
    implements $CoffeeOrderCopyWith<$Res> {
  _$CoffeeOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? iceOrHot = null,
    Object? size = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      iceOrHot: null == iceOrHot
          ? _value.iceOrHot
          : iceOrHot // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoffeeOrderImplCopyWith<$Res>
    implements $CoffeeOrderCopyWith<$Res> {
  factory _$$CoffeeOrderImplCopyWith(
          _$CoffeeOrderImpl value, $Res Function(_$CoffeeOrderImpl) then) =
      __$$CoffeeOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String iceOrHot, String size});
}

/// @nodoc
class __$$CoffeeOrderImplCopyWithImpl<$Res>
    extends _$CoffeeOrderCopyWithImpl<$Res, _$CoffeeOrderImpl>
    implements _$$CoffeeOrderImplCopyWith<$Res> {
  __$$CoffeeOrderImplCopyWithImpl(
      _$CoffeeOrderImpl _value, $Res Function(_$CoffeeOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? iceOrHot = null,
    Object? size = null,
  }) {
    return _then(_$CoffeeOrderImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      iceOrHot: null == iceOrHot
          ? _value.iceOrHot
          : iceOrHot // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoffeeOrderImpl implements _CoffeeOrder {
  const _$CoffeeOrderImpl(
      {required this.name, required this.iceOrHot, required this.size});

  factory _$CoffeeOrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoffeeOrderImplFromJson(json);

  @override
  final String name;
  @override
  final String iceOrHot;
  @override
  final String size;

  @override
  String toString() {
    return 'CoffeeOrder(name: $name, iceOrHot: $iceOrHot, size: $size)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoffeeOrderImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.iceOrHot, iceOrHot) ||
                other.iceOrHot == iceOrHot) &&
            (identical(other.size, size) || other.size == size));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, iceOrHot, size);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoffeeOrderImplCopyWith<_$CoffeeOrderImpl> get copyWith =>
      __$$CoffeeOrderImplCopyWithImpl<_$CoffeeOrderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoffeeOrderImplToJson(
      this,
    );
  }
}

abstract class _CoffeeOrder implements CoffeeOrder {
  const factory _CoffeeOrder(
      {required final String name,
      required final String iceOrHot,
      required final String size}) = _$CoffeeOrderImpl;

  factory _CoffeeOrder.fromJson(Map<String, dynamic> json) =
      _$CoffeeOrderImpl.fromJson;

  @override
  String get name;
  @override
  String get iceOrHot;
  @override
  String get size;
  @override
  @JsonKey(ignore: true)
  _$$CoffeeOrderImplCopyWith<_$CoffeeOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
