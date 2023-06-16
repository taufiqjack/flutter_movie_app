// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cctv_data_diy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CctvDataDiy _$$_CctvDataDiyFromJson(Map<String, dynamic> json) =>
    _$_CctvDataDiy(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CctvDataDiyToJson(_$_CctvDataDiy instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      type: json['type'] as String?,
      id: json['id'] as String?,
      attributes: json['attributes'] == null
          ? null
          : Attributes.fromJson(json['attributes'] as Map<String, dynamic>),
      relationships: json['relationships'] == null
          ? null
          : Relationships.fromJson(
              json['relationships'] as Map<String, dynamic>),
      links: json['links'] == null
          ? null
          : Links.fromJson(json['links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
      'attributes': instance.attributes,
      'relationships': instance.relationships,
      'links': instance.links,
    };

_$_Attributes _$$_AttributesFromJson(Map<String, dynamic> json) =>
    _$_Attributes(
      applicationName: json['application-name'] as String?,
      aliasName: json['alias-name'] as String?,
      createdAt: json['created-at'] as String?,
      updatedAt: json['updated-at'] as String?,
    );

Map<String, dynamic> _$$_AttributesToJson(_$_Attributes instance) =>
    <String, dynamic>{
      'application-name': instance.applicationName,
      'alias-name': instance.aliasName,
      'created-at': instance.createdAt,
      'updated-at': instance.updatedAt,
    };

_$_Relationships _$$_RelationshipsFromJson(Map<String, dynamic> json) =>
    _$_Relationships(
      cctvs: json['cctvs'] == null
          ? null
          : Cctvs.fromJson(json['cctvs'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RelationshipsToJson(_$_Relationships instance) =>
    <String, dynamic>{
      'cctvs': instance.cctvs,
    };

_$_Links _$$_LinksFromJson(Map<String, dynamic> json) => _$_Links(
      self: json['self'] as String?,
      related: json['related'] as String?,
    );

Map<String, dynamic> _$$_LinksToJson(_$_Links instance) => <String, dynamic>{
      'self': instance.self,
      'related': instance.related,
    };

_$_Cctvs _$$_CctvsFromJson(Map<String, dynamic> json) => _$_Cctvs(
      data: json['data'],
      links: json['links'] == null
          ? null
          : Link.fromJson(json['links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CctvsToJson(_$_Cctvs instance) => <String, dynamic>{
      'data': instance.data,
      'links': instance.links,
    };

_$_Link _$$_LinkFromJson(Map<String, dynamic> json) => _$_Link(
      self: json['self'] as String?,
    );

Map<String, dynamic> _$$_LinkToJson(_$_Link instance) => <String, dynamic>{
      'self': instance.self,
    };
