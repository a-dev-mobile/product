// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passport_code_name_m.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PassportCodeName _$$_PassportCodeNameFromJson(Map<String, dynamic> json) =>
    _$_PassportCodeName(
      (json['suggestions'] as List<dynamic>)
          .map((e) =>
              PassportCodeNameSuggestions.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PassportCodeNameToJson(_$_PassportCodeName instance) =>
    <String, dynamic>{
      'suggestions': instance.suggestions.map((e) => e.toJson()).toList(),
    };

_$_PassportCodeNameSuggestions _$$_PassportCodeNameSuggestionsFromJson(
        Map<String, dynamic> json) =>
    _$_PassportCodeNameSuggestions(
      value: json['value'] as String? ?? '',
      unrestricted_value: json['unrestricted_value'] as String? ?? '',
      data: json['data'] == null
          ? const PassportCodeNameData()
          : PassportCodeNameData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PassportCodeNameSuggestionsToJson(
        _$_PassportCodeNameSuggestions instance) =>
    <String, dynamic>{
      'value': instance.value,
      'unrestricted_value': instance.unrestricted_value,
      'data': instance.data.toJson(),
    };

_$_PassportCodeNameData _$$_PassportCodeNameDataFromJson(
        Map<String, dynamic> json) =>
    _$_PassportCodeNameData(
      code: json['code'] as String? ?? '',
      name: json['name'] as String? ?? '',
      region_code: json['region_code'] as String? ?? '',
      type: json['type'] as String? ?? '',
    );

Map<String, dynamic> _$$_PassportCodeNameDataToJson(
        _$_PassportCodeNameData instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'region_code': instance.region_code,
      'type': instance.type,
    };
