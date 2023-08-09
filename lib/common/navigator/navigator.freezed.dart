// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'navigator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NavigationType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() root,
    required TResult Function() home,
    required TResult Function() profile,
    required TResult Function() search,
    required TResult Function() message,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? root,
    TResult? Function()? home,
    TResult? Function()? profile,
    TResult? Function()? search,
    TResult? Function()? message,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? root,
    TResult Function()? home,
    TResult Function()? profile,
    TResult Function()? search,
    TResult Function()? message,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigationTypeRoot value) root,
    required TResult Function(NavigationTypeHome value) home,
    required TResult Function(NavigationTypeProfile value) profile,
    required TResult Function(NavigationTypeSearch value) search,
    required TResult Function(NavigationTypeMessage value) message,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavigationTypeRoot value)? root,
    TResult? Function(NavigationTypeHome value)? home,
    TResult? Function(NavigationTypeProfile value)? profile,
    TResult? Function(NavigationTypeSearch value)? search,
    TResult? Function(NavigationTypeMessage value)? message,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigationTypeRoot value)? root,
    TResult Function(NavigationTypeHome value)? home,
    TResult Function(NavigationTypeProfile value)? profile,
    TResult Function(NavigationTypeSearch value)? search,
    TResult Function(NavigationTypeMessage value)? message,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationTypeCopyWith<$Res> {
  factory $NavigationTypeCopyWith(
          NavigationType value, $Res Function(NavigationType) then) =
      _$NavigationTypeCopyWithImpl<$Res, NavigationType>;
}

/// @nodoc
class _$NavigationTypeCopyWithImpl<$Res, $Val extends NavigationType>
    implements $NavigationTypeCopyWith<$Res> {
  _$NavigationTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NavigationTypeRootCopyWith<$Res> {
  factory _$$NavigationTypeRootCopyWith(_$NavigationTypeRoot value,
          $Res Function(_$NavigationTypeRoot) then) =
      __$$NavigationTypeRootCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NavigationTypeRootCopyWithImpl<$Res>
    extends _$NavigationTypeCopyWithImpl<$Res, _$NavigationTypeRoot>
    implements _$$NavigationTypeRootCopyWith<$Res> {
  __$$NavigationTypeRootCopyWithImpl(
      _$NavigationTypeRoot _value, $Res Function(_$NavigationTypeRoot) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NavigationTypeRoot implements NavigationTypeRoot {
  const _$NavigationTypeRoot();

  @override
  String toString() {
    return 'NavigationType.root()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NavigationTypeRoot);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() root,
    required TResult Function() home,
    required TResult Function() profile,
    required TResult Function() search,
    required TResult Function() message,
  }) {
    return root();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? root,
    TResult? Function()? home,
    TResult? Function()? profile,
    TResult? Function()? search,
    TResult? Function()? message,
  }) {
    return root?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? root,
    TResult Function()? home,
    TResult Function()? profile,
    TResult Function()? search,
    TResult Function()? message,
    required TResult orElse(),
  }) {
    if (root != null) {
      return root();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigationTypeRoot value) root,
    required TResult Function(NavigationTypeHome value) home,
    required TResult Function(NavigationTypeProfile value) profile,
    required TResult Function(NavigationTypeSearch value) search,
    required TResult Function(NavigationTypeMessage value) message,
  }) {
    return root(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavigationTypeRoot value)? root,
    TResult? Function(NavigationTypeHome value)? home,
    TResult? Function(NavigationTypeProfile value)? profile,
    TResult? Function(NavigationTypeSearch value)? search,
    TResult? Function(NavigationTypeMessage value)? message,
  }) {
    return root?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigationTypeRoot value)? root,
    TResult Function(NavigationTypeHome value)? home,
    TResult Function(NavigationTypeProfile value)? profile,
    TResult Function(NavigationTypeSearch value)? search,
    TResult Function(NavigationTypeMessage value)? message,
    required TResult orElse(),
  }) {
    if (root != null) {
      return root(this);
    }
    return orElse();
  }
}

abstract class NavigationTypeRoot implements NavigationType {
  const factory NavigationTypeRoot() = _$NavigationTypeRoot;
}

/// @nodoc
abstract class _$$NavigationTypeHomeCopyWith<$Res> {
  factory _$$NavigationTypeHomeCopyWith(_$NavigationTypeHome value,
          $Res Function(_$NavigationTypeHome) then) =
      __$$NavigationTypeHomeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NavigationTypeHomeCopyWithImpl<$Res>
    extends _$NavigationTypeCopyWithImpl<$Res, _$NavigationTypeHome>
    implements _$$NavigationTypeHomeCopyWith<$Res> {
  __$$NavigationTypeHomeCopyWithImpl(
      _$NavigationTypeHome _value, $Res Function(_$NavigationTypeHome) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NavigationTypeHome implements NavigationTypeHome {
  const _$NavigationTypeHome();

  @override
  String toString() {
    return 'NavigationType.home()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NavigationTypeHome);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() root,
    required TResult Function() home,
    required TResult Function() profile,
    required TResult Function() search,
    required TResult Function() message,
  }) {
    return home();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? root,
    TResult? Function()? home,
    TResult? Function()? profile,
    TResult? Function()? search,
    TResult? Function()? message,
  }) {
    return home?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? root,
    TResult Function()? home,
    TResult Function()? profile,
    TResult Function()? search,
    TResult Function()? message,
    required TResult orElse(),
  }) {
    if (home != null) {
      return home();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigationTypeRoot value) root,
    required TResult Function(NavigationTypeHome value) home,
    required TResult Function(NavigationTypeProfile value) profile,
    required TResult Function(NavigationTypeSearch value) search,
    required TResult Function(NavigationTypeMessage value) message,
  }) {
    return home(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavigationTypeRoot value)? root,
    TResult? Function(NavigationTypeHome value)? home,
    TResult? Function(NavigationTypeProfile value)? profile,
    TResult? Function(NavigationTypeSearch value)? search,
    TResult? Function(NavigationTypeMessage value)? message,
  }) {
    return home?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigationTypeRoot value)? root,
    TResult Function(NavigationTypeHome value)? home,
    TResult Function(NavigationTypeProfile value)? profile,
    TResult Function(NavigationTypeSearch value)? search,
    TResult Function(NavigationTypeMessage value)? message,
    required TResult orElse(),
  }) {
    if (home != null) {
      return home(this);
    }
    return orElse();
  }
}

abstract class NavigationTypeHome implements NavigationType {
  const factory NavigationTypeHome() = _$NavigationTypeHome;
}

/// @nodoc
abstract class _$$NavigationTypeProfileCopyWith<$Res> {
  factory _$$NavigationTypeProfileCopyWith(_$NavigationTypeProfile value,
          $Res Function(_$NavigationTypeProfile) then) =
      __$$NavigationTypeProfileCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NavigationTypeProfileCopyWithImpl<$Res>
    extends _$NavigationTypeCopyWithImpl<$Res, _$NavigationTypeProfile>
    implements _$$NavigationTypeProfileCopyWith<$Res> {
  __$$NavigationTypeProfileCopyWithImpl(_$NavigationTypeProfile _value,
      $Res Function(_$NavigationTypeProfile) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NavigationTypeProfile implements NavigationTypeProfile {
  const _$NavigationTypeProfile();

  @override
  String toString() {
    return 'NavigationType.profile()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NavigationTypeProfile);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() root,
    required TResult Function() home,
    required TResult Function() profile,
    required TResult Function() search,
    required TResult Function() message,
  }) {
    return profile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? root,
    TResult? Function()? home,
    TResult? Function()? profile,
    TResult? Function()? search,
    TResult? Function()? message,
  }) {
    return profile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? root,
    TResult Function()? home,
    TResult Function()? profile,
    TResult Function()? search,
    TResult Function()? message,
    required TResult orElse(),
  }) {
    if (profile != null) {
      return profile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigationTypeRoot value) root,
    required TResult Function(NavigationTypeHome value) home,
    required TResult Function(NavigationTypeProfile value) profile,
    required TResult Function(NavigationTypeSearch value) search,
    required TResult Function(NavigationTypeMessage value) message,
  }) {
    return profile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavigationTypeRoot value)? root,
    TResult? Function(NavigationTypeHome value)? home,
    TResult? Function(NavigationTypeProfile value)? profile,
    TResult? Function(NavigationTypeSearch value)? search,
    TResult? Function(NavigationTypeMessage value)? message,
  }) {
    return profile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigationTypeRoot value)? root,
    TResult Function(NavigationTypeHome value)? home,
    TResult Function(NavigationTypeProfile value)? profile,
    TResult Function(NavigationTypeSearch value)? search,
    TResult Function(NavigationTypeMessage value)? message,
    required TResult orElse(),
  }) {
    if (profile != null) {
      return profile(this);
    }
    return orElse();
  }
}

abstract class NavigationTypeProfile implements NavigationType {
  const factory NavigationTypeProfile() = _$NavigationTypeProfile;
}

/// @nodoc
abstract class _$$NavigationTypeSearchCopyWith<$Res> {
  factory _$$NavigationTypeSearchCopyWith(_$NavigationTypeSearch value,
          $Res Function(_$NavigationTypeSearch) then) =
      __$$NavigationTypeSearchCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NavigationTypeSearchCopyWithImpl<$Res>
    extends _$NavigationTypeCopyWithImpl<$Res, _$NavigationTypeSearch>
    implements _$$NavigationTypeSearchCopyWith<$Res> {
  __$$NavigationTypeSearchCopyWithImpl(_$NavigationTypeSearch _value,
      $Res Function(_$NavigationTypeSearch) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NavigationTypeSearch implements NavigationTypeSearch {
  const _$NavigationTypeSearch();

  @override
  String toString() {
    return 'NavigationType.search()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NavigationTypeSearch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() root,
    required TResult Function() home,
    required TResult Function() profile,
    required TResult Function() search,
    required TResult Function() message,
  }) {
    return search();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? root,
    TResult? Function()? home,
    TResult? Function()? profile,
    TResult? Function()? search,
    TResult? Function()? message,
  }) {
    return search?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? root,
    TResult Function()? home,
    TResult Function()? profile,
    TResult Function()? search,
    TResult Function()? message,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigationTypeRoot value) root,
    required TResult Function(NavigationTypeHome value) home,
    required TResult Function(NavigationTypeProfile value) profile,
    required TResult Function(NavigationTypeSearch value) search,
    required TResult Function(NavigationTypeMessage value) message,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavigationTypeRoot value)? root,
    TResult? Function(NavigationTypeHome value)? home,
    TResult? Function(NavigationTypeProfile value)? profile,
    TResult? Function(NavigationTypeSearch value)? search,
    TResult? Function(NavigationTypeMessage value)? message,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigationTypeRoot value)? root,
    TResult Function(NavigationTypeHome value)? home,
    TResult Function(NavigationTypeProfile value)? profile,
    TResult Function(NavigationTypeSearch value)? search,
    TResult Function(NavigationTypeMessage value)? message,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class NavigationTypeSearch implements NavigationType {
  const factory NavigationTypeSearch() = _$NavigationTypeSearch;
}

/// @nodoc
abstract class _$$NavigationTypeMessageCopyWith<$Res> {
  factory _$$NavigationTypeMessageCopyWith(_$NavigationTypeMessage value,
          $Res Function(_$NavigationTypeMessage) then) =
      __$$NavigationTypeMessageCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NavigationTypeMessageCopyWithImpl<$Res>
    extends _$NavigationTypeCopyWithImpl<$Res, _$NavigationTypeMessage>
    implements _$$NavigationTypeMessageCopyWith<$Res> {
  __$$NavigationTypeMessageCopyWithImpl(_$NavigationTypeMessage _value,
      $Res Function(_$NavigationTypeMessage) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NavigationTypeMessage implements NavigationTypeMessage {
  const _$NavigationTypeMessage();

  @override
  String toString() {
    return 'NavigationType.message()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NavigationTypeMessage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() root,
    required TResult Function() home,
    required TResult Function() profile,
    required TResult Function() search,
    required TResult Function() message,
  }) {
    return message();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? root,
    TResult? Function()? home,
    TResult? Function()? profile,
    TResult? Function()? search,
    TResult? Function()? message,
  }) {
    return message?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? root,
    TResult Function()? home,
    TResult Function()? profile,
    TResult Function()? search,
    TResult Function()? message,
    required TResult orElse(),
  }) {
    if (message != null) {
      return message();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigationTypeRoot value) root,
    required TResult Function(NavigationTypeHome value) home,
    required TResult Function(NavigationTypeProfile value) profile,
    required TResult Function(NavigationTypeSearch value) search,
    required TResult Function(NavigationTypeMessage value) message,
  }) {
    return message(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavigationTypeRoot value)? root,
    TResult? Function(NavigationTypeHome value)? home,
    TResult? Function(NavigationTypeProfile value)? profile,
    TResult? Function(NavigationTypeSearch value)? search,
    TResult? Function(NavigationTypeMessage value)? message,
  }) {
    return message?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigationTypeRoot value)? root,
    TResult Function(NavigationTypeHome value)? home,
    TResult Function(NavigationTypeProfile value)? profile,
    TResult Function(NavigationTypeSearch value)? search,
    TResult Function(NavigationTypeMessage value)? message,
    required TResult orElse(),
  }) {
    if (message != null) {
      return message(this);
    }
    return orElse();
  }
}

abstract class NavigationTypeMessage implements NavigationType {
  const factory NavigationTypeMessage() = _$NavigationTypeMessage;
}

/// @nodoc
mixin _$ScreenType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() splash,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? splash,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? splash,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScreenTypeSplash value) splash,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScreenTypeSplash value)? splash,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScreenTypeSplash value)? splash,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScreenTypeCopyWith<$Res> {
  factory $ScreenTypeCopyWith(
          ScreenType value, $Res Function(ScreenType) then) =
      _$ScreenTypeCopyWithImpl<$Res, ScreenType>;
}

/// @nodoc
class _$ScreenTypeCopyWithImpl<$Res, $Val extends ScreenType>
    implements $ScreenTypeCopyWith<$Res> {
  _$ScreenTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ScreenTypeSplashCopyWith<$Res> {
  factory _$$ScreenTypeSplashCopyWith(
          _$ScreenTypeSplash value, $Res Function(_$ScreenTypeSplash) then) =
      __$$ScreenTypeSplashCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ScreenTypeSplashCopyWithImpl<$Res>
    extends _$ScreenTypeCopyWithImpl<$Res, _$ScreenTypeSplash>
    implements _$$ScreenTypeSplashCopyWith<$Res> {
  __$$ScreenTypeSplashCopyWithImpl(
      _$ScreenTypeSplash _value, $Res Function(_$ScreenTypeSplash) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ScreenTypeSplash implements ScreenTypeSplash {
  const _$ScreenTypeSplash();

  @override
  String toString() {
    return 'ScreenType.splash()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ScreenTypeSplash);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() splash,
  }) {
    return splash();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? splash,
  }) {
    return splash?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? splash,
    required TResult orElse(),
  }) {
    if (splash != null) {
      return splash();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScreenTypeSplash value) splash,
  }) {
    return splash(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScreenTypeSplash value)? splash,
  }) {
    return splash?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScreenTypeSplash value)? splash,
    required TResult orElse(),
  }) {
    if (splash != null) {
      return splash(this);
    }
    return orElse();
  }
}

abstract class ScreenTypeSplash implements ScreenType {
  const factory ScreenTypeSplash() = _$ScreenTypeSplash;
}
