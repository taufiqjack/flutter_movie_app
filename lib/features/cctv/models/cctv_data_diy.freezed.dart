// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cctv_data_diy.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CctvDataDiy _$CctvDataDiyFromJson(Map<String, dynamic> json) {
  return _CctvDataDiy.fromJson(json);
}

/// @nodoc
mixin _$CctvDataDiy {
  List<Data>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CctvDataDiyCopyWith<CctvDataDiy> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CctvDataDiyCopyWith<$Res> {
  factory $CctvDataDiyCopyWith(
          CctvDataDiy value, $Res Function(CctvDataDiy) then) =
      _$CctvDataDiyCopyWithImpl<$Res, CctvDataDiy>;
  @useResult
  $Res call({List<Data>? data});
}

/// @nodoc
class _$CctvDataDiyCopyWithImpl<$Res, $Val extends CctvDataDiy>
    implements $CctvDataDiyCopyWith<$Res> {
  _$CctvDataDiyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CctvDataDiyCopyWith<$Res>
    implements $CctvDataDiyCopyWith<$Res> {
  factory _$$_CctvDataDiyCopyWith(
          _$_CctvDataDiy value, $Res Function(_$_CctvDataDiy) then) =
      __$$_CctvDataDiyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Data>? data});
}

/// @nodoc
class __$$_CctvDataDiyCopyWithImpl<$Res>
    extends _$CctvDataDiyCopyWithImpl<$Res, _$_CctvDataDiy>
    implements _$$_CctvDataDiyCopyWith<$Res> {
  __$$_CctvDataDiyCopyWithImpl(
      _$_CctvDataDiy _value, $Res Function(_$_CctvDataDiy) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_CctvDataDiy(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CctvDataDiy implements _CctvDataDiy {
  _$_CctvDataDiy({final List<Data>? data}) : _data = data;

  factory _$_CctvDataDiy.fromJson(Map<String, dynamic> json) =>
      _$$_CctvDataDiyFromJson(json);

  final List<Data>? _data;
  @override
  List<Data>? get data {
    final value = _data;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CctvDataDiy(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CctvDataDiy &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CctvDataDiyCopyWith<_$_CctvDataDiy> get copyWith =>
      __$$_CctvDataDiyCopyWithImpl<_$_CctvDataDiy>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CctvDataDiyToJson(
      this,
    );
  }
}

abstract class _CctvDataDiy implements CctvDataDiy {
  factory _CctvDataDiy({final List<Data>? data}) = _$_CctvDataDiy;

  factory _CctvDataDiy.fromJson(Map<String, dynamic> json) =
      _$_CctvDataDiy.fromJson;

  @override
  List<Data>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_CctvDataDiyCopyWith<_$_CctvDataDiy> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  String? get type => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  Attributes? get attributes => throw _privateConstructorUsedError;
  Relationships? get relationships => throw _privateConstructorUsedError;
  Links? get links => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {String? type,
      String? id,
      Attributes? attributes,
      Relationships? relationships,
      Links? links});

  $AttributesCopyWith<$Res>? get attributes;
  $RelationshipsCopyWith<$Res>? get relationships;
  $LinksCopyWith<$Res>? get links;
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? id = freezed,
    Object? attributes = freezed,
    Object? relationships = freezed,
    Object? links = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: freezed == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Attributes?,
      relationships: freezed == relationships
          ? _value.relationships
          : relationships // ignore: cast_nullable_to_non_nullable
              as Relationships?,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AttributesCopyWith<$Res>? get attributes {
    if (_value.attributes == null) {
      return null;
    }

    return $AttributesCopyWith<$Res>(_value.attributes!, (value) {
      return _then(_value.copyWith(attributes: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RelationshipsCopyWith<$Res>? get relationships {
    if (_value.relationships == null) {
      return null;
    }

    return $RelationshipsCopyWith<$Res>(_value.relationships!, (value) {
      return _then(_value.copyWith(relationships: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LinksCopyWith<$Res>? get links {
    if (_value.links == null) {
      return null;
    }

    return $LinksCopyWith<$Res>(_value.links!, (value) {
      return _then(_value.copyWith(links: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$_DataCopyWith(_$_Data value, $Res Function(_$_Data) then) =
      __$$_DataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? type,
      String? id,
      Attributes? attributes,
      Relationships? relationships,
      Links? links});

  @override
  $AttributesCopyWith<$Res>? get attributes;
  @override
  $RelationshipsCopyWith<$Res>? get relationships;
  @override
  $LinksCopyWith<$Res>? get links;
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res, _$_Data>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? id = freezed,
    Object? attributes = freezed,
    Object? relationships = freezed,
    Object? links = freezed,
  }) {
    return _then(_$_Data(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: freezed == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Attributes?,
      relationships: freezed == relationships
          ? _value.relationships
          : relationships // ignore: cast_nullable_to_non_nullable
              as Relationships?,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  _$_Data(
      {this.type, this.id, this.attributes, this.relationships, this.links});

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  final String? type;
  @override
  final String? id;
  @override
  final Attributes? attributes;
  @override
  final Relationships? relationships;
  @override
  final Links? links;

  @override
  String toString() {
    return 'Data(type: $type, id: $id, attributes: $attributes, relationships: $relationships, links: $links)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.attributes, attributes) ||
                other.attributes == attributes) &&
            (identical(other.relationships, relationships) ||
                other.relationships == relationships) &&
            (identical(other.links, links) || other.links == links));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, type, id, attributes, relationships, links);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataCopyWith<_$_Data> get copyWith =>
      __$$_DataCopyWithImpl<_$_Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  factory _Data(
      {final String? type,
      final String? id,
      final Attributes? attributes,
      final Relationships? relationships,
      final Links? links}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  String? get type;
  @override
  String? get id;
  @override
  Attributes? get attributes;
  @override
  Relationships? get relationships;
  @override
  Links? get links;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}

Attributes _$AttributesFromJson(Map<String, dynamic> json) {
  return _Attributes.fromJson(json);
}

/// @nodoc
mixin _$Attributes {
  @JsonKey(name: 'application-name')
  String? get applicationName => throw _privateConstructorUsedError;
  @JsonKey(name: 'alias-name')
  String? get aliasName => throw _privateConstructorUsedError;
  @JsonKey(name: 'created-at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated-at')
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttributesCopyWith<Attributes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttributesCopyWith<$Res> {
  factory $AttributesCopyWith(
          Attributes value, $Res Function(Attributes) then) =
      _$AttributesCopyWithImpl<$Res, Attributes>;
  @useResult
  $Res call(
      {@JsonKey(name: 'application-name') String? applicationName,
      @JsonKey(name: 'alias-name') String? aliasName,
      @JsonKey(name: 'created-at') String? createdAt,
      @JsonKey(name: 'updated-at') String? updatedAt});
}

/// @nodoc
class _$AttributesCopyWithImpl<$Res, $Val extends Attributes>
    implements $AttributesCopyWith<$Res> {
  _$AttributesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? applicationName = freezed,
    Object? aliasName = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      applicationName: freezed == applicationName
          ? _value.applicationName
          : applicationName // ignore: cast_nullable_to_non_nullable
              as String?,
      aliasName: freezed == aliasName
          ? _value.aliasName
          : aliasName // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AttributesCopyWith<$Res>
    implements $AttributesCopyWith<$Res> {
  factory _$$_AttributesCopyWith(
          _$_Attributes value, $Res Function(_$_Attributes) then) =
      __$$_AttributesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'application-name') String? applicationName,
      @JsonKey(name: 'alias-name') String? aliasName,
      @JsonKey(name: 'created-at') String? createdAt,
      @JsonKey(name: 'updated-at') String? updatedAt});
}

/// @nodoc
class __$$_AttributesCopyWithImpl<$Res>
    extends _$AttributesCopyWithImpl<$Res, _$_Attributes>
    implements _$$_AttributesCopyWith<$Res> {
  __$$_AttributesCopyWithImpl(
      _$_Attributes _value, $Res Function(_$_Attributes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? applicationName = freezed,
    Object? aliasName = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_Attributes(
      applicationName: freezed == applicationName
          ? _value.applicationName
          : applicationName // ignore: cast_nullable_to_non_nullable
              as String?,
      aliasName: freezed == aliasName
          ? _value.aliasName
          : aliasName // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Attributes implements _Attributes {
  _$_Attributes(
      {@JsonKey(name: 'application-name') this.applicationName,
      @JsonKey(name: 'alias-name') this.aliasName,
      @JsonKey(name: 'created-at') this.createdAt,
      @JsonKey(name: 'updated-at') this.updatedAt});

  factory _$_Attributes.fromJson(Map<String, dynamic> json) =>
      _$$_AttributesFromJson(json);

  @override
  @JsonKey(name: 'application-name')
  final String? applicationName;
  @override
  @JsonKey(name: 'alias-name')
  final String? aliasName;
  @override
  @JsonKey(name: 'created-at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated-at')
  final String? updatedAt;

  @override
  String toString() {
    return 'Attributes(applicationName: $applicationName, aliasName: $aliasName, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Attributes &&
            (identical(other.applicationName, applicationName) ||
                other.applicationName == applicationName) &&
            (identical(other.aliasName, aliasName) ||
                other.aliasName == aliasName) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, applicationName, aliasName, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AttributesCopyWith<_$_Attributes> get copyWith =>
      __$$_AttributesCopyWithImpl<_$_Attributes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttributesToJson(
      this,
    );
  }
}

abstract class _Attributes implements Attributes {
  factory _Attributes(
      {@JsonKey(name: 'application-name') final String? applicationName,
      @JsonKey(name: 'alias-name') final String? aliasName,
      @JsonKey(name: 'created-at') final String? createdAt,
      @JsonKey(name: 'updated-at') final String? updatedAt}) = _$_Attributes;

  factory _Attributes.fromJson(Map<String, dynamic> json) =
      _$_Attributes.fromJson;

  @override
  @JsonKey(name: 'application-name')
  String? get applicationName;
  @override
  @JsonKey(name: 'alias-name')
  String? get aliasName;
  @override
  @JsonKey(name: 'created-at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated-at')
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_AttributesCopyWith<_$_Attributes> get copyWith =>
      throw _privateConstructorUsedError;
}

Relationships _$RelationshipsFromJson(Map<String, dynamic> json) {
  return _Relationships.fromJson(json);
}

/// @nodoc
mixin _$Relationships {
  Cctvs? get cctvs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RelationshipsCopyWith<Relationships> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RelationshipsCopyWith<$Res> {
  factory $RelationshipsCopyWith(
          Relationships value, $Res Function(Relationships) then) =
      _$RelationshipsCopyWithImpl<$Res, Relationships>;
  @useResult
  $Res call({Cctvs? cctvs});

  $CctvsCopyWith<$Res>? get cctvs;
}

/// @nodoc
class _$RelationshipsCopyWithImpl<$Res, $Val extends Relationships>
    implements $RelationshipsCopyWith<$Res> {
  _$RelationshipsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cctvs = freezed,
  }) {
    return _then(_value.copyWith(
      cctvs: freezed == cctvs
          ? _value.cctvs
          : cctvs // ignore: cast_nullable_to_non_nullable
              as Cctvs?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CctvsCopyWith<$Res>? get cctvs {
    if (_value.cctvs == null) {
      return null;
    }

    return $CctvsCopyWith<$Res>(_value.cctvs!, (value) {
      return _then(_value.copyWith(cctvs: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RelationshipsCopyWith<$Res>
    implements $RelationshipsCopyWith<$Res> {
  factory _$$_RelationshipsCopyWith(
          _$_Relationships value, $Res Function(_$_Relationships) then) =
      __$$_RelationshipsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Cctvs? cctvs});

  @override
  $CctvsCopyWith<$Res>? get cctvs;
}

/// @nodoc
class __$$_RelationshipsCopyWithImpl<$Res>
    extends _$RelationshipsCopyWithImpl<$Res, _$_Relationships>
    implements _$$_RelationshipsCopyWith<$Res> {
  __$$_RelationshipsCopyWithImpl(
      _$_Relationships _value, $Res Function(_$_Relationships) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cctvs = freezed,
  }) {
    return _then(_$_Relationships(
      cctvs: freezed == cctvs
          ? _value.cctvs
          : cctvs // ignore: cast_nullable_to_non_nullable
              as Cctvs?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Relationships implements _Relationships {
  _$_Relationships({this.cctvs});

  factory _$_Relationships.fromJson(Map<String, dynamic> json) =>
      _$$_RelationshipsFromJson(json);

  @override
  final Cctvs? cctvs;

  @override
  String toString() {
    return 'Relationships(cctvs: $cctvs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Relationships &&
            (identical(other.cctvs, cctvs) || other.cctvs == cctvs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cctvs);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RelationshipsCopyWith<_$_Relationships> get copyWith =>
      __$$_RelationshipsCopyWithImpl<_$_Relationships>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RelationshipsToJson(
      this,
    );
  }
}

abstract class _Relationships implements Relationships {
  factory _Relationships({final Cctvs? cctvs}) = _$_Relationships;

  factory _Relationships.fromJson(Map<String, dynamic> json) =
      _$_Relationships.fromJson;

  @override
  Cctvs? get cctvs;
  @override
  @JsonKey(ignore: true)
  _$$_RelationshipsCopyWith<_$_Relationships> get copyWith =>
      throw _privateConstructorUsedError;
}

Links _$LinksFromJson(Map<String, dynamic> json) {
  return _Links.fromJson(json);
}

/// @nodoc
mixin _$Links {
  String? get self => throw _privateConstructorUsedError;
  String? get related => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinksCopyWith<Links> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinksCopyWith<$Res> {
  factory $LinksCopyWith(Links value, $Res Function(Links) then) =
      _$LinksCopyWithImpl<$Res, Links>;
  @useResult
  $Res call({String? self, String? related});
}

/// @nodoc
class _$LinksCopyWithImpl<$Res, $Val extends Links>
    implements $LinksCopyWith<$Res> {
  _$LinksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? self = freezed,
    Object? related = freezed,
  }) {
    return _then(_value.copyWith(
      self: freezed == self
          ? _value.self
          : self // ignore: cast_nullable_to_non_nullable
              as String?,
      related: freezed == related
          ? _value.related
          : related // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LinksCopyWith<$Res> implements $LinksCopyWith<$Res> {
  factory _$$_LinksCopyWith(_$_Links value, $Res Function(_$_Links) then) =
      __$$_LinksCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? self, String? related});
}

/// @nodoc
class __$$_LinksCopyWithImpl<$Res> extends _$LinksCopyWithImpl<$Res, _$_Links>
    implements _$$_LinksCopyWith<$Res> {
  __$$_LinksCopyWithImpl(_$_Links _value, $Res Function(_$_Links) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? self = freezed,
    Object? related = freezed,
  }) {
    return _then(_$_Links(
      self: freezed == self
          ? _value.self
          : self // ignore: cast_nullable_to_non_nullable
              as String?,
      related: freezed == related
          ? _value.related
          : related // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Links implements _Links {
  _$_Links({this.self, this.related});

  factory _$_Links.fromJson(Map<String, dynamic> json) =>
      _$$_LinksFromJson(json);

  @override
  final String? self;
  @override
  final String? related;

  @override
  String toString() {
    return 'Links(self: $self, related: $related)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Links &&
            (identical(other.self, self) || other.self == self) &&
            (identical(other.related, related) || other.related == related));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, self, related);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LinksCopyWith<_$_Links> get copyWith =>
      __$$_LinksCopyWithImpl<_$_Links>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LinksToJson(
      this,
    );
  }
}

abstract class _Links implements Links {
  factory _Links({final String? self, final String? related}) = _$_Links;

  factory _Links.fromJson(Map<String, dynamic> json) = _$_Links.fromJson;

  @override
  String? get self;
  @override
  String? get related;
  @override
  @JsonKey(ignore: true)
  _$$_LinksCopyWith<_$_Links> get copyWith =>
      throw _privateConstructorUsedError;
}

Cctvs _$CctvsFromJson(Map<String, dynamic> json) {
  return _Cctvs.fromJson(json);
}

/// @nodoc
mixin _$Cctvs {
  dynamic get data => throw _privateConstructorUsedError;
  Link? get links => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CctvsCopyWith<Cctvs> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CctvsCopyWith<$Res> {
  factory $CctvsCopyWith(Cctvs value, $Res Function(Cctvs) then) =
      _$CctvsCopyWithImpl<$Res, Cctvs>;
  @useResult
  $Res call({dynamic data, Link? links});

  $LinkCopyWith<$Res>? get links;
}

/// @nodoc
class _$CctvsCopyWithImpl<$Res, $Val extends Cctvs>
    implements $CctvsCopyWith<$Res> {
  _$CctvsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? links = freezed,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Link?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LinkCopyWith<$Res>? get links {
    if (_value.links == null) {
      return null;
    }

    return $LinkCopyWith<$Res>(_value.links!, (value) {
      return _then(_value.copyWith(links: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CctvsCopyWith<$Res> implements $CctvsCopyWith<$Res> {
  factory _$$_CctvsCopyWith(_$_Cctvs value, $Res Function(_$_Cctvs) then) =
      __$$_CctvsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic data, Link? links});

  @override
  $LinkCopyWith<$Res>? get links;
}

/// @nodoc
class __$$_CctvsCopyWithImpl<$Res> extends _$CctvsCopyWithImpl<$Res, _$_Cctvs>
    implements _$$_CctvsCopyWith<$Res> {
  __$$_CctvsCopyWithImpl(_$_Cctvs _value, $Res Function(_$_Cctvs) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? links = freezed,
  }) {
    return _then(_$_Cctvs(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Link?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Cctvs implements _Cctvs {
  _$_Cctvs({this.data, this.links});

  factory _$_Cctvs.fromJson(Map<String, dynamic> json) =>
      _$$_CctvsFromJson(json);

  @override
  final dynamic data;
  @override
  final Link? links;

  @override
  String toString() {
    return 'Cctvs(data: $data, links: $links)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Cctvs &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.links, links) || other.links == links));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(data), links);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CctvsCopyWith<_$_Cctvs> get copyWith =>
      __$$_CctvsCopyWithImpl<_$_Cctvs>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CctvsToJson(
      this,
    );
  }
}

abstract class _Cctvs implements Cctvs {
  factory _Cctvs({final dynamic data, final Link? links}) = _$_Cctvs;

  factory _Cctvs.fromJson(Map<String, dynamic> json) = _$_Cctvs.fromJson;

  @override
  dynamic get data;
  @override
  Link? get links;
  @override
  @JsonKey(ignore: true)
  _$$_CctvsCopyWith<_$_Cctvs> get copyWith =>
      throw _privateConstructorUsedError;
}

Link _$LinkFromJson(Map<String, dynamic> json) {
  return _Link.fromJson(json);
}

/// @nodoc
mixin _$Link {
  String? get self => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinkCopyWith<Link> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkCopyWith<$Res> {
  factory $LinkCopyWith(Link value, $Res Function(Link) then) =
      _$LinkCopyWithImpl<$Res, Link>;
  @useResult
  $Res call({String? self});
}

/// @nodoc
class _$LinkCopyWithImpl<$Res, $Val extends Link>
    implements $LinkCopyWith<$Res> {
  _$LinkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? self = freezed,
  }) {
    return _then(_value.copyWith(
      self: freezed == self
          ? _value.self
          : self // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LinkCopyWith<$Res> implements $LinkCopyWith<$Res> {
  factory _$$_LinkCopyWith(_$_Link value, $Res Function(_$_Link) then) =
      __$$_LinkCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? self});
}

/// @nodoc
class __$$_LinkCopyWithImpl<$Res> extends _$LinkCopyWithImpl<$Res, _$_Link>
    implements _$$_LinkCopyWith<$Res> {
  __$$_LinkCopyWithImpl(_$_Link _value, $Res Function(_$_Link) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? self = freezed,
  }) {
    return _then(_$_Link(
      self: freezed == self
          ? _value.self
          : self // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Link implements _Link {
  _$_Link({this.self});

  factory _$_Link.fromJson(Map<String, dynamic> json) => _$$_LinkFromJson(json);

  @override
  final String? self;

  @override
  String toString() {
    return 'Link(self: $self)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Link &&
            (identical(other.self, self) || other.self == self));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, self);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LinkCopyWith<_$_Link> get copyWith =>
      __$$_LinkCopyWithImpl<_$_Link>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LinkToJson(
      this,
    );
  }
}

abstract class _Link implements Link {
  factory _Link({final String? self}) = _$_Link;

  factory _Link.fromJson(Map<String, dynamic> json) = _$_Link.fromJson;

  @override
  String? get self;
  @override
  @JsonKey(ignore: true)
  _$$_LinkCopyWith<_$_Link> get copyWith => throw _privateConstructorUsedError;
}
