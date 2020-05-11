// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'covid_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

class _$CovidEventTearOff {
  const _$CovidEventTearOff();

  CovidSummaryEvent fetchSummary() {
    return const CovidSummaryEvent();
  }
}

// ignore: unused_element
const $CovidEvent = _$CovidEventTearOff();

mixin _$CovidEvent {}

abstract class $CovidEventCopyWith<$Res> {
  factory $CovidEventCopyWith(
          CovidEvent value, $Res Function(CovidEvent) then) =
      _$CovidEventCopyWithImpl<$Res>;
}

class _$CovidEventCopyWithImpl<$Res> implements $CovidEventCopyWith<$Res> {
  _$CovidEventCopyWithImpl(this._value, this._then);

  final CovidEvent _value;
  // ignore: unused_field
  final $Res Function(CovidEvent) _then;
}

abstract class $CovidSummaryEventCopyWith<$Res> {
  factory $CovidSummaryEventCopyWith(
          CovidSummaryEvent value, $Res Function(CovidSummaryEvent) then) =
      _$CovidSummaryEventCopyWithImpl<$Res>;
}

class _$CovidSummaryEventCopyWithImpl<$Res>
    extends _$CovidEventCopyWithImpl<$Res>
    implements $CovidSummaryEventCopyWith<$Res> {
  _$CovidSummaryEventCopyWithImpl(
      CovidSummaryEvent _value, $Res Function(CovidSummaryEvent) _then)
      : super(_value, (v) => _then(v as CovidSummaryEvent));

  @override
  CovidSummaryEvent get _value => super._value as CovidSummaryEvent;
}

class _$CovidSummaryEvent implements CovidSummaryEvent {
  const _$CovidSummaryEvent();

  @override
  String toString() {
    return 'CovidEvent.fetchSummary()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CovidSummaryEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class CovidSummaryEvent implements CovidEvent {
  const factory CovidSummaryEvent() = _$CovidSummaryEvent;
}
