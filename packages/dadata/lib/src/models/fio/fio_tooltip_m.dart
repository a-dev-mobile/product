// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'fio_tooltip_m.freezed.dart';
part 'fio_tooltip_m.g.dart';

@freezed
class FioTooltip with _$FioTooltip {
  factory FioTooltip(List<SuggestionsFio> suggestions) = _FioTooltip;

  factory FioTooltip.fromJson(Map<String, dynamic> json) =>
      _$FioTooltipFromJson(json);
}

@freezed
class SuggestionsFio with _$SuggestionsFio {
  factory SuggestionsFio(
    String value,
    String unrestricted_value,
    DataFio data,
  ) = _Suggestions;

  factory SuggestionsFio.fromJson(Map<String, dynamic> json) =>
      _$SuggestionsFioFromJson(json);
}

@freezed
class DataFio with _$DataFio {
  factory DataFio(
    String? surname,
    String? name,
    String? patronymic,
    String? gender,
    String? source,
    String? qc,
  ) = _Data;

  factory DataFio.fromJson(Map<String, dynamic> json) =>
      _$DataFioFromJson(json);
}
