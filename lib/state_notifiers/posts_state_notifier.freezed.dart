// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'posts_state_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PostsStateTearOff {
  const _$PostsStateTearOff();

// ignore: unused_element
  _PostsStateInitial initial() {
    return _PostsStateInitial();
  }

// ignore: unused_element
  _PostsStateLoaded loaded(List<Post> posts) {
    return _PostsStateLoaded(
      posts,
    );
  }

// ignore: unused_element
  _PostsStateLoading loading() {
    return _PostsStateLoading();
  }

// ignore: unused_element
  _PostsStateError error() {
    return _PostsStateError();
  }
}

/// @nodoc
// ignore: unused_element
const $PostsState = _$PostsStateTearOff();

/// @nodoc
mixin _$PostsState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loaded(List<Post> posts),
    @required Result loading(),
    @required Result error(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loaded(List<Post> posts),
    Result loading(),
    Result error(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_PostsStateInitial value),
    @required Result loaded(_PostsStateLoaded value),
    @required Result loading(_PostsStateLoading value),
    @required Result error(_PostsStateError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_PostsStateInitial value),
    Result loaded(_PostsStateLoaded value),
    Result loading(_PostsStateLoading value),
    Result error(_PostsStateError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $PostsStateCopyWith<$Res> {
  factory $PostsStateCopyWith(
          PostsState value, $Res Function(PostsState) then) =
      _$PostsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostsStateCopyWithImpl<$Res> implements $PostsStateCopyWith<$Res> {
  _$PostsStateCopyWithImpl(this._value, this._then);

  final PostsState _value;
  // ignore: unused_field
  final $Res Function(PostsState) _then;
}

/// @nodoc
abstract class _$PostsStateInitialCopyWith<$Res> {
  factory _$PostsStateInitialCopyWith(
          _PostsStateInitial value, $Res Function(_PostsStateInitial) then) =
      __$PostsStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$PostsStateInitialCopyWithImpl<$Res>
    extends _$PostsStateCopyWithImpl<$Res>
    implements _$PostsStateInitialCopyWith<$Res> {
  __$PostsStateInitialCopyWithImpl(
      _PostsStateInitial _value, $Res Function(_PostsStateInitial) _then)
      : super(_value, (v) => _then(v as _PostsStateInitial));

  @override
  _PostsStateInitial get _value => super._value as _PostsStateInitial;
}

/// @nodoc
class _$_PostsStateInitial
    with DiagnosticableTreeMixin
    implements _PostsStateInitial {
  _$_PostsStateInitial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostsState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'PostsState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PostsStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loaded(List<Post> posts),
    @required Result loading(),
    @required Result error(),
  }) {
    assert(initial != null);
    assert(loaded != null);
    assert(loading != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loaded(List<Post> posts),
    Result loading(),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_PostsStateInitial value),
    @required Result loaded(_PostsStateLoaded value),
    @required Result loading(_PostsStateLoading value),
    @required Result error(_PostsStateError value),
  }) {
    assert(initial != null);
    assert(loaded != null);
    assert(loading != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_PostsStateInitial value),
    Result loaded(_PostsStateLoaded value),
    Result loading(_PostsStateLoading value),
    Result error(_PostsStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _PostsStateInitial implements PostsState {
  factory _PostsStateInitial() = _$_PostsStateInitial;
}

/// @nodoc
abstract class _$PostsStateLoadedCopyWith<$Res> {
  factory _$PostsStateLoadedCopyWith(
          _PostsStateLoaded value, $Res Function(_PostsStateLoaded) then) =
      __$PostsStateLoadedCopyWithImpl<$Res>;
  $Res call({List<Post> posts});
}

/// @nodoc
class __$PostsStateLoadedCopyWithImpl<$Res>
    extends _$PostsStateCopyWithImpl<$Res>
    implements _$PostsStateLoadedCopyWith<$Res> {
  __$PostsStateLoadedCopyWithImpl(
      _PostsStateLoaded _value, $Res Function(_PostsStateLoaded) _then)
      : super(_value, (v) => _then(v as _PostsStateLoaded));

  @override
  _PostsStateLoaded get _value => super._value as _PostsStateLoaded;

  @override
  $Res call({
    Object posts = freezed,
  }) {
    return _then(_PostsStateLoaded(
      posts == freezed ? _value.posts : posts as List<Post>,
    ));
  }
}

/// @nodoc
class _$_PostsStateLoaded
    with DiagnosticableTreeMixin
    implements _PostsStateLoaded {
  _$_PostsStateLoaded(this.posts) : assert(posts != null);

  @override
  final List<Post> posts;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostsState.loaded(posts: $posts)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PostsState.loaded'))
      ..add(DiagnosticsProperty('posts', posts));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostsStateLoaded &&
            (identical(other.posts, posts) ||
                const DeepCollectionEquality().equals(other.posts, posts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(posts);

  @override
  _$PostsStateLoadedCopyWith<_PostsStateLoaded> get copyWith =>
      __$PostsStateLoadedCopyWithImpl<_PostsStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loaded(List<Post> posts),
    @required Result loading(),
    @required Result error(),
  }) {
    assert(initial != null);
    assert(loaded != null);
    assert(loading != null);
    assert(error != null);
    return loaded(posts);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loaded(List<Post> posts),
    Result loading(),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(posts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_PostsStateInitial value),
    @required Result loaded(_PostsStateLoaded value),
    @required Result loading(_PostsStateLoading value),
    @required Result error(_PostsStateError value),
  }) {
    assert(initial != null);
    assert(loaded != null);
    assert(loading != null);
    assert(error != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_PostsStateInitial value),
    Result loaded(_PostsStateLoaded value),
    Result loading(_PostsStateLoading value),
    Result error(_PostsStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _PostsStateLoaded implements PostsState {
  factory _PostsStateLoaded(List<Post> posts) = _$_PostsStateLoaded;

  List<Post> get posts;
  _$PostsStateLoadedCopyWith<_PostsStateLoaded> get copyWith;
}

/// @nodoc
abstract class _$PostsStateLoadingCopyWith<$Res> {
  factory _$PostsStateLoadingCopyWith(
          _PostsStateLoading value, $Res Function(_PostsStateLoading) then) =
      __$PostsStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$PostsStateLoadingCopyWithImpl<$Res>
    extends _$PostsStateCopyWithImpl<$Res>
    implements _$PostsStateLoadingCopyWith<$Res> {
  __$PostsStateLoadingCopyWithImpl(
      _PostsStateLoading _value, $Res Function(_PostsStateLoading) _then)
      : super(_value, (v) => _then(v as _PostsStateLoading));

  @override
  _PostsStateLoading get _value => super._value as _PostsStateLoading;
}

/// @nodoc
class _$_PostsStateLoading
    with DiagnosticableTreeMixin
    implements _PostsStateLoading {
  _$_PostsStateLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostsState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'PostsState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PostsStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loaded(List<Post> posts),
    @required Result loading(),
    @required Result error(),
  }) {
    assert(initial != null);
    assert(loaded != null);
    assert(loading != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loaded(List<Post> posts),
    Result loading(),
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
    @required Result initial(_PostsStateInitial value),
    @required Result loaded(_PostsStateLoaded value),
    @required Result loading(_PostsStateLoading value),
    @required Result error(_PostsStateError value),
  }) {
    assert(initial != null);
    assert(loaded != null);
    assert(loading != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_PostsStateInitial value),
    Result loaded(_PostsStateLoaded value),
    Result loading(_PostsStateLoading value),
    Result error(_PostsStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _PostsStateLoading implements PostsState {
  factory _PostsStateLoading() = _$_PostsStateLoading;
}

/// @nodoc
abstract class _$PostsStateErrorCopyWith<$Res> {
  factory _$PostsStateErrorCopyWith(
          _PostsStateError value, $Res Function(_PostsStateError) then) =
      __$PostsStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$PostsStateErrorCopyWithImpl<$Res>
    extends _$PostsStateCopyWithImpl<$Res>
    implements _$PostsStateErrorCopyWith<$Res> {
  __$PostsStateErrorCopyWithImpl(
      _PostsStateError _value, $Res Function(_PostsStateError) _then)
      : super(_value, (v) => _then(v as _PostsStateError));

  @override
  _PostsStateError get _value => super._value as _PostsStateError;
}

/// @nodoc
class _$_PostsStateError
    with DiagnosticableTreeMixin
    implements _PostsStateError {
  _$_PostsStateError();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostsState.error()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'PostsState.error'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PostsStateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loaded(List<Post> posts),
    @required Result loading(),
    @required Result error(),
  }) {
    assert(initial != null);
    assert(loaded != null);
    assert(loading != null);
    assert(error != null);
    return error();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loaded(List<Post> posts),
    Result loading(),
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
    @required Result initial(_PostsStateInitial value),
    @required Result loaded(_PostsStateLoaded value),
    @required Result loading(_PostsStateLoading value),
    @required Result error(_PostsStateError value),
  }) {
    assert(initial != null);
    assert(loaded != null);
    assert(loading != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_PostsStateInitial value),
    Result loaded(_PostsStateLoaded value),
    Result loading(_PostsStateLoading value),
    Result error(_PostsStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _PostsStateError implements PostsState {
  factory _PostsStateError() = _$_PostsStateError;
}
