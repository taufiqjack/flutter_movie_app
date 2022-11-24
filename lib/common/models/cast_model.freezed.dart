// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cast_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CastModel _$CastModelFromJson(Map<String, dynamic> json) {
  return _CastModel.fromJson(json);
}

/// @nodoc
mixin _$CastModel {
  int? get id => throw _privateConstructorUsedError;
  List<Cast>? get cast => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CastModelCopyWith<CastModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CastModelCopyWith<$Res> {
  factory $CastModelCopyWith(CastModel value, $Res Function(CastModel) then) =
      _$CastModelCopyWithImpl<$Res, CastModel>;
  @useResult
  $Res call({int? id, List<Cast>? cast});
}

/// @nodoc
class _$CastModelCopyWithImpl<$Res, $Val extends CastModel>
    implements $CastModelCopyWith<$Res> {
  _$CastModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? cast = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      cast: freezed == cast
          ? _value.cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<Cast>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CastModelCopyWith<$Res> implements $CastModelCopyWith<$Res> {
  factory _$$_CastModelCopyWith(
          _$_CastModel value, $Res Function(_$_CastModel) then) =
      __$$_CastModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, List<Cast>? cast});
}

/// @nodoc
class __$$_CastModelCopyWithImpl<$Res>
    extends _$CastModelCopyWithImpl<$Res, _$_CastModel>
    implements _$$_CastModelCopyWith<$Res> {
  __$$_CastModelCopyWithImpl(
      _$_CastModel _value, $Res Function(_$_CastModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? cast = freezed,
  }) {
    return _then(_$_CastModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      cast: freezed == cast
          ? _value._cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<Cast>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CastModel implements _CastModel {
  const _$_CastModel({this.id, final List<Cast>? cast}) : _cast = cast;

  factory _$_CastModel.fromJson(Map<String, dynamic> json) =>
      _$$_CastModelFromJson(json);

  @override
  final int? id;
  final List<Cast>? _cast;
  @override
  List<Cast>? get cast {
    final value = _cast;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CastModel(id: $id, cast: $cast)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CastModel &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._cast, _cast));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, const DeepCollectionEquality().hash(_cast));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CastModelCopyWith<_$_CastModel> get copyWith =>
      __$$_CastModelCopyWithImpl<_$_CastModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CastModelToJson(
      this,
    );
  }
}

abstract class _CastModel implements CastModel {
  const factory _CastModel({final int? id, final List<Cast>? cast}) =
      _$_CastModel;

  factory _CastModel.fromJson(Map<String, dynamic> json) =
      _$_CastModel.fromJson;

  @override
  int? get id;
  @override
  List<Cast>? get cast;
  @override
  @JsonKey(ignore: true)
  _$$_CastModelCopyWith<_$_CastModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Cast _$CastFromJson(Map<String, dynamic> json) {
  return _Cast.fromJson(json);
}

/// @nodoc
mixin _$Cast {
  bool? get adult => throw _privateConstructorUsedError;
  int? get gender => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'known_for_department')
  String? get knownForDepartment => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_name')
  String? get originalName => throw _privateConstructorUsedError;
  double? get popularity => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_path')
  String? get profilePath => throw _privateConstructorUsedError;
  @JsonKey(name: 'cast_id')
  int? get castId => throw _privateConstructorUsedError;
  String? get character => throw _privateConstructorUsedError;
  @JsonKey(name: 'credit_id')
  String? get creditId => throw _privateConstructorUsedError;
  int? get order => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CastCopyWith<Cast> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CastCopyWith<$Res> {
  factory $CastCopyWith(Cast value, $Res Function(Cast) then) =
      _$CastCopyWithImpl<$Res, Cast>;
  @useResult
  $Res call(
      {bool? adult,
      int? gender,
      int? id,
      @JsonKey(name: 'known_for_department') String? knownForDepartment,
      String? name,
      @JsonKey(name: 'original_name') String? originalName,
      double? popularity,
      @JsonKey(name: 'profile_path') String? profilePath,
      @JsonKey(name: 'cast_id') int? castId,
      String? character,
      @JsonKey(name: 'credit_id') String? creditId,
      int? order});
}

/// @nodoc
class _$CastCopyWithImpl<$Res, $Val extends Cast>
    implements $CastCopyWith<$Res> {
  _$CastCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = freezed,
    Object? gender = freezed,
    Object? id = freezed,
    Object? knownForDepartment = freezed,
    Object? name = freezed,
    Object? originalName = freezed,
    Object? popularity = freezed,
    Object? profilePath = freezed,
    Object? castId = freezed,
    Object? character = freezed,
    Object? creditId = freezed,
    Object? order = freezed,
  }) {
    return _then(_value.copyWith(
      adult: freezed == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      knownForDepartment: freezed == knownForDepartment
          ? _value.knownForDepartment
          : knownForDepartment // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      originalName: freezed == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      profilePath: freezed == profilePath
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String?,
      castId: freezed == castId
          ? _value.castId
          : castId // ignore: cast_nullable_to_non_nullable
              as int?,
      character: freezed == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as String?,
      creditId: freezed == creditId
          ? _value.creditId
          : creditId // ignore: cast_nullable_to_non_nullable
              as String?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CastCopyWith<$Res> implements $CastCopyWith<$Res> {
  factory _$$_CastCopyWith(_$_Cast value, $Res Function(_$_Cast) then) =
      __$$_CastCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? adult,
      int? gender,
      int? id,
      @JsonKey(name: 'known_for_department') String? knownForDepartment,
      String? name,
      @JsonKey(name: 'original_name') String? originalName,
      double? popularity,
      @JsonKey(name: 'profile_path') String? profilePath,
      @JsonKey(name: 'cast_id') int? castId,
      String? character,
      @JsonKey(name: 'credit_id') String? creditId,
      int? order});
}

/// @nodoc
class __$$_CastCopyWithImpl<$Res> extends _$CastCopyWithImpl<$Res, _$_Cast>
    implements _$$_CastCopyWith<$Res> {
  __$$_CastCopyWithImpl(_$_Cast _value, $Res Function(_$_Cast) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = freezed,
    Object? gender = freezed,
    Object? id = freezed,
    Object? knownForDepartment = freezed,
    Object? name = freezed,
    Object? originalName = freezed,
    Object? popularity = freezed,
    Object? profilePath = freezed,
    Object? castId = freezed,
    Object? character = freezed,
    Object? creditId = freezed,
    Object? order = freezed,
  }) {
    return _then(_$_Cast(
      adult: freezed == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      knownForDepartment: freezed == knownForDepartment
          ? _value.knownForDepartment
          : knownForDepartment // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      originalName: freezed == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      profilePath: freezed == profilePath
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String?,
      castId: freezed == castId
          ? _value.castId
          : castId // ignore: cast_nullable_to_non_nullable
              as int?,
      character: freezed == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as String?,
      creditId: freezed == creditId
          ? _value.creditId
          : creditId // ignore: cast_nullable_to_non_nullable
              as String?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Cast implements _Cast {
  const _$_Cast(
      {this.adult,
      this.gender,
      this.id,
      @JsonKey(name: 'known_for_department') this.knownForDepartment,
      this.name,
      @JsonKey(name: 'original_name') this.originalName,
      this.popularity,
      @JsonKey(name: 'profile_path') this.profilePath,
      @JsonKey(name: 'cast_id') this.castId,
      this.character,
      @JsonKey(name: 'credit_id') this.creditId,
      this.order});

  factory _$_Cast.fromJson(Map<String, dynamic> json) => _$$_CastFromJson(json);

  @override
  final bool? adult;
  @override
  final int? gender;
  @override
  final int? id;
  @override
  @JsonKey(name: 'known_for_department')
  final String? knownForDepartment;
  @override
  final String? name;
  @override
  @JsonKey(name: 'original_name')
  final String? originalName;
  @override
  final double? popularity;
  @override
  @JsonKey(name: 'profile_path')
  final String? profilePath;
  @override
  @JsonKey(name: 'cast_id')
  final int? castId;
  @override
  final String? character;
  @override
  @JsonKey(name: 'credit_id')
  final String? creditId;
  @override
  final int? order;

  @override
  String toString() {
    return 'Cast(adult: $adult, gender: $gender, id: $id, knownForDepartment: $knownForDepartment, name: $name, originalName: $originalName, popularity: $popularity, profilePath: $profilePath, castId: $castId, character: $character, creditId: $creditId, order: $order)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Cast &&
            (identical(other.adult, adult) || other.adult == adult) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.knownForDepartment, knownForDepartment) ||
                other.knownForDepartment == knownForDepartment) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.originalName, originalName) ||
                other.originalName == originalName) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.profilePath, profilePath) ||
                other.profilePath == profilePath) &&
            (identical(other.castId, castId) || other.castId == castId) &&
            (identical(other.character, character) ||
                other.character == character) &&
            (identical(other.creditId, creditId) ||
                other.creditId == creditId) &&
            (identical(other.order, order) || other.order == order));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      adult,
      gender,
      id,
      knownForDepartment,
      name,
      originalName,
      popularity,
      profilePath,
      castId,
      character,
      creditId,
      order);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CastCopyWith<_$_Cast> get copyWith =>
      __$$_CastCopyWithImpl<_$_Cast>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CastToJson(
      this,
    );
  }
}

abstract class _Cast implements Cast {
  const factory _Cast(
      {final bool? adult,
      final int? gender,
      final int? id,
      @JsonKey(name: 'known_for_department') final String? knownForDepartment,
      final String? name,
      @JsonKey(name: 'original_name') final String? originalName,
      final double? popularity,
      @JsonKey(name: 'profile_path') final String? profilePath,
      @JsonKey(name: 'cast_id') final int? castId,
      final String? character,
      @JsonKey(name: 'credit_id') final String? creditId,
      final int? order}) = _$_Cast;

  factory _Cast.fromJson(Map<String, dynamic> json) = _$_Cast.fromJson;

  @override
  bool? get adult;
  @override
  int? get gender;
  @override
  int? get id;
  @override
  @JsonKey(name: 'known_for_department')
  String? get knownForDepartment;
  @override
  String? get name;
  @override
  @JsonKey(name: 'original_name')
  String? get originalName;
  @override
  double? get popularity;
  @override
  @JsonKey(name: 'profile_path')
  String? get profilePath;
  @override
  @JsonKey(name: 'cast_id')
  int? get castId;
  @override
  String? get character;
  @override
  @JsonKey(name: 'credit_id')
  String? get creditId;
  @override
  int? get order;
  @override
  @JsonKey(ignore: true)
  _$$_CastCopyWith<_$_Cast> get copyWith => throw _privateConstructorUsedError;
}
