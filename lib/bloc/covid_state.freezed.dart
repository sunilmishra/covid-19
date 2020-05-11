// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'covid_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CovidStateTearOff {
  const _$CovidStateTearOff();

  _CovidSummaryLoading loading() {
    return const _CovidSummaryLoading();
  }

  _CovidSummaryContent content(CovidSummary summary) {
    return _CovidSummaryContent(
      summary,
    );
  }

  _CovidSummaryError error() {
    return const _CovidSummaryError();
  }
}

// ignore: unused_element
const $CovidState = _$CovidStateTearOff();

mixin _$CovidState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result content(CovidSummary summary),
    @required Result error(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result content(CovidSummary summary),
    Result error(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(_CovidSummaryLoading value),
    @required Result content(_CovidSummaryContent value),
    @required Result error(_CovidSummaryError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(_CovidSummaryLoading value),
    Result content(_CovidSummaryContent value),
    Result error(_CovidSummaryError value),
    @required Result orElse(),
  });
}

abstract class $CovidStateCopyWith<$Res> {
  factory $CovidStateCopyWith(
          CovidState value, $Res Function(CovidState) then) =
      _$CovidStateCopyWithImpl<$Res>;
}

class _$CovidStateCopyWithImpl<$Res> implements $CovidStateCopyWith<$Res> {
  _$CovidStateCopyWithImpl(this._value, this._then);

  final CovidState _value;
  // ignore: unused_field
  final $Res Function(CovidState) _then;
}

abstract class _$CovidSummaryLoadingCopyWith<$Res> {
  factory _$CovidSummaryLoadingCopyWith(_CovidSummaryLoading value,
          $Res Function(_CovidSummaryLoading) then) =
      __$CovidSummaryLoadingCopyWithImpl<$Res>;
}

class __$CovidSummaryLoadingCopyWithImpl<$Res>
    extends _$CovidStateCopyWithImpl<$Res>
    implements _$CovidSummaryLoadingCopyWith<$Res> {
  __$CovidSummaryLoadingCopyWithImpl(
      _CovidSummaryLoading _value, $Res Function(_CovidSummaryLoading) _then)
      : super(_value, (v) => _then(v as _CovidSummaryLoading));

  @override
  _CovidSummaryLoading get _value => super._value as _CovidSummaryLoading;
}

class _$_CovidSummaryLoading implements _CovidSummaryLoading {
  const _$_CovidSummaryLoading();

  @override
  String toString() {
    return 'CovidState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CovidSummaryLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result content(CovidSummary summary),
    @required Result error(),
  }) {
    assert(loading != null);
    assert(content != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result content(CovidSummary summary),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(_CovidSummaryLoading value),
    @required Result content(_CovidSummaryContent value),
    @required Result error(_CovidSummaryError value),
  }) {
    assert(loading != null);
    assert(content != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(_CovidSummaryLoading value),
    Result content(_CovidSummaryContent value),
    Result error(_CovidSummaryError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _CovidSummaryLoading implements CovidState {
  const factory _CovidSummaryLoading() = _$_CovidSummaryLoading;
}

abstract class _$CovidSummaryContentCopyWith<$Res> {
  factory _$CovidSummaryContentCopyWith(_CovidSummaryContent value,
          $Res Function(_CovidSummaryContent) then) =
      __$CovidSummaryContentCopyWithImpl<$Res>;
  $Res call({CovidSummary summary});
}

class __$CovidSummaryContentCopyWithImpl<$Res>
    extends _$CovidStateCopyWithImpl<$Res>
    implements _$CovidSummaryContentCopyWith<$Res> {
  __$CovidSummaryContentCopyWithImpl(
      _CovidSummaryContent _value, $Res Function(_CovidSummaryContent) _then)
      : super(_value, (v) => _then(v as _CovidSummaryContent));

  @override
  _CovidSummaryContent get _value => super._value as _CovidSummaryContent;

  @override
  $Res call({
    Object summary = freezed,
  }) {
    return _then(_CovidSummaryContent(
      summary == freezed ? _value.summary : summary as CovidSummary,
    ));
  }
}

class _$_CovidSummaryContent implements _CovidSummaryContent {
  const _$_CovidSummaryContent(this.summary) : assert(summary != null);

  @override
  final CovidSummary summary;

  @override
  String toString() {
    return 'CovidState.content(summary: $summary)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CovidSummaryContent &&
            (identical(other.summary, summary) ||
                const DeepCollectionEquality().equals(other.summary, summary)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(summary);

  @override
  _$CovidSummaryContentCopyWith<_CovidSummaryContent> get copyWith =>
      __$CovidSummaryContentCopyWithImpl<_CovidSummaryContent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result content(CovidSummary summary),
    @required Result error(),
  }) {
    assert(loading != null);
    assert(content != null);
    assert(error != null);
    return content(summary);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result content(CovidSummary summary),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (content != null) {
      return content(summary);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(_CovidSummaryLoading value),
    @required Result content(_CovidSummaryContent value),
    @required Result error(_CovidSummaryError value),
  }) {
    assert(loading != null);
    assert(content != null);
    assert(error != null);
    return content(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(_CovidSummaryLoading value),
    Result content(_CovidSummaryContent value),
    Result error(_CovidSummaryError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (content != null) {
      return content(this);
    }
    return orElse();
  }
}

abstract class _CovidSummaryContent implements CovidState {
  const factory _CovidSummaryContent(CovidSummary summary) =
      _$_CovidSummaryContent;

  CovidSummary get summary;
  _$CovidSummaryContentCopyWith<_CovidSummaryContent> get copyWith;
}

abstract class _$CovidSummaryErrorCopyWith<$Res> {
  factory _$CovidSummaryErrorCopyWith(
          _CovidSummaryError value, $Res Function(_CovidSummaryError) then) =
      __$CovidSummaryErrorCopyWithImpl<$Res>;
}

class __$CovidSummaryErrorCopyWithImpl<$Res>
    extends _$CovidStateCopyWithImpl<$Res>
    implements _$CovidSummaryErrorCopyWith<$Res> {
  __$CovidSummaryErrorCopyWithImpl(
      _CovidSummaryError _value, $Res Function(_CovidSummaryError) _then)
      : super(_value, (v) => _then(v as _CovidSummaryError));

  @override
  _CovidSummaryError get _value => super._value as _CovidSummaryError;
}

class _$_CovidSummaryError implements _CovidSummaryError {
  const _$_CovidSummaryError();

  @override
  String toString() {
    return 'CovidState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CovidSummaryError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result content(CovidSummary summary),
    @required Result error(),
  }) {
    assert(loading != null);
    assert(content != null);
    assert(error != null);
    return error();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result content(CovidSummary summary),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(_CovidSummaryLoading value),
    @required Result content(_CovidSummaryContent value),
    @required Result error(_CovidSummaryError value),
  }) {
    assert(loading != null);
    assert(content != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(_CovidSummaryLoading value),
    Result content(_CovidSummaryContent value),
    Result error(_CovidSummaryError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _CovidSummaryError implements CovidState {
  const factory _CovidSummaryError() = _$_CovidSummaryError;
}
