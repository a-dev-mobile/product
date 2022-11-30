// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'passport_code_name_m.freezed.dart';
part 'passport_code_name_m.g.dart';

@freezed
class PassportCodeName with _$PassportCodeName {
  const factory PassportCodeName(
      List<PassportCodeNameSuggestions> suggestions) = _PassportCodeName;

  factory PassportCodeName.fromJson(Map<String, dynamic> json) =>
      _$PassportCodeNameFromJson(json);
}

@freezed
class PassportCodeNameSuggestions with _$PassportCodeNameSuggestions {
  const factory PassportCodeNameSuggestions({
    @Default('') String value,
    @Default('') String unrestricted_value,
    @Default(PassportCodeNameData()) PassportCodeNameData data,
  }) = _PassportCodeNameSuggestions;

  factory PassportCodeNameSuggestions.fromJson(Map<String, dynamic> json) =>
      _$PassportCodeNameSuggestionsFromJson(json);
}

@freezed
class PassportCodeNameData with _$PassportCodeNameData {
  const factory PassportCodeNameData({
    @Default('') String code,
    @Default('') String name,
    @Default('') String region_code,
    @Default('') String type,
  }) = _PassportCodeNameData;

  factory PassportCodeNameData.fromJson(Map<String, dynamic> json) =>
      _$PassportCodeNameDataFromJson(json);
}
