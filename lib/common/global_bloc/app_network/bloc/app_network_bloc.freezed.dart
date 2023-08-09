// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_network_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppNetworkEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(ConnectivityResult newStatus) changeStatus,
    required TResult Function() checkNetwork,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(ConnectivityResult newStatus)? changeStatus,
    TResult? Function()? checkNetwork,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(ConnectivityResult newStatus)? changeStatus,
    TResult Function()? checkNetwork,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppNetworkInitEvent value) init,
    required TResult Function(AppNetworkChangeStatusEvent value) changeStatus,
    required TResult Function(AppNetworkCheckNetworkEvent value) checkNetwork,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppNetworkInitEvent value)? init,
    TResult? Function(AppNetworkChangeStatusEvent value)? changeStatus,
    TResult? Function(AppNetworkCheckNetworkEvent value)? checkNetwork,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppNetworkInitEvent value)? init,
    TResult Function(AppNetworkChangeStatusEvent value)? changeStatus,
    TResult Function(AppNetworkCheckNetworkEvent value)? checkNetwork,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppNetworkEventCopyWith<$Res> {
  factory $AppNetworkEventCopyWith(
          AppNetworkEvent value, $Res Function(AppNetworkEvent) then) =
      _$AppNetworkEventCopyWithImpl<$Res, AppNetworkEvent>;
}

/// @nodoc
class _$AppNetworkEventCopyWithImpl<$Res, $Val extends AppNetworkEvent>
    implements $AppNetworkEventCopyWith<$Res> {
  _$AppNetworkEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AppNetworkInitEventCopyWith<$Res> {
  factory _$$AppNetworkInitEventCopyWith(_$AppNetworkInitEvent value,
          $Res Function(_$AppNetworkInitEvent) then) =
      __$$AppNetworkInitEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppNetworkInitEventCopyWithImpl<$Res>
    extends _$AppNetworkEventCopyWithImpl<$Res, _$AppNetworkInitEvent>
    implements _$$AppNetworkInitEventCopyWith<$Res> {
  __$$AppNetworkInitEventCopyWithImpl(
      _$AppNetworkInitEvent _value, $Res Function(_$AppNetworkInitEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppNetworkInitEvent implements AppNetworkInitEvent {
  const _$AppNetworkInitEvent();

  @override
  String toString() {
    return 'AppNetworkEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppNetworkInitEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(ConnectivityResult newStatus) changeStatus,
    required TResult Function() checkNetwork,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(ConnectivityResult newStatus)? changeStatus,
    TResult? Function()? checkNetwork,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(ConnectivityResult newStatus)? changeStatus,
    TResult Function()? checkNetwork,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppNetworkInitEvent value) init,
    required TResult Function(AppNetworkChangeStatusEvent value) changeStatus,
    required TResult Function(AppNetworkCheckNetworkEvent value) checkNetwork,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppNetworkInitEvent value)? init,
    TResult? Function(AppNetworkChangeStatusEvent value)? changeStatus,
    TResult? Function(AppNetworkCheckNetworkEvent value)? checkNetwork,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppNetworkInitEvent value)? init,
    TResult Function(AppNetworkChangeStatusEvent value)? changeStatus,
    TResult Function(AppNetworkCheckNetworkEvent value)? checkNetwork,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class AppNetworkInitEvent implements AppNetworkEvent {
  const factory AppNetworkInitEvent() = _$AppNetworkInitEvent;
}

/// @nodoc
abstract class _$$AppNetworkChangeStatusEventCopyWith<$Res> {
  factory _$$AppNetworkChangeStatusEventCopyWith(
          _$AppNetworkChangeStatusEvent value,
          $Res Function(_$AppNetworkChangeStatusEvent) then) =
      __$$AppNetworkChangeStatusEventCopyWithImpl<$Res>;
  @useResult
  $Res call({ConnectivityResult newStatus});
}

/// @nodoc
class __$$AppNetworkChangeStatusEventCopyWithImpl<$Res>
    extends _$AppNetworkEventCopyWithImpl<$Res, _$AppNetworkChangeStatusEvent>
    implements _$$AppNetworkChangeStatusEventCopyWith<$Res> {
  __$$AppNetworkChangeStatusEventCopyWithImpl(
      _$AppNetworkChangeStatusEvent _value,
      $Res Function(_$AppNetworkChangeStatusEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newStatus = null,
  }) {
    return _then(_$AppNetworkChangeStatusEvent(
      null == newStatus
          ? _value.newStatus
          : newStatus // ignore: cast_nullable_to_non_nullable
              as ConnectivityResult,
    ));
  }
}

/// @nodoc

class _$AppNetworkChangeStatusEvent implements AppNetworkChangeStatusEvent {
  const _$AppNetworkChangeStatusEvent(this.newStatus);

  @override
  final ConnectivityResult newStatus;

  @override
  String toString() {
    return 'AppNetworkEvent.changeStatus(newStatus: $newStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppNetworkChangeStatusEvent &&
            (identical(other.newStatus, newStatus) ||
                other.newStatus == newStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppNetworkChangeStatusEventCopyWith<_$AppNetworkChangeStatusEvent>
      get copyWith => __$$AppNetworkChangeStatusEventCopyWithImpl<
          _$AppNetworkChangeStatusEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(ConnectivityResult newStatus) changeStatus,
    required TResult Function() checkNetwork,
  }) {
    return changeStatus(newStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(ConnectivityResult newStatus)? changeStatus,
    TResult? Function()? checkNetwork,
  }) {
    return changeStatus?.call(newStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(ConnectivityResult newStatus)? changeStatus,
    TResult Function()? checkNetwork,
    required TResult orElse(),
  }) {
    if (changeStatus != null) {
      return changeStatus(newStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppNetworkInitEvent value) init,
    required TResult Function(AppNetworkChangeStatusEvent value) changeStatus,
    required TResult Function(AppNetworkCheckNetworkEvent value) checkNetwork,
  }) {
    return changeStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppNetworkInitEvent value)? init,
    TResult? Function(AppNetworkChangeStatusEvent value)? changeStatus,
    TResult? Function(AppNetworkCheckNetworkEvent value)? checkNetwork,
  }) {
    return changeStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppNetworkInitEvent value)? init,
    TResult Function(AppNetworkChangeStatusEvent value)? changeStatus,
    TResult Function(AppNetworkCheckNetworkEvent value)? checkNetwork,
    required TResult orElse(),
  }) {
    if (changeStatus != null) {
      return changeStatus(this);
    }
    return orElse();
  }
}

abstract class AppNetworkChangeStatusEvent implements AppNetworkEvent {
  const factory AppNetworkChangeStatusEvent(
      final ConnectivityResult newStatus) = _$AppNetworkChangeStatusEvent;

  ConnectivityResult get newStatus;
  @JsonKey(ignore: true)
  _$$AppNetworkChangeStatusEventCopyWith<_$AppNetworkChangeStatusEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppNetworkCheckNetworkEventCopyWith<$Res> {
  factory _$$AppNetworkCheckNetworkEventCopyWith(
          _$AppNetworkCheckNetworkEvent value,
          $Res Function(_$AppNetworkCheckNetworkEvent) then) =
      __$$AppNetworkCheckNetworkEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppNetworkCheckNetworkEventCopyWithImpl<$Res>
    extends _$AppNetworkEventCopyWithImpl<$Res, _$AppNetworkCheckNetworkEvent>
    implements _$$AppNetworkCheckNetworkEventCopyWith<$Res> {
  __$$AppNetworkCheckNetworkEventCopyWithImpl(
      _$AppNetworkCheckNetworkEvent _value,
      $Res Function(_$AppNetworkCheckNetworkEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppNetworkCheckNetworkEvent implements AppNetworkCheckNetworkEvent {
  const _$AppNetworkCheckNetworkEvent();

  @override
  String toString() {
    return 'AppNetworkEvent.checkNetwork()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppNetworkCheckNetworkEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(ConnectivityResult newStatus) changeStatus,
    required TResult Function() checkNetwork,
  }) {
    return checkNetwork();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(ConnectivityResult newStatus)? changeStatus,
    TResult? Function()? checkNetwork,
  }) {
    return checkNetwork?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(ConnectivityResult newStatus)? changeStatus,
    TResult Function()? checkNetwork,
    required TResult orElse(),
  }) {
    if (checkNetwork != null) {
      return checkNetwork();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppNetworkInitEvent value) init,
    required TResult Function(AppNetworkChangeStatusEvent value) changeStatus,
    required TResult Function(AppNetworkCheckNetworkEvent value) checkNetwork,
  }) {
    return checkNetwork(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppNetworkInitEvent value)? init,
    TResult? Function(AppNetworkChangeStatusEvent value)? changeStatus,
    TResult? Function(AppNetworkCheckNetworkEvent value)? checkNetwork,
  }) {
    return checkNetwork?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppNetworkInitEvent value)? init,
    TResult Function(AppNetworkChangeStatusEvent value)? changeStatus,
    TResult Function(AppNetworkCheckNetworkEvent value)? checkNetwork,
    required TResult orElse(),
  }) {
    if (checkNetwork != null) {
      return checkNetwork(this);
    }
    return orElse();
  }
}

abstract class AppNetworkCheckNetworkEvent implements AppNetworkEvent {
  const factory AppNetworkCheckNetworkEvent() = _$AppNetworkCheckNetworkEvent;
}

/// @nodoc
mixin _$AppNetworkState {
  ConnectivityResult get networkResult => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppNetworkStateCopyWith<AppNetworkState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppNetworkStateCopyWith<$Res> {
  factory $AppNetworkStateCopyWith(
          AppNetworkState value, $Res Function(AppNetworkState) then) =
      _$AppNetworkStateCopyWithImpl<$Res, AppNetworkState>;
  @useResult
  $Res call({ConnectivityResult networkResult});
}

/// @nodoc
class _$AppNetworkStateCopyWithImpl<$Res, $Val extends AppNetworkState>
    implements $AppNetworkStateCopyWith<$Res> {
  _$AppNetworkStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? networkResult = null,
  }) {
    return _then(_value.copyWith(
      networkResult: null == networkResult
          ? _value.networkResult
          : networkResult // ignore: cast_nullable_to_non_nullable
              as ConnectivityResult,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppNetworkStateCopyWith<$Res>
    implements $AppNetworkStateCopyWith<$Res> {
  factory _$$_AppNetworkStateCopyWith(
          _$_AppNetworkState value, $Res Function(_$_AppNetworkState) then) =
      __$$_AppNetworkStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ConnectivityResult networkResult});
}

/// @nodoc
class __$$_AppNetworkStateCopyWithImpl<$Res>
    extends _$AppNetworkStateCopyWithImpl<$Res, _$_AppNetworkState>
    implements _$$_AppNetworkStateCopyWith<$Res> {
  __$$_AppNetworkStateCopyWithImpl(
      _$_AppNetworkState _value, $Res Function(_$_AppNetworkState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? networkResult = null,
  }) {
    return _then(_$_AppNetworkState(
      networkResult: null == networkResult
          ? _value.networkResult
          : networkResult // ignore: cast_nullable_to_non_nullable
              as ConnectivityResult,
    ));
  }
}

/// @nodoc

class _$_AppNetworkState implements _AppNetworkState {
  const _$_AppNetworkState({this.networkResult = ConnectivityResult.none});

  @override
  @JsonKey()
  final ConnectivityResult networkResult;

  @override
  String toString() {
    return 'AppNetworkState(networkResult: $networkResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppNetworkState &&
            (identical(other.networkResult, networkResult) ||
                other.networkResult == networkResult));
  }

  @override
  int get hashCode => Object.hash(runtimeType, networkResult);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppNetworkStateCopyWith<_$_AppNetworkState> get copyWith =>
      __$$_AppNetworkStateCopyWithImpl<_$_AppNetworkState>(this, _$identity);
}

abstract class _AppNetworkState implements AppNetworkState {
  const factory _AppNetworkState({final ConnectivityResult networkResult}) =
      _$_AppNetworkState;

  @override
  ConnectivityResult get networkResult;
  @override
  @JsonKey(ignore: true)
  _$$_AppNetworkStateCopyWith<_$_AppNetworkState> get copyWith =>
      throw _privateConstructorUsedError;
}
