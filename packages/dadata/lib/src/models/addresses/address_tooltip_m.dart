// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_tooltip_m.g.dart';
part 'address_tooltip_m.freezed.dart';

@freezed
class AddressTooltip with _$AddressTooltip {
  const factory AddressTooltip(List<SuggestionsAddress> suggestions) =
      _AddressTooltip;

  factory AddressTooltip.fromJson(Map<String, dynamic> json) =>
      _$AddressTooltipFromJson(json);
}

@freezed
class SuggestionsAddress with _$SuggestionsAddress {
  const factory SuggestionsAddress({
    @Default('') String value,
    @Default('') String unrestricted_value,
    @Default(DataAddress()) DataAddress data,
  }) = _SuggestionsAddress;

  factory SuggestionsAddress.fromJson(Map<String, dynamic> json) =>
      _$SuggestionsAddressFromJson(json);
}

@freezed
class DataAddress with _$DataAddress {
  const factory DataAddress({
    @Default('') String postal_code,
    @Default('') String country,
    @Default('') String country_iso_code,
    @Default('') String federal_district,
    @Default('') String region_fias_id,
    @Default('') String region_kladr_id,
    @Default('') String region_iso_code,
    @Default('') String region_with_type,
    @Default('') String region_type,
    @Default('') String region_type_full,
    @Default('') String region,
    @Default('') String area_fias_id,
    @Default('') String area_kladr_id,
    @Default('') String area_with_type,
    @Default('') String area_type,
    @Default('') String area_type_full,
    @Default('') String area,
    @Default('') String city_fias_id,
    @Default('') String city_kladr_id,
    @Default('') String city_with_type,
    @Default('') String city_type,
    @Default('') String city_type_full,
    @Default('') String city,
    @Default('') String city_area,
    @Default('') String city_district_fias_id,
    @Default('') String city_district_kladr_id,
    @Default('') String city_district_with_type,
    @Default('') String city_district_type,
    @Default('') String city_district_type_full,
    @Default('') String city_district,
    @Default('') String settlement_fias_id,
    @Default('') String settlement_kladr_id,
    @Default('') String settlement_with_type,
    @Default('') String settlement_type,
    @Default('') String settlement_type_full,
    @Default('') String settlement,
    @Default('') String street_fias_id,
    @Default('') String street_kladr_id,
    @Default('') String street_with_type,
    @Default('') String street_type,
    @Default('') String street_type_full,
    @Default('') String street,
    @Default('') String stead_fias_id,
    @Default('') String stead_cadnum,
    @Default('') String stead_type,
    @Default('') String stead_type_full,
    @Default('') String stead,
    @Default('') String house_fias_id,
    @Default('') String house_kladr_id,
    @Default('') String house_cadnum,
    @Default('') String house_type,
    @Default('') String house_type_full,
    @Default('') String house,
    @Default('') String block_type,
    @Default('') String block_type_full,
    @Default('') String block,
    @Default('') String entrance,
    @Default('') String floor,
    @Default('') String flat_fias_id,
    @Default('') String flat_cadnum,
    @Default('') String flat_type,
    @Default('') String flat_type_full,
    @Default('') String flat,
    @Default('') String flat_area,
    @Default('') String square_meter_price,
    @Default('') String flat_price,
    @Default('') String postal_box,
    @Default('') String fias_id,
    @Default('') String fias_code,
    @Default('') String fias_level,
    @Default('') String fias_actuality_state,
    @Default('') String kladr_id,
    @Default('') String geoname_id,
    @Default('') String capital_marker,
    @Default('') String okato,
    @Default('') String oktmo,
    @Default('') String tax_office,
    @Default('') String tax_office_legal,
    @Default('') String timezone,
    @Default('') String geo_lat,
    @Default('') String geo_lon,
    @Default('') String beltway_hit,
    @Default('') String beltway_distance,
    @Default([]) List<String> metro,
    @Default('') String divisions,
    @Default('') String qc_geo,
    @Default('') String qc_complete,
    @Default('') String qc_house,
    @Default([]) List<String> history_values,
    @Default('') String unparsed_parts,
    @Default('') String source,
    @Default('') String qc,
  }) = _DataAddress;

  factory DataAddress.fromJson(Map<String, dynamic> json) =>
      _$DataAddressFromJson(json);
}
