// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_delivery_geopoint.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UpdateDeliveryGeoPoint {
  String get orderId => throw _privateConstructorUsedError;
  GeoPoint get geoPoint => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateDeliveryGeoPointCopyWith<UpdateDeliveryGeoPoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateDeliveryGeoPointCopyWith<$Res> {
  factory $UpdateDeliveryGeoPointCopyWith(UpdateDeliveryGeoPoint value,
          $Res Function(UpdateDeliveryGeoPoint) then) =
      _$UpdateDeliveryGeoPointCopyWithImpl<$Res, UpdateDeliveryGeoPoint>;
  @useResult
  $Res call({String orderId, GeoPoint geoPoint});
}

/// @nodoc
class _$UpdateDeliveryGeoPointCopyWithImpl<$Res,
        $Val extends UpdateDeliveryGeoPoint>
    implements $UpdateDeliveryGeoPointCopyWith<$Res> {
  _$UpdateDeliveryGeoPointCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? geoPoint = null,
  }) {
    return _then(_value.copyWith(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      geoPoint: null == geoPoint
          ? _value.geoPoint
          : geoPoint // ignore: cast_nullable_to_non_nullable
              as GeoPoint,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateDeliveryGeoPointCopyWith<$Res>
    implements $UpdateDeliveryGeoPointCopyWith<$Res> {
  factory _$$_UpdateDeliveryGeoPointCopyWith(_$_UpdateDeliveryGeoPoint value,
          $Res Function(_$_UpdateDeliveryGeoPoint) then) =
      __$$_UpdateDeliveryGeoPointCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String orderId, GeoPoint geoPoint});
}

/// @nodoc
class __$$_UpdateDeliveryGeoPointCopyWithImpl<$Res>
    extends _$UpdateDeliveryGeoPointCopyWithImpl<$Res,
        _$_UpdateDeliveryGeoPoint>
    implements _$$_UpdateDeliveryGeoPointCopyWith<$Res> {
  __$$_UpdateDeliveryGeoPointCopyWithImpl(_$_UpdateDeliveryGeoPoint _value,
      $Res Function(_$_UpdateDeliveryGeoPoint) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? geoPoint = null,
  }) {
    return _then(_$_UpdateDeliveryGeoPoint(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      geoPoint: null == geoPoint
          ? _value.geoPoint
          : geoPoint // ignore: cast_nullable_to_non_nullable
              as GeoPoint,
    ));
  }
}

/// @nodoc

class _$_UpdateDeliveryGeoPoint implements _UpdateDeliveryGeoPoint {
  const _$_UpdateDeliveryGeoPoint(
      {required this.orderId, required this.geoPoint});

  @override
  final String orderId;
  @override
  final GeoPoint geoPoint;

  @override
  String toString() {
    return 'UpdateDeliveryGeoPoint(orderId: $orderId, geoPoint: $geoPoint)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateDeliveryGeoPoint &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.geoPoint, geoPoint) ||
                other.geoPoint == geoPoint));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId, geoPoint);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateDeliveryGeoPointCopyWith<_$_UpdateDeliveryGeoPoint> get copyWith =>
      __$$_UpdateDeliveryGeoPointCopyWithImpl<_$_UpdateDeliveryGeoPoint>(
          this, _$identity);
}

abstract class _UpdateDeliveryGeoPoint implements UpdateDeliveryGeoPoint {
  const factory _UpdateDeliveryGeoPoint(
      {required final String orderId,
      required final GeoPoint geoPoint}) = _$_UpdateDeliveryGeoPoint;

  @override
  String get orderId;
  @override
  GeoPoint get geoPoint;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateDeliveryGeoPointCopyWith<_$_UpdateDeliveryGeoPoint> get copyWith =>
      throw _privateConstructorUsedError;
}
