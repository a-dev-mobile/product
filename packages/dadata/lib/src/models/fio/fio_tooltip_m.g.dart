// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fio_tooltip_m.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FioTooltip _$$_FioTooltipFromJson(Map<String, dynamic> json) =>
    _$_FioTooltip(
      (json['suggestions'] as List<dynamic>)
          .map((e) => SuggestionsFio.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_FioTooltipToJson(_$_FioTooltip instance) =>
    <String, dynamic>{
      'suggestions': instance.suggestions.map((e) => e.toJson()).toList(),
    };

_$_Suggestions _$$_SuggestionsFromJson(Map<String, dynamic> json) =>
    _$_Suggestions(
      json['value'] as String,
      json['unrestricted_value'] as String,
      DataFio.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SuggestionsToJson(_$_Suggestions instance) =>
    <String, dynamic>{
      'value': instance.value,
      'unrestricted_value': instance.unrestricted_value,
      'data': instance.data.toJson(),
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      json['surname'] as String?,
      json['name'] as String?,
      json['patronymic'] as String?,
      json['gender'] as String?,
      json['source'] as String?,
      json['qc'] as String?,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('surname', instance.surname);
  writeNotNull('name', instance.name);
  writeNotNull('patronymic', instance.patronymic);
  writeNotNull('gender', instance.gender);
  writeNotNull('source', instance.source);
  writeNotNull('qc', instance.qc);
  return val;
}
