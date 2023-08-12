// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() pressTodoButton,
    required TResult Function() nextPage,
    required TResult Function() onChangeFields,
    required TResult Function(String idTodo, String field, bool data)
        pressOnDoneButton,
    required TResult Function(String idTodo, String title) pressOnDeleteButton,
    required TResult Function(
            String idTodo, String title, String description, DateTime time)
        pressOnEditButton,
    required TResult Function(String title, String description, DateTime time)
        pressOnAddButton,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? pressTodoButton,
    TResult? Function()? nextPage,
    TResult? Function()? onChangeFields,
    TResult? Function(String idTodo, String field, bool data)?
        pressOnDoneButton,
    TResult? Function(String idTodo, String title)? pressOnDeleteButton,
    TResult? Function(
            String idTodo, String title, String description, DateTime time)?
        pressOnEditButton,
    TResult? Function(String title, String description, DateTime time)?
        pressOnAddButton,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? pressTodoButton,
    TResult Function()? nextPage,
    TResult Function()? onChangeFields,
    TResult Function(String idTodo, String field, bool data)? pressOnDoneButton,
    TResult Function(String idTodo, String title)? pressOnDeleteButton,
    TResult Function(
            String idTodo, String title, String description, DateTime time)?
        pressOnEditButton,
    TResult Function(String title, String description, DateTime time)?
        pressOnAddButton,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodoInitEvent value) init,
    required TResult Function(TodoPressTodoButtonEvent value) pressTodoButton,
    required TResult Function(TodoNextPageEvent value) nextPage,
    required TResult Function(TodoOnChangeFieldsEvent value) onChangeFields,
    required TResult Function(TodoPressOnDoneButtonEvent value)
        pressOnDoneButton,
    required TResult Function(TodoPressOnDeleteButtonEvent value)
        pressOnDeleteButton,
    required TResult Function(TodoPressOnEditButtonEvent value)
        pressOnEditButton,
    required TResult Function(TodoPressOnAddButtonEvent value) pressOnAddButton,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TodoInitEvent value)? init,
    TResult? Function(TodoPressTodoButtonEvent value)? pressTodoButton,
    TResult? Function(TodoNextPageEvent value)? nextPage,
    TResult? Function(TodoOnChangeFieldsEvent value)? onChangeFields,
    TResult? Function(TodoPressOnDoneButtonEvent value)? pressOnDoneButton,
    TResult? Function(TodoPressOnDeleteButtonEvent value)? pressOnDeleteButton,
    TResult? Function(TodoPressOnEditButtonEvent value)? pressOnEditButton,
    TResult? Function(TodoPressOnAddButtonEvent value)? pressOnAddButton,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodoInitEvent value)? init,
    TResult Function(TodoPressTodoButtonEvent value)? pressTodoButton,
    TResult Function(TodoNextPageEvent value)? nextPage,
    TResult Function(TodoOnChangeFieldsEvent value)? onChangeFields,
    TResult Function(TodoPressOnDoneButtonEvent value)? pressOnDoneButton,
    TResult Function(TodoPressOnDeleteButtonEvent value)? pressOnDeleteButton,
    TResult Function(TodoPressOnEditButtonEvent value)? pressOnEditButton,
    TResult Function(TodoPressOnAddButtonEvent value)? pressOnAddButton,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoEventCopyWith<$Res> {
  factory $TodoEventCopyWith(TodoEvent value, $Res Function(TodoEvent) then) =
      _$TodoEventCopyWithImpl<$Res, TodoEvent>;
}

/// @nodoc
class _$TodoEventCopyWithImpl<$Res, $Val extends TodoEvent>
    implements $TodoEventCopyWith<$Res> {
  _$TodoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TodoInitEventCopyWith<$Res> {
  factory _$$TodoInitEventCopyWith(
          _$TodoInitEvent value, $Res Function(_$TodoInitEvent) then) =
      __$$TodoInitEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TodoInitEventCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$TodoInitEvent>
    implements _$$TodoInitEventCopyWith<$Res> {
  __$$TodoInitEventCopyWithImpl(
      _$TodoInitEvent _value, $Res Function(_$TodoInitEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TodoInitEvent implements TodoInitEvent {
  const _$TodoInitEvent();

  @override
  String toString() {
    return 'TodoEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TodoInitEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() pressTodoButton,
    required TResult Function() nextPage,
    required TResult Function() onChangeFields,
    required TResult Function(String idTodo, String field, bool data)
        pressOnDoneButton,
    required TResult Function(String idTodo, String title) pressOnDeleteButton,
    required TResult Function(
            String idTodo, String title, String description, DateTime time)
        pressOnEditButton,
    required TResult Function(String title, String description, DateTime time)
        pressOnAddButton,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? pressTodoButton,
    TResult? Function()? nextPage,
    TResult? Function()? onChangeFields,
    TResult? Function(String idTodo, String field, bool data)?
        pressOnDoneButton,
    TResult? Function(String idTodo, String title)? pressOnDeleteButton,
    TResult? Function(
            String idTodo, String title, String description, DateTime time)?
        pressOnEditButton,
    TResult? Function(String title, String description, DateTime time)?
        pressOnAddButton,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? pressTodoButton,
    TResult Function()? nextPage,
    TResult Function()? onChangeFields,
    TResult Function(String idTodo, String field, bool data)? pressOnDoneButton,
    TResult Function(String idTodo, String title)? pressOnDeleteButton,
    TResult Function(
            String idTodo, String title, String description, DateTime time)?
        pressOnEditButton,
    TResult Function(String title, String description, DateTime time)?
        pressOnAddButton,
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
    required TResult Function(TodoInitEvent value) init,
    required TResult Function(TodoPressTodoButtonEvent value) pressTodoButton,
    required TResult Function(TodoNextPageEvent value) nextPage,
    required TResult Function(TodoOnChangeFieldsEvent value) onChangeFields,
    required TResult Function(TodoPressOnDoneButtonEvent value)
        pressOnDoneButton,
    required TResult Function(TodoPressOnDeleteButtonEvent value)
        pressOnDeleteButton,
    required TResult Function(TodoPressOnEditButtonEvent value)
        pressOnEditButton,
    required TResult Function(TodoPressOnAddButtonEvent value) pressOnAddButton,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TodoInitEvent value)? init,
    TResult? Function(TodoPressTodoButtonEvent value)? pressTodoButton,
    TResult? Function(TodoNextPageEvent value)? nextPage,
    TResult? Function(TodoOnChangeFieldsEvent value)? onChangeFields,
    TResult? Function(TodoPressOnDoneButtonEvent value)? pressOnDoneButton,
    TResult? Function(TodoPressOnDeleteButtonEvent value)? pressOnDeleteButton,
    TResult? Function(TodoPressOnEditButtonEvent value)? pressOnEditButton,
    TResult? Function(TodoPressOnAddButtonEvent value)? pressOnAddButton,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodoInitEvent value)? init,
    TResult Function(TodoPressTodoButtonEvent value)? pressTodoButton,
    TResult Function(TodoNextPageEvent value)? nextPage,
    TResult Function(TodoOnChangeFieldsEvent value)? onChangeFields,
    TResult Function(TodoPressOnDoneButtonEvent value)? pressOnDoneButton,
    TResult Function(TodoPressOnDeleteButtonEvent value)? pressOnDeleteButton,
    TResult Function(TodoPressOnEditButtonEvent value)? pressOnEditButton,
    TResult Function(TodoPressOnAddButtonEvent value)? pressOnAddButton,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class TodoInitEvent implements TodoEvent {
  const factory TodoInitEvent() = _$TodoInitEvent;
}

/// @nodoc
abstract class _$$TodoPressTodoButtonEventCopyWith<$Res> {
  factory _$$TodoPressTodoButtonEventCopyWith(_$TodoPressTodoButtonEvent value,
          $Res Function(_$TodoPressTodoButtonEvent) then) =
      __$$TodoPressTodoButtonEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TodoPressTodoButtonEventCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$TodoPressTodoButtonEvent>
    implements _$$TodoPressTodoButtonEventCopyWith<$Res> {
  __$$TodoPressTodoButtonEventCopyWithImpl(_$TodoPressTodoButtonEvent _value,
      $Res Function(_$TodoPressTodoButtonEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TodoPressTodoButtonEvent implements TodoPressTodoButtonEvent {
  const _$TodoPressTodoButtonEvent();

  @override
  String toString() {
    return 'TodoEvent.pressTodoButton()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoPressTodoButtonEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() pressTodoButton,
    required TResult Function() nextPage,
    required TResult Function() onChangeFields,
    required TResult Function(String idTodo, String field, bool data)
        pressOnDoneButton,
    required TResult Function(String idTodo, String title) pressOnDeleteButton,
    required TResult Function(
            String idTodo, String title, String description, DateTime time)
        pressOnEditButton,
    required TResult Function(String title, String description, DateTime time)
        pressOnAddButton,
  }) {
    return pressTodoButton();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? pressTodoButton,
    TResult? Function()? nextPage,
    TResult? Function()? onChangeFields,
    TResult? Function(String idTodo, String field, bool data)?
        pressOnDoneButton,
    TResult? Function(String idTodo, String title)? pressOnDeleteButton,
    TResult? Function(
            String idTodo, String title, String description, DateTime time)?
        pressOnEditButton,
    TResult? Function(String title, String description, DateTime time)?
        pressOnAddButton,
  }) {
    return pressTodoButton?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? pressTodoButton,
    TResult Function()? nextPage,
    TResult Function()? onChangeFields,
    TResult Function(String idTodo, String field, bool data)? pressOnDoneButton,
    TResult Function(String idTodo, String title)? pressOnDeleteButton,
    TResult Function(
            String idTodo, String title, String description, DateTime time)?
        pressOnEditButton,
    TResult Function(String title, String description, DateTime time)?
        pressOnAddButton,
    required TResult orElse(),
  }) {
    if (pressTodoButton != null) {
      return pressTodoButton();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodoInitEvent value) init,
    required TResult Function(TodoPressTodoButtonEvent value) pressTodoButton,
    required TResult Function(TodoNextPageEvent value) nextPage,
    required TResult Function(TodoOnChangeFieldsEvent value) onChangeFields,
    required TResult Function(TodoPressOnDoneButtonEvent value)
        pressOnDoneButton,
    required TResult Function(TodoPressOnDeleteButtonEvent value)
        pressOnDeleteButton,
    required TResult Function(TodoPressOnEditButtonEvent value)
        pressOnEditButton,
    required TResult Function(TodoPressOnAddButtonEvent value) pressOnAddButton,
  }) {
    return pressTodoButton(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TodoInitEvent value)? init,
    TResult? Function(TodoPressTodoButtonEvent value)? pressTodoButton,
    TResult? Function(TodoNextPageEvent value)? nextPage,
    TResult? Function(TodoOnChangeFieldsEvent value)? onChangeFields,
    TResult? Function(TodoPressOnDoneButtonEvent value)? pressOnDoneButton,
    TResult? Function(TodoPressOnDeleteButtonEvent value)? pressOnDeleteButton,
    TResult? Function(TodoPressOnEditButtonEvent value)? pressOnEditButton,
    TResult? Function(TodoPressOnAddButtonEvent value)? pressOnAddButton,
  }) {
    return pressTodoButton?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodoInitEvent value)? init,
    TResult Function(TodoPressTodoButtonEvent value)? pressTodoButton,
    TResult Function(TodoNextPageEvent value)? nextPage,
    TResult Function(TodoOnChangeFieldsEvent value)? onChangeFields,
    TResult Function(TodoPressOnDoneButtonEvent value)? pressOnDoneButton,
    TResult Function(TodoPressOnDeleteButtonEvent value)? pressOnDeleteButton,
    TResult Function(TodoPressOnEditButtonEvent value)? pressOnEditButton,
    TResult Function(TodoPressOnAddButtonEvent value)? pressOnAddButton,
    required TResult orElse(),
  }) {
    if (pressTodoButton != null) {
      return pressTodoButton(this);
    }
    return orElse();
  }
}

abstract class TodoPressTodoButtonEvent implements TodoEvent {
  const factory TodoPressTodoButtonEvent() = _$TodoPressTodoButtonEvent;
}

/// @nodoc
abstract class _$$TodoNextPageEventCopyWith<$Res> {
  factory _$$TodoNextPageEventCopyWith(
          _$TodoNextPageEvent value, $Res Function(_$TodoNextPageEvent) then) =
      __$$TodoNextPageEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TodoNextPageEventCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$TodoNextPageEvent>
    implements _$$TodoNextPageEventCopyWith<$Res> {
  __$$TodoNextPageEventCopyWithImpl(
      _$TodoNextPageEvent _value, $Res Function(_$TodoNextPageEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TodoNextPageEvent implements TodoNextPageEvent {
  const _$TodoNextPageEvent();

  @override
  String toString() {
    return 'TodoEvent.nextPage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TodoNextPageEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() pressTodoButton,
    required TResult Function() nextPage,
    required TResult Function() onChangeFields,
    required TResult Function(String idTodo, String field, bool data)
        pressOnDoneButton,
    required TResult Function(String idTodo, String title) pressOnDeleteButton,
    required TResult Function(
            String idTodo, String title, String description, DateTime time)
        pressOnEditButton,
    required TResult Function(String title, String description, DateTime time)
        pressOnAddButton,
  }) {
    return nextPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? pressTodoButton,
    TResult? Function()? nextPage,
    TResult? Function()? onChangeFields,
    TResult? Function(String idTodo, String field, bool data)?
        pressOnDoneButton,
    TResult? Function(String idTodo, String title)? pressOnDeleteButton,
    TResult? Function(
            String idTodo, String title, String description, DateTime time)?
        pressOnEditButton,
    TResult? Function(String title, String description, DateTime time)?
        pressOnAddButton,
  }) {
    return nextPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? pressTodoButton,
    TResult Function()? nextPage,
    TResult Function()? onChangeFields,
    TResult Function(String idTodo, String field, bool data)? pressOnDoneButton,
    TResult Function(String idTodo, String title)? pressOnDeleteButton,
    TResult Function(
            String idTodo, String title, String description, DateTime time)?
        pressOnEditButton,
    TResult Function(String title, String description, DateTime time)?
        pressOnAddButton,
    required TResult orElse(),
  }) {
    if (nextPage != null) {
      return nextPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodoInitEvent value) init,
    required TResult Function(TodoPressTodoButtonEvent value) pressTodoButton,
    required TResult Function(TodoNextPageEvent value) nextPage,
    required TResult Function(TodoOnChangeFieldsEvent value) onChangeFields,
    required TResult Function(TodoPressOnDoneButtonEvent value)
        pressOnDoneButton,
    required TResult Function(TodoPressOnDeleteButtonEvent value)
        pressOnDeleteButton,
    required TResult Function(TodoPressOnEditButtonEvent value)
        pressOnEditButton,
    required TResult Function(TodoPressOnAddButtonEvent value) pressOnAddButton,
  }) {
    return nextPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TodoInitEvent value)? init,
    TResult? Function(TodoPressTodoButtonEvent value)? pressTodoButton,
    TResult? Function(TodoNextPageEvent value)? nextPage,
    TResult? Function(TodoOnChangeFieldsEvent value)? onChangeFields,
    TResult? Function(TodoPressOnDoneButtonEvent value)? pressOnDoneButton,
    TResult? Function(TodoPressOnDeleteButtonEvent value)? pressOnDeleteButton,
    TResult? Function(TodoPressOnEditButtonEvent value)? pressOnEditButton,
    TResult? Function(TodoPressOnAddButtonEvent value)? pressOnAddButton,
  }) {
    return nextPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodoInitEvent value)? init,
    TResult Function(TodoPressTodoButtonEvent value)? pressTodoButton,
    TResult Function(TodoNextPageEvent value)? nextPage,
    TResult Function(TodoOnChangeFieldsEvent value)? onChangeFields,
    TResult Function(TodoPressOnDoneButtonEvent value)? pressOnDoneButton,
    TResult Function(TodoPressOnDeleteButtonEvent value)? pressOnDeleteButton,
    TResult Function(TodoPressOnEditButtonEvent value)? pressOnEditButton,
    TResult Function(TodoPressOnAddButtonEvent value)? pressOnAddButton,
    required TResult orElse(),
  }) {
    if (nextPage != null) {
      return nextPage(this);
    }
    return orElse();
  }
}

abstract class TodoNextPageEvent implements TodoEvent {
  const factory TodoNextPageEvent() = _$TodoNextPageEvent;
}

/// @nodoc
abstract class _$$TodoOnChangeFieldsEventCopyWith<$Res> {
  factory _$$TodoOnChangeFieldsEventCopyWith(_$TodoOnChangeFieldsEvent value,
          $Res Function(_$TodoOnChangeFieldsEvent) then) =
      __$$TodoOnChangeFieldsEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TodoOnChangeFieldsEventCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$TodoOnChangeFieldsEvent>
    implements _$$TodoOnChangeFieldsEventCopyWith<$Res> {
  __$$TodoOnChangeFieldsEventCopyWithImpl(_$TodoOnChangeFieldsEvent _value,
      $Res Function(_$TodoOnChangeFieldsEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TodoOnChangeFieldsEvent implements TodoOnChangeFieldsEvent {
  const _$TodoOnChangeFieldsEvent();

  @override
  String toString() {
    return 'TodoEvent.onChangeFields()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoOnChangeFieldsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() pressTodoButton,
    required TResult Function() nextPage,
    required TResult Function() onChangeFields,
    required TResult Function(String idTodo, String field, bool data)
        pressOnDoneButton,
    required TResult Function(String idTodo, String title) pressOnDeleteButton,
    required TResult Function(
            String idTodo, String title, String description, DateTime time)
        pressOnEditButton,
    required TResult Function(String title, String description, DateTime time)
        pressOnAddButton,
  }) {
    return onChangeFields();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? pressTodoButton,
    TResult? Function()? nextPage,
    TResult? Function()? onChangeFields,
    TResult? Function(String idTodo, String field, bool data)?
        pressOnDoneButton,
    TResult? Function(String idTodo, String title)? pressOnDeleteButton,
    TResult? Function(
            String idTodo, String title, String description, DateTime time)?
        pressOnEditButton,
    TResult? Function(String title, String description, DateTime time)?
        pressOnAddButton,
  }) {
    return onChangeFields?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? pressTodoButton,
    TResult Function()? nextPage,
    TResult Function()? onChangeFields,
    TResult Function(String idTodo, String field, bool data)? pressOnDoneButton,
    TResult Function(String idTodo, String title)? pressOnDeleteButton,
    TResult Function(
            String idTodo, String title, String description, DateTime time)?
        pressOnEditButton,
    TResult Function(String title, String description, DateTime time)?
        pressOnAddButton,
    required TResult orElse(),
  }) {
    if (onChangeFields != null) {
      return onChangeFields();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodoInitEvent value) init,
    required TResult Function(TodoPressTodoButtonEvent value) pressTodoButton,
    required TResult Function(TodoNextPageEvent value) nextPage,
    required TResult Function(TodoOnChangeFieldsEvent value) onChangeFields,
    required TResult Function(TodoPressOnDoneButtonEvent value)
        pressOnDoneButton,
    required TResult Function(TodoPressOnDeleteButtonEvent value)
        pressOnDeleteButton,
    required TResult Function(TodoPressOnEditButtonEvent value)
        pressOnEditButton,
    required TResult Function(TodoPressOnAddButtonEvent value) pressOnAddButton,
  }) {
    return onChangeFields(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TodoInitEvent value)? init,
    TResult? Function(TodoPressTodoButtonEvent value)? pressTodoButton,
    TResult? Function(TodoNextPageEvent value)? nextPage,
    TResult? Function(TodoOnChangeFieldsEvent value)? onChangeFields,
    TResult? Function(TodoPressOnDoneButtonEvent value)? pressOnDoneButton,
    TResult? Function(TodoPressOnDeleteButtonEvent value)? pressOnDeleteButton,
    TResult? Function(TodoPressOnEditButtonEvent value)? pressOnEditButton,
    TResult? Function(TodoPressOnAddButtonEvent value)? pressOnAddButton,
  }) {
    return onChangeFields?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodoInitEvent value)? init,
    TResult Function(TodoPressTodoButtonEvent value)? pressTodoButton,
    TResult Function(TodoNextPageEvent value)? nextPage,
    TResult Function(TodoOnChangeFieldsEvent value)? onChangeFields,
    TResult Function(TodoPressOnDoneButtonEvent value)? pressOnDoneButton,
    TResult Function(TodoPressOnDeleteButtonEvent value)? pressOnDeleteButton,
    TResult Function(TodoPressOnEditButtonEvent value)? pressOnEditButton,
    TResult Function(TodoPressOnAddButtonEvent value)? pressOnAddButton,
    required TResult orElse(),
  }) {
    if (onChangeFields != null) {
      return onChangeFields(this);
    }
    return orElse();
  }
}

abstract class TodoOnChangeFieldsEvent implements TodoEvent {
  const factory TodoOnChangeFieldsEvent() = _$TodoOnChangeFieldsEvent;
}

/// @nodoc
abstract class _$$TodoPressOnDoneButtonEventCopyWith<$Res> {
  factory _$$TodoPressOnDoneButtonEventCopyWith(
          _$TodoPressOnDoneButtonEvent value,
          $Res Function(_$TodoPressOnDoneButtonEvent) then) =
      __$$TodoPressOnDoneButtonEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String idTodo, String field, bool data});
}

/// @nodoc
class __$$TodoPressOnDoneButtonEventCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$TodoPressOnDoneButtonEvent>
    implements _$$TodoPressOnDoneButtonEventCopyWith<$Res> {
  __$$TodoPressOnDoneButtonEventCopyWithImpl(
      _$TodoPressOnDoneButtonEvent _value,
      $Res Function(_$TodoPressOnDoneButtonEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idTodo = null,
    Object? field = null,
    Object? data = null,
  }) {
    return _then(_$TodoPressOnDoneButtonEvent(
      idTodo: null == idTodo
          ? _value.idTodo
          : idTodo // ignore: cast_nullable_to_non_nullable
              as String,
      field: null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TodoPressOnDoneButtonEvent implements TodoPressOnDoneButtonEvent {
  const _$TodoPressOnDoneButtonEvent(
      {required this.idTodo, required this.field, required this.data});

  @override
  final String idTodo;
  @override
  final String field;
  @override
  final bool data;

  @override
  String toString() {
    return 'TodoEvent.pressOnDoneButton(idTodo: $idTodo, field: $field, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoPressOnDoneButtonEvent &&
            (identical(other.idTodo, idTodo) || other.idTodo == idTodo) &&
            (identical(other.field, field) || other.field == field) &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, idTodo, field, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoPressOnDoneButtonEventCopyWith<_$TodoPressOnDoneButtonEvent>
      get copyWith => __$$TodoPressOnDoneButtonEventCopyWithImpl<
          _$TodoPressOnDoneButtonEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() pressTodoButton,
    required TResult Function() nextPage,
    required TResult Function() onChangeFields,
    required TResult Function(String idTodo, String field, bool data)
        pressOnDoneButton,
    required TResult Function(String idTodo, String title) pressOnDeleteButton,
    required TResult Function(
            String idTodo, String title, String description, DateTime time)
        pressOnEditButton,
    required TResult Function(String title, String description, DateTime time)
        pressOnAddButton,
  }) {
    return pressOnDoneButton(idTodo, field, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? pressTodoButton,
    TResult? Function()? nextPage,
    TResult? Function()? onChangeFields,
    TResult? Function(String idTodo, String field, bool data)?
        pressOnDoneButton,
    TResult? Function(String idTodo, String title)? pressOnDeleteButton,
    TResult? Function(
            String idTodo, String title, String description, DateTime time)?
        pressOnEditButton,
    TResult? Function(String title, String description, DateTime time)?
        pressOnAddButton,
  }) {
    return pressOnDoneButton?.call(idTodo, field, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? pressTodoButton,
    TResult Function()? nextPage,
    TResult Function()? onChangeFields,
    TResult Function(String idTodo, String field, bool data)? pressOnDoneButton,
    TResult Function(String idTodo, String title)? pressOnDeleteButton,
    TResult Function(
            String idTodo, String title, String description, DateTime time)?
        pressOnEditButton,
    TResult Function(String title, String description, DateTime time)?
        pressOnAddButton,
    required TResult orElse(),
  }) {
    if (pressOnDoneButton != null) {
      return pressOnDoneButton(idTodo, field, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodoInitEvent value) init,
    required TResult Function(TodoPressTodoButtonEvent value) pressTodoButton,
    required TResult Function(TodoNextPageEvent value) nextPage,
    required TResult Function(TodoOnChangeFieldsEvent value) onChangeFields,
    required TResult Function(TodoPressOnDoneButtonEvent value)
        pressOnDoneButton,
    required TResult Function(TodoPressOnDeleteButtonEvent value)
        pressOnDeleteButton,
    required TResult Function(TodoPressOnEditButtonEvent value)
        pressOnEditButton,
    required TResult Function(TodoPressOnAddButtonEvent value) pressOnAddButton,
  }) {
    return pressOnDoneButton(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TodoInitEvent value)? init,
    TResult? Function(TodoPressTodoButtonEvent value)? pressTodoButton,
    TResult? Function(TodoNextPageEvent value)? nextPage,
    TResult? Function(TodoOnChangeFieldsEvent value)? onChangeFields,
    TResult? Function(TodoPressOnDoneButtonEvent value)? pressOnDoneButton,
    TResult? Function(TodoPressOnDeleteButtonEvent value)? pressOnDeleteButton,
    TResult? Function(TodoPressOnEditButtonEvent value)? pressOnEditButton,
    TResult? Function(TodoPressOnAddButtonEvent value)? pressOnAddButton,
  }) {
    return pressOnDoneButton?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodoInitEvent value)? init,
    TResult Function(TodoPressTodoButtonEvent value)? pressTodoButton,
    TResult Function(TodoNextPageEvent value)? nextPage,
    TResult Function(TodoOnChangeFieldsEvent value)? onChangeFields,
    TResult Function(TodoPressOnDoneButtonEvent value)? pressOnDoneButton,
    TResult Function(TodoPressOnDeleteButtonEvent value)? pressOnDeleteButton,
    TResult Function(TodoPressOnEditButtonEvent value)? pressOnEditButton,
    TResult Function(TodoPressOnAddButtonEvent value)? pressOnAddButton,
    required TResult orElse(),
  }) {
    if (pressOnDoneButton != null) {
      return pressOnDoneButton(this);
    }
    return orElse();
  }
}

abstract class TodoPressOnDoneButtonEvent implements TodoEvent {
  const factory TodoPressOnDoneButtonEvent(
      {required final String idTodo,
      required final String field,
      required final bool data}) = _$TodoPressOnDoneButtonEvent;

  String get idTodo;
  String get field;
  bool get data;
  @JsonKey(ignore: true)
  _$$TodoPressOnDoneButtonEventCopyWith<_$TodoPressOnDoneButtonEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TodoPressOnDeleteButtonEventCopyWith<$Res> {
  factory _$$TodoPressOnDeleteButtonEventCopyWith(
          _$TodoPressOnDeleteButtonEvent value,
          $Res Function(_$TodoPressOnDeleteButtonEvent) then) =
      __$$TodoPressOnDeleteButtonEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String idTodo, String title});
}

/// @nodoc
class __$$TodoPressOnDeleteButtonEventCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$TodoPressOnDeleteButtonEvent>
    implements _$$TodoPressOnDeleteButtonEventCopyWith<$Res> {
  __$$TodoPressOnDeleteButtonEventCopyWithImpl(
      _$TodoPressOnDeleteButtonEvent _value,
      $Res Function(_$TodoPressOnDeleteButtonEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idTodo = null,
    Object? title = null,
  }) {
    return _then(_$TodoPressOnDeleteButtonEvent(
      idTodo: null == idTodo
          ? _value.idTodo
          : idTodo // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TodoPressOnDeleteButtonEvent implements TodoPressOnDeleteButtonEvent {
  const _$TodoPressOnDeleteButtonEvent(
      {required this.idTodo, required this.title});

  @override
  final String idTodo;
  @override
  final String title;

  @override
  String toString() {
    return 'TodoEvent.pressOnDeleteButton(idTodo: $idTodo, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoPressOnDeleteButtonEvent &&
            (identical(other.idTodo, idTodo) || other.idTodo == idTodo) &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, idTodo, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoPressOnDeleteButtonEventCopyWith<_$TodoPressOnDeleteButtonEvent>
      get copyWith => __$$TodoPressOnDeleteButtonEventCopyWithImpl<
          _$TodoPressOnDeleteButtonEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() pressTodoButton,
    required TResult Function() nextPage,
    required TResult Function() onChangeFields,
    required TResult Function(String idTodo, String field, bool data)
        pressOnDoneButton,
    required TResult Function(String idTodo, String title) pressOnDeleteButton,
    required TResult Function(
            String idTodo, String title, String description, DateTime time)
        pressOnEditButton,
    required TResult Function(String title, String description, DateTime time)
        pressOnAddButton,
  }) {
    return pressOnDeleteButton(idTodo, title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? pressTodoButton,
    TResult? Function()? nextPage,
    TResult? Function()? onChangeFields,
    TResult? Function(String idTodo, String field, bool data)?
        pressOnDoneButton,
    TResult? Function(String idTodo, String title)? pressOnDeleteButton,
    TResult? Function(
            String idTodo, String title, String description, DateTime time)?
        pressOnEditButton,
    TResult? Function(String title, String description, DateTime time)?
        pressOnAddButton,
  }) {
    return pressOnDeleteButton?.call(idTodo, title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? pressTodoButton,
    TResult Function()? nextPage,
    TResult Function()? onChangeFields,
    TResult Function(String idTodo, String field, bool data)? pressOnDoneButton,
    TResult Function(String idTodo, String title)? pressOnDeleteButton,
    TResult Function(
            String idTodo, String title, String description, DateTime time)?
        pressOnEditButton,
    TResult Function(String title, String description, DateTime time)?
        pressOnAddButton,
    required TResult orElse(),
  }) {
    if (pressOnDeleteButton != null) {
      return pressOnDeleteButton(idTodo, title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodoInitEvent value) init,
    required TResult Function(TodoPressTodoButtonEvent value) pressTodoButton,
    required TResult Function(TodoNextPageEvent value) nextPage,
    required TResult Function(TodoOnChangeFieldsEvent value) onChangeFields,
    required TResult Function(TodoPressOnDoneButtonEvent value)
        pressOnDoneButton,
    required TResult Function(TodoPressOnDeleteButtonEvent value)
        pressOnDeleteButton,
    required TResult Function(TodoPressOnEditButtonEvent value)
        pressOnEditButton,
    required TResult Function(TodoPressOnAddButtonEvent value) pressOnAddButton,
  }) {
    return pressOnDeleteButton(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TodoInitEvent value)? init,
    TResult? Function(TodoPressTodoButtonEvent value)? pressTodoButton,
    TResult? Function(TodoNextPageEvent value)? nextPage,
    TResult? Function(TodoOnChangeFieldsEvent value)? onChangeFields,
    TResult? Function(TodoPressOnDoneButtonEvent value)? pressOnDoneButton,
    TResult? Function(TodoPressOnDeleteButtonEvent value)? pressOnDeleteButton,
    TResult? Function(TodoPressOnEditButtonEvent value)? pressOnEditButton,
    TResult? Function(TodoPressOnAddButtonEvent value)? pressOnAddButton,
  }) {
    return pressOnDeleteButton?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodoInitEvent value)? init,
    TResult Function(TodoPressTodoButtonEvent value)? pressTodoButton,
    TResult Function(TodoNextPageEvent value)? nextPage,
    TResult Function(TodoOnChangeFieldsEvent value)? onChangeFields,
    TResult Function(TodoPressOnDoneButtonEvent value)? pressOnDoneButton,
    TResult Function(TodoPressOnDeleteButtonEvent value)? pressOnDeleteButton,
    TResult Function(TodoPressOnEditButtonEvent value)? pressOnEditButton,
    TResult Function(TodoPressOnAddButtonEvent value)? pressOnAddButton,
    required TResult orElse(),
  }) {
    if (pressOnDeleteButton != null) {
      return pressOnDeleteButton(this);
    }
    return orElse();
  }
}

abstract class TodoPressOnDeleteButtonEvent implements TodoEvent {
  const factory TodoPressOnDeleteButtonEvent(
      {required final String idTodo,
      required final String title}) = _$TodoPressOnDeleteButtonEvent;

  String get idTodo;
  String get title;
  @JsonKey(ignore: true)
  _$$TodoPressOnDeleteButtonEventCopyWith<_$TodoPressOnDeleteButtonEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TodoPressOnEditButtonEventCopyWith<$Res> {
  factory _$$TodoPressOnEditButtonEventCopyWith(
          _$TodoPressOnEditButtonEvent value,
          $Res Function(_$TodoPressOnEditButtonEvent) then) =
      __$$TodoPressOnEditButtonEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String idTodo, String title, String description, DateTime time});
}

/// @nodoc
class __$$TodoPressOnEditButtonEventCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$TodoPressOnEditButtonEvent>
    implements _$$TodoPressOnEditButtonEventCopyWith<$Res> {
  __$$TodoPressOnEditButtonEventCopyWithImpl(
      _$TodoPressOnEditButtonEvent _value,
      $Res Function(_$TodoPressOnEditButtonEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idTodo = null,
    Object? title = null,
    Object? description = null,
    Object? time = null,
  }) {
    return _then(_$TodoPressOnEditButtonEvent(
      idTodo: null == idTodo
          ? _value.idTodo
          : idTodo // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$TodoPressOnEditButtonEvent implements TodoPressOnEditButtonEvent {
  const _$TodoPressOnEditButtonEvent(
      {required this.idTodo,
      required this.title,
      required this.description,
      required this.time});

  @override
  final String idTodo;
  @override
  final String title;
  @override
  final String description;
  @override
  final DateTime time;

  @override
  String toString() {
    return 'TodoEvent.pressOnEditButton(idTodo: $idTodo, title: $title, description: $description, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoPressOnEditButtonEvent &&
            (identical(other.idTodo, idTodo) || other.idTodo == idTodo) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.time, time) || other.time == time));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, idTodo, title, description, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoPressOnEditButtonEventCopyWith<_$TodoPressOnEditButtonEvent>
      get copyWith => __$$TodoPressOnEditButtonEventCopyWithImpl<
          _$TodoPressOnEditButtonEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() pressTodoButton,
    required TResult Function() nextPage,
    required TResult Function() onChangeFields,
    required TResult Function(String idTodo, String field, bool data)
        pressOnDoneButton,
    required TResult Function(String idTodo, String title) pressOnDeleteButton,
    required TResult Function(
            String idTodo, String title, String description, DateTime time)
        pressOnEditButton,
    required TResult Function(String title, String description, DateTime time)
        pressOnAddButton,
  }) {
    return pressOnEditButton(idTodo, title, description, time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? pressTodoButton,
    TResult? Function()? nextPage,
    TResult? Function()? onChangeFields,
    TResult? Function(String idTodo, String field, bool data)?
        pressOnDoneButton,
    TResult? Function(String idTodo, String title)? pressOnDeleteButton,
    TResult? Function(
            String idTodo, String title, String description, DateTime time)?
        pressOnEditButton,
    TResult? Function(String title, String description, DateTime time)?
        pressOnAddButton,
  }) {
    return pressOnEditButton?.call(idTodo, title, description, time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? pressTodoButton,
    TResult Function()? nextPage,
    TResult Function()? onChangeFields,
    TResult Function(String idTodo, String field, bool data)? pressOnDoneButton,
    TResult Function(String idTodo, String title)? pressOnDeleteButton,
    TResult Function(
            String idTodo, String title, String description, DateTime time)?
        pressOnEditButton,
    TResult Function(String title, String description, DateTime time)?
        pressOnAddButton,
    required TResult orElse(),
  }) {
    if (pressOnEditButton != null) {
      return pressOnEditButton(idTodo, title, description, time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodoInitEvent value) init,
    required TResult Function(TodoPressTodoButtonEvent value) pressTodoButton,
    required TResult Function(TodoNextPageEvent value) nextPage,
    required TResult Function(TodoOnChangeFieldsEvent value) onChangeFields,
    required TResult Function(TodoPressOnDoneButtonEvent value)
        pressOnDoneButton,
    required TResult Function(TodoPressOnDeleteButtonEvent value)
        pressOnDeleteButton,
    required TResult Function(TodoPressOnEditButtonEvent value)
        pressOnEditButton,
    required TResult Function(TodoPressOnAddButtonEvent value) pressOnAddButton,
  }) {
    return pressOnEditButton(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TodoInitEvent value)? init,
    TResult? Function(TodoPressTodoButtonEvent value)? pressTodoButton,
    TResult? Function(TodoNextPageEvent value)? nextPage,
    TResult? Function(TodoOnChangeFieldsEvent value)? onChangeFields,
    TResult? Function(TodoPressOnDoneButtonEvent value)? pressOnDoneButton,
    TResult? Function(TodoPressOnDeleteButtonEvent value)? pressOnDeleteButton,
    TResult? Function(TodoPressOnEditButtonEvent value)? pressOnEditButton,
    TResult? Function(TodoPressOnAddButtonEvent value)? pressOnAddButton,
  }) {
    return pressOnEditButton?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodoInitEvent value)? init,
    TResult Function(TodoPressTodoButtonEvent value)? pressTodoButton,
    TResult Function(TodoNextPageEvent value)? nextPage,
    TResult Function(TodoOnChangeFieldsEvent value)? onChangeFields,
    TResult Function(TodoPressOnDoneButtonEvent value)? pressOnDoneButton,
    TResult Function(TodoPressOnDeleteButtonEvent value)? pressOnDeleteButton,
    TResult Function(TodoPressOnEditButtonEvent value)? pressOnEditButton,
    TResult Function(TodoPressOnAddButtonEvent value)? pressOnAddButton,
    required TResult orElse(),
  }) {
    if (pressOnEditButton != null) {
      return pressOnEditButton(this);
    }
    return orElse();
  }
}

abstract class TodoPressOnEditButtonEvent implements TodoEvent {
  const factory TodoPressOnEditButtonEvent(
      {required final String idTodo,
      required final String title,
      required final String description,
      required final DateTime time}) = _$TodoPressOnEditButtonEvent;

  String get idTodo;
  String get title;
  String get description;
  DateTime get time;
  @JsonKey(ignore: true)
  _$$TodoPressOnEditButtonEventCopyWith<_$TodoPressOnEditButtonEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TodoPressOnAddButtonEventCopyWith<$Res> {
  factory _$$TodoPressOnAddButtonEventCopyWith(
          _$TodoPressOnAddButtonEvent value,
          $Res Function(_$TodoPressOnAddButtonEvent) then) =
      __$$TodoPressOnAddButtonEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String title, String description, DateTime time});
}

/// @nodoc
class __$$TodoPressOnAddButtonEventCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$TodoPressOnAddButtonEvent>
    implements _$$TodoPressOnAddButtonEventCopyWith<$Res> {
  __$$TodoPressOnAddButtonEventCopyWithImpl(_$TodoPressOnAddButtonEvent _value,
      $Res Function(_$TodoPressOnAddButtonEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? time = null,
  }) {
    return _then(_$TodoPressOnAddButtonEvent(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$TodoPressOnAddButtonEvent implements TodoPressOnAddButtonEvent {
  const _$TodoPressOnAddButtonEvent(
      {required this.title, required this.description, required this.time});

  @override
  final String title;
  @override
  final String description;
  @override
  final DateTime time;

  @override
  String toString() {
    return 'TodoEvent.pressOnAddButton(title: $title, description: $description, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoPressOnAddButtonEvent &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.time, time) || other.time == time));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, description, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoPressOnAddButtonEventCopyWith<_$TodoPressOnAddButtonEvent>
      get copyWith => __$$TodoPressOnAddButtonEventCopyWithImpl<
          _$TodoPressOnAddButtonEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() pressTodoButton,
    required TResult Function() nextPage,
    required TResult Function() onChangeFields,
    required TResult Function(String idTodo, String field, bool data)
        pressOnDoneButton,
    required TResult Function(String idTodo, String title) pressOnDeleteButton,
    required TResult Function(
            String idTodo, String title, String description, DateTime time)
        pressOnEditButton,
    required TResult Function(String title, String description, DateTime time)
        pressOnAddButton,
  }) {
    return pressOnAddButton(title, description, time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? pressTodoButton,
    TResult? Function()? nextPage,
    TResult? Function()? onChangeFields,
    TResult? Function(String idTodo, String field, bool data)?
        pressOnDoneButton,
    TResult? Function(String idTodo, String title)? pressOnDeleteButton,
    TResult? Function(
            String idTodo, String title, String description, DateTime time)?
        pressOnEditButton,
    TResult? Function(String title, String description, DateTime time)?
        pressOnAddButton,
  }) {
    return pressOnAddButton?.call(title, description, time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? pressTodoButton,
    TResult Function()? nextPage,
    TResult Function()? onChangeFields,
    TResult Function(String idTodo, String field, bool data)? pressOnDoneButton,
    TResult Function(String idTodo, String title)? pressOnDeleteButton,
    TResult Function(
            String idTodo, String title, String description, DateTime time)?
        pressOnEditButton,
    TResult Function(String title, String description, DateTime time)?
        pressOnAddButton,
    required TResult orElse(),
  }) {
    if (pressOnAddButton != null) {
      return pressOnAddButton(title, description, time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TodoInitEvent value) init,
    required TResult Function(TodoPressTodoButtonEvent value) pressTodoButton,
    required TResult Function(TodoNextPageEvent value) nextPage,
    required TResult Function(TodoOnChangeFieldsEvent value) onChangeFields,
    required TResult Function(TodoPressOnDoneButtonEvent value)
        pressOnDoneButton,
    required TResult Function(TodoPressOnDeleteButtonEvent value)
        pressOnDeleteButton,
    required TResult Function(TodoPressOnEditButtonEvent value)
        pressOnEditButton,
    required TResult Function(TodoPressOnAddButtonEvent value) pressOnAddButton,
  }) {
    return pressOnAddButton(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TodoInitEvent value)? init,
    TResult? Function(TodoPressTodoButtonEvent value)? pressTodoButton,
    TResult? Function(TodoNextPageEvent value)? nextPage,
    TResult? Function(TodoOnChangeFieldsEvent value)? onChangeFields,
    TResult? Function(TodoPressOnDoneButtonEvent value)? pressOnDoneButton,
    TResult? Function(TodoPressOnDeleteButtonEvent value)? pressOnDeleteButton,
    TResult? Function(TodoPressOnEditButtonEvent value)? pressOnEditButton,
    TResult? Function(TodoPressOnAddButtonEvent value)? pressOnAddButton,
  }) {
    return pressOnAddButton?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TodoInitEvent value)? init,
    TResult Function(TodoPressTodoButtonEvent value)? pressTodoButton,
    TResult Function(TodoNextPageEvent value)? nextPage,
    TResult Function(TodoOnChangeFieldsEvent value)? onChangeFields,
    TResult Function(TodoPressOnDoneButtonEvent value)? pressOnDoneButton,
    TResult Function(TodoPressOnDeleteButtonEvent value)? pressOnDeleteButton,
    TResult Function(TodoPressOnEditButtonEvent value)? pressOnEditButton,
    TResult Function(TodoPressOnAddButtonEvent value)? pressOnAddButton,
    required TResult orElse(),
  }) {
    if (pressOnAddButton != null) {
      return pressOnAddButton(this);
    }
    return orElse();
  }
}

abstract class TodoPressOnAddButtonEvent implements TodoEvent {
  const factory TodoPressOnAddButtonEvent(
      {required final String title,
      required final String description,
      required final DateTime time}) = _$TodoPressOnAddButtonEvent;

  String get title;
  String get description;
  DateTime get time;
  @JsonKey(ignore: true)
  _$$TodoPressOnAddButtonEventCopyWith<_$TodoPressOnAddButtonEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TodoState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get checkRightFields => throw _privateConstructorUsedError;
  AppException? get exception => throw _privateConstructorUsedError;
  AppException? get emailException => throw _privateConstructorUsedError;
  AppException? get passwordException => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoStateCopyWith<TodoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoStateCopyWith<$Res> {
  factory $TodoStateCopyWith(TodoState value, $Res Function(TodoState) then) =
      _$TodoStateCopyWithImpl<$Res, TodoState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool checkRightFields,
      AppException? exception,
      AppException? emailException,
      AppException? passwordException});
}

/// @nodoc
class _$TodoStateCopyWithImpl<$Res, $Val extends TodoState>
    implements $TodoStateCopyWith<$Res> {
  _$TodoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? checkRightFields = null,
    Object? exception = freezed,
    Object? emailException = freezed,
    Object? passwordException = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      checkRightFields: null == checkRightFields
          ? _value.checkRightFields
          : checkRightFields // ignore: cast_nullable_to_non_nullable
              as bool,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as AppException?,
      emailException: freezed == emailException
          ? _value.emailException
          : emailException // ignore: cast_nullable_to_non_nullable
              as AppException?,
      passwordException: freezed == passwordException
          ? _value.passwordException
          : passwordException // ignore: cast_nullable_to_non_nullable
              as AppException?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TodoStateCopyWith<$Res> implements $TodoStateCopyWith<$Res> {
  factory _$$_TodoStateCopyWith(
          _$_TodoState value, $Res Function(_$_TodoState) then) =
      __$$_TodoStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool checkRightFields,
      AppException? exception,
      AppException? emailException,
      AppException? passwordException});
}

/// @nodoc
class __$$_TodoStateCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$_TodoState>
    implements _$$_TodoStateCopyWith<$Res> {
  __$$_TodoStateCopyWithImpl(
      _$_TodoState _value, $Res Function(_$_TodoState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? checkRightFields = null,
    Object? exception = freezed,
    Object? emailException = freezed,
    Object? passwordException = freezed,
  }) {
    return _then(_$_TodoState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      checkRightFields: null == checkRightFields
          ? _value.checkRightFields
          : checkRightFields // ignore: cast_nullable_to_non_nullable
              as bool,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as AppException?,
      emailException: freezed == emailException
          ? _value.emailException
          : emailException // ignore: cast_nullable_to_non_nullable
              as AppException?,
      passwordException: freezed == passwordException
          ? _value.passwordException
          : passwordException // ignore: cast_nullable_to_non_nullable
              as AppException?,
    ));
  }
}

/// @nodoc

class _$_TodoState implements _TodoState {
  const _$_TodoState(
      {this.isLoading = false,
      this.checkRightFields = false,
      this.exception,
      this.emailException,
      this.passwordException});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool checkRightFields;
  @override
  final AppException? exception;
  @override
  final AppException? emailException;
  @override
  final AppException? passwordException;

  @override
  String toString() {
    return 'TodoState(isLoading: $isLoading, checkRightFields: $checkRightFields, exception: $exception, emailException: $emailException, passwordException: $passwordException)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.checkRightFields, checkRightFields) ||
                other.checkRightFields == checkRightFields) &&
            (identical(other.exception, exception) ||
                other.exception == exception) &&
            (identical(other.emailException, emailException) ||
                other.emailException == emailException) &&
            (identical(other.passwordException, passwordException) ||
                other.passwordException == passwordException));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, checkRightFields,
      exception, emailException, passwordException);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TodoStateCopyWith<_$_TodoState> get copyWith =>
      __$$_TodoStateCopyWithImpl<_$_TodoState>(this, _$identity);
}

abstract class _TodoState implements TodoState {
  const factory _TodoState(
      {final bool isLoading,
      final bool checkRightFields,
      final AppException? exception,
      final AppException? emailException,
      final AppException? passwordException}) = _$_TodoState;

  @override
  bool get isLoading;
  @override
  bool get checkRightFields;
  @override
  AppException? get exception;
  @override
  AppException? get emailException;
  @override
  AppException? get passwordException;
  @override
  @JsonKey(ignore: true)
  _$$_TodoStateCopyWith<_$_TodoState> get copyWith =>
      throw _privateConstructorUsedError;
}
