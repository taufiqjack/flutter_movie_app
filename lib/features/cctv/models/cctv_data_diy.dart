// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'cctv_data_diy.freezed.dart';
part 'cctv_data_diy.g.dart';

@freezed
class CctvDataDiy with _$CctvDataDiy {
  factory CctvDataDiy({
    List<Data>? data,
  }) = _CctvDataDiy;

  factory CctvDataDiy.fromJson(Map<String, dynamic> json) =>
      _$CctvDataDiyFromJson(json);
}

@freezed
class Data with _$Data {
  factory Data({
    String? type,
    String? id,
    Attributes? attributes,
    Relationships? relationships,
    Links? links,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Attributes with _$Attributes {
  factory Attributes({
    @JsonKey(name: 'application-name') String? applicationName,
    @JsonKey(name: 'alias-name') String? aliasName,
    @JsonKey(name: 'created-at') String? createdAt,
    @JsonKey(name: 'updated-at') String? updatedAt,
  }) = _Attributes;

  factory Attributes.fromJson(Map<String, dynamic> json) =>
      _$AttributesFromJson(json);
}

@freezed
class Relationships with _$Relationships {
  factory Relationships({
    Cctvs? cctvs,
  }) = _Relationships;

  factory Relationships.fromJson(Map<String, dynamic> json) =>
      _$RelationshipsFromJson(json);
}

@freezed
class Links with _$Links {
  factory Links({
    String? self,
    String? related,
  }) = _Links;

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);
}

@freezed
class Cctvs with _$Cctvs {
  factory Cctvs({
    dynamic data,
    Link? links,
  }) = _Cctvs;

  factory Cctvs.fromJson(Map<String, dynamic> json) => _$CctvsFromJson(json);
}

@freezed
class Link with _$Link {
  factory Link({
    String? self,
  }) = _Link;

  factory Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);
}
