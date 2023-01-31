// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MovieListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Movie> movies) success,
    required TResult Function() failure,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Movie> movies)? success,
    TResult? Function()? failure,
    TResult? Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Movie> movies)? success,
    TResult Function()? failure,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieListInitial value) initial,
    required TResult Function(MovieListLoading value) loading,
    required TResult Function(MovieListSuccess value) success,
    required TResult Function(MovieListFailure value) failure,
    required TResult Function(MovieListEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MovieListInitial value)? initial,
    TResult? Function(MovieListLoading value)? loading,
    TResult? Function(MovieListSuccess value)? success,
    TResult? Function(MovieListFailure value)? failure,
    TResult? Function(MovieListEmpty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieListInitial value)? initial,
    TResult Function(MovieListLoading value)? loading,
    TResult Function(MovieListSuccess value)? success,
    TResult Function(MovieListFailure value)? failure,
    TResult Function(MovieListEmpty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieListStateCopyWith<$Res> {
  factory $MovieListStateCopyWith(
          MovieListState value, $Res Function(MovieListState) then) =
      _$MovieListStateCopyWithImpl<$Res, MovieListState>;
}

/// @nodoc
class _$MovieListStateCopyWithImpl<$Res, $Val extends MovieListState>
    implements $MovieListStateCopyWith<$Res> {
  _$MovieListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MovieListInitialCopyWith<$Res> {
  factory _$$MovieListInitialCopyWith(
          _$MovieListInitial value, $Res Function(_$MovieListInitial) then) =
      __$$MovieListInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MovieListInitialCopyWithImpl<$Res>
    extends _$MovieListStateCopyWithImpl<$Res, _$MovieListInitial>
    implements _$$MovieListInitialCopyWith<$Res> {
  __$$MovieListInitialCopyWithImpl(
      _$MovieListInitial _value, $Res Function(_$MovieListInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MovieListInitial implements MovieListInitial {
  const _$MovieListInitial();

  @override
  String toString() {
    return 'MovieListState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MovieListInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Movie> movies) success,
    required TResult Function() failure,
    required TResult Function() empty,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Movie> movies)? success,
    TResult? Function()? failure,
    TResult? Function()? empty,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Movie> movies)? success,
    TResult Function()? failure,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieListInitial value) initial,
    required TResult Function(MovieListLoading value) loading,
    required TResult Function(MovieListSuccess value) success,
    required TResult Function(MovieListFailure value) failure,
    required TResult Function(MovieListEmpty value) empty,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MovieListInitial value)? initial,
    TResult? Function(MovieListLoading value)? loading,
    TResult? Function(MovieListSuccess value)? success,
    TResult? Function(MovieListFailure value)? failure,
    TResult? Function(MovieListEmpty value)? empty,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieListInitial value)? initial,
    TResult Function(MovieListLoading value)? loading,
    TResult Function(MovieListSuccess value)? success,
    TResult Function(MovieListFailure value)? failure,
    TResult Function(MovieListEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class MovieListInitial implements MovieListState {
  const factory MovieListInitial() = _$MovieListInitial;
}

/// @nodoc
abstract class _$$MovieListLoadingCopyWith<$Res> {
  factory _$$MovieListLoadingCopyWith(
          _$MovieListLoading value, $Res Function(_$MovieListLoading) then) =
      __$$MovieListLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MovieListLoadingCopyWithImpl<$Res>
    extends _$MovieListStateCopyWithImpl<$Res, _$MovieListLoading>
    implements _$$MovieListLoadingCopyWith<$Res> {
  __$$MovieListLoadingCopyWithImpl(
      _$MovieListLoading _value, $Res Function(_$MovieListLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MovieListLoading implements MovieListLoading {
  const _$MovieListLoading();

  @override
  String toString() {
    return 'MovieListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MovieListLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Movie> movies) success,
    required TResult Function() failure,
    required TResult Function() empty,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Movie> movies)? success,
    TResult? Function()? failure,
    TResult? Function()? empty,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Movie> movies)? success,
    TResult Function()? failure,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieListInitial value) initial,
    required TResult Function(MovieListLoading value) loading,
    required TResult Function(MovieListSuccess value) success,
    required TResult Function(MovieListFailure value) failure,
    required TResult Function(MovieListEmpty value) empty,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MovieListInitial value)? initial,
    TResult? Function(MovieListLoading value)? loading,
    TResult? Function(MovieListSuccess value)? success,
    TResult? Function(MovieListFailure value)? failure,
    TResult? Function(MovieListEmpty value)? empty,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieListInitial value)? initial,
    TResult Function(MovieListLoading value)? loading,
    TResult Function(MovieListSuccess value)? success,
    TResult Function(MovieListFailure value)? failure,
    TResult Function(MovieListEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MovieListLoading implements MovieListState {
  const factory MovieListLoading() = _$MovieListLoading;
}

/// @nodoc
abstract class _$$MovieListSuccessCopyWith<$Res> {
  factory _$$MovieListSuccessCopyWith(
          _$MovieListSuccess value, $Res Function(_$MovieListSuccess) then) =
      __$$MovieListSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Movie> movies});
}

/// @nodoc
class __$$MovieListSuccessCopyWithImpl<$Res>
    extends _$MovieListStateCopyWithImpl<$Res, _$MovieListSuccess>
    implements _$$MovieListSuccessCopyWith<$Res> {
  __$$MovieListSuccessCopyWithImpl(
      _$MovieListSuccess _value, $Res Function(_$MovieListSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movies = null,
  }) {
    return _then(_$MovieListSuccess(
      null == movies
          ? _value._movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
    ));
  }
}

/// @nodoc

class _$MovieListSuccess implements MovieListSuccess {
  const _$MovieListSuccess(final List<Movie> movies) : _movies = movies;

  final List<Movie> _movies;
  @override
  List<Movie> get movies {
    if (_movies is EqualUnmodifiableListView) return _movies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movies);
  }

  @override
  String toString() {
    return 'MovieListState.success(movies: $movies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieListSuccess &&
            const DeepCollectionEquality().equals(other._movies, _movies));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_movies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieListSuccessCopyWith<_$MovieListSuccess> get copyWith =>
      __$$MovieListSuccessCopyWithImpl<_$MovieListSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Movie> movies) success,
    required TResult Function() failure,
    required TResult Function() empty,
  }) {
    return success(movies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Movie> movies)? success,
    TResult? Function()? failure,
    TResult? Function()? empty,
  }) {
    return success?.call(movies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Movie> movies)? success,
    TResult Function()? failure,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(movies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieListInitial value) initial,
    required TResult Function(MovieListLoading value) loading,
    required TResult Function(MovieListSuccess value) success,
    required TResult Function(MovieListFailure value) failure,
    required TResult Function(MovieListEmpty value) empty,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MovieListInitial value)? initial,
    TResult? Function(MovieListLoading value)? loading,
    TResult? Function(MovieListSuccess value)? success,
    TResult? Function(MovieListFailure value)? failure,
    TResult? Function(MovieListEmpty value)? empty,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieListInitial value)? initial,
    TResult Function(MovieListLoading value)? loading,
    TResult Function(MovieListSuccess value)? success,
    TResult Function(MovieListFailure value)? failure,
    TResult Function(MovieListEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class MovieListSuccess implements MovieListState {
  const factory MovieListSuccess(final List<Movie> movies) = _$MovieListSuccess;

  List<Movie> get movies;
  @JsonKey(ignore: true)
  _$$MovieListSuccessCopyWith<_$MovieListSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MovieListFailureCopyWith<$Res> {
  factory _$$MovieListFailureCopyWith(
          _$MovieListFailure value, $Res Function(_$MovieListFailure) then) =
      __$$MovieListFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MovieListFailureCopyWithImpl<$Res>
    extends _$MovieListStateCopyWithImpl<$Res, _$MovieListFailure>
    implements _$$MovieListFailureCopyWith<$Res> {
  __$$MovieListFailureCopyWithImpl(
      _$MovieListFailure _value, $Res Function(_$MovieListFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MovieListFailure implements MovieListFailure {
  const _$MovieListFailure();

  @override
  String toString() {
    return 'MovieListState.failure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MovieListFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Movie> movies) success,
    required TResult Function() failure,
    required TResult Function() empty,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Movie> movies)? success,
    TResult? Function()? failure,
    TResult? Function()? empty,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Movie> movies)? success,
    TResult Function()? failure,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieListInitial value) initial,
    required TResult Function(MovieListLoading value) loading,
    required TResult Function(MovieListSuccess value) success,
    required TResult Function(MovieListFailure value) failure,
    required TResult Function(MovieListEmpty value) empty,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MovieListInitial value)? initial,
    TResult? Function(MovieListLoading value)? loading,
    TResult? Function(MovieListSuccess value)? success,
    TResult? Function(MovieListFailure value)? failure,
    TResult? Function(MovieListEmpty value)? empty,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieListInitial value)? initial,
    TResult Function(MovieListLoading value)? loading,
    TResult Function(MovieListSuccess value)? success,
    TResult Function(MovieListFailure value)? failure,
    TResult Function(MovieListEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class MovieListFailure implements MovieListState {
  const factory MovieListFailure() = _$MovieListFailure;
}

/// @nodoc
abstract class _$$MovieListEmptyCopyWith<$Res> {
  factory _$$MovieListEmptyCopyWith(
          _$MovieListEmpty value, $Res Function(_$MovieListEmpty) then) =
      __$$MovieListEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MovieListEmptyCopyWithImpl<$Res>
    extends _$MovieListStateCopyWithImpl<$Res, _$MovieListEmpty>
    implements _$$MovieListEmptyCopyWith<$Res> {
  __$$MovieListEmptyCopyWithImpl(
      _$MovieListEmpty _value, $Res Function(_$MovieListEmpty) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MovieListEmpty implements MovieListEmpty {
  const _$MovieListEmpty();

  @override
  String toString() {
    return 'MovieListState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MovieListEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Movie> movies) success,
    required TResult Function() failure,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Movie> movies)? success,
    TResult? Function()? failure,
    TResult? Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Movie> movies)? success,
    TResult Function()? failure,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieListInitial value) initial,
    required TResult Function(MovieListLoading value) loading,
    required TResult Function(MovieListSuccess value) success,
    required TResult Function(MovieListFailure value) failure,
    required TResult Function(MovieListEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MovieListInitial value)? initial,
    TResult? Function(MovieListLoading value)? loading,
    TResult? Function(MovieListSuccess value)? success,
    TResult? Function(MovieListFailure value)? failure,
    TResult? Function(MovieListEmpty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieListInitial value)? initial,
    TResult Function(MovieListLoading value)? loading,
    TResult Function(MovieListSuccess value)? success,
    TResult Function(MovieListFailure value)? failure,
    TResult Function(MovieListEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class MovieListEmpty implements MovieListState {
  const factory MovieListEmpty() = _$MovieListEmpty;
}
