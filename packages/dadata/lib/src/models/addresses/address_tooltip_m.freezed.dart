// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'address_tooltip_m.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddressTooltip _$AddressTooltipFromJson(Map<String, dynamic> json) {
  return _AddressTooltip.fromJson(json);
}

/// @nodoc
mixin _$AddressTooltip {
  List<SuggestionsAddress> get suggestions =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressTooltipCopyWith<AddressTooltip> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressTooltipCopyWith<$Res> {
  factory $AddressTooltipCopyWith(
          AddressTooltip value, $Res Function(AddressTooltip) then) =
      _$AddressTooltipCopyWithImpl<$Res>;
  $Res call({List<SuggestionsAddress> suggestions});
}

/// @nodoc
class _$AddressTooltipCopyWithImpl<$Res>
    implements $AddressTooltipCopyWith<$Res> {
  _$AddressTooltipCopyWithImpl(this._value, this._then);

  final AddressTooltip _value;
  // ignore: unused_field
  final $Res Function(AddressTooltip) _then;

  @override
  $Res call({
    Object? suggestions = freezed,
  }) {
    return _then(_value.copyWith(
      suggestions: suggestions == freezed
          ? _value.suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<SuggestionsAddress>,
    ));
  }
}

/// @nodoc
abstract class _$$_AddressTooltipCopyWith<$Res>
    implements $AddressTooltipCopyWith<$Res> {
  factory _$$_AddressTooltipCopyWith(
          _$_AddressTooltip value, $Res Function(_$_AddressTooltip) then) =
      __$$_AddressTooltipCopyWithImpl<$Res>;
  @override
  $Res call({List<SuggestionsAddress> suggestions});
}

/// @nodoc
class __$$_AddressTooltipCopyWithImpl<$Res>
    extends _$AddressTooltipCopyWithImpl<$Res>
    implements _$$_AddressTooltipCopyWith<$Res> {
  __$$_AddressTooltipCopyWithImpl(
      _$_AddressTooltip _value, $Res Function(_$_AddressTooltip) _then)
      : super(_value, (v) => _then(v as _$_AddressTooltip));

  @override
  _$_AddressTooltip get _value => super._value as _$_AddressTooltip;

  @override
  $Res call({
    Object? suggestions = freezed,
  }) {
    return _then(_$_AddressTooltip(
      suggestions == freezed
          ? _value._suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<SuggestionsAddress>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddressTooltip implements _AddressTooltip {
  const _$_AddressTooltip(final List<SuggestionsAddress> suggestions)
      : _suggestions = suggestions;

  factory _$_AddressTooltip.fromJson(Map<String, dynamic> json) =>
      _$$_AddressTooltipFromJson(json);

  final List<SuggestionsAddress> _suggestions;
  @override
  List<SuggestionsAddress> get suggestions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_suggestions);
  }

  @override
  String toString() {
    return 'AddressTooltip(suggestions: $suggestions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddressTooltip &&
            const DeepCollectionEquality()
                .equals(other._suggestions, _suggestions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_suggestions));

  @JsonKey(ignore: true)
  @override
  _$$_AddressTooltipCopyWith<_$_AddressTooltip> get copyWith =>
      __$$_AddressTooltipCopyWithImpl<_$_AddressTooltip>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddressTooltipToJson(
      this,
    );
  }
}

abstract class _AddressTooltip implements AddressTooltip {
  const factory _AddressTooltip(final List<SuggestionsAddress> suggestions) =
      _$_AddressTooltip;

  factory _AddressTooltip.fromJson(Map<String, dynamic> json) =
      _$_AddressTooltip.fromJson;

  @override
  List<SuggestionsAddress> get suggestions;
  @override
  @JsonKey(ignore: true)
  _$$_AddressTooltipCopyWith<_$_AddressTooltip> get copyWith =>
      throw _privateConstructorUsedError;
}

SuggestionsAddress _$SuggestionsAddressFromJson(Map<String, dynamic> json) {
  return _SuggestionsAddress.fromJson(json);
}

/// @nodoc
mixin _$SuggestionsAddress {
  String get value => throw _privateConstructorUsedError;
  String get unrestricted_value => throw _privateConstructorUsedError;
  DataAddress get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SuggestionsAddressCopyWith<SuggestionsAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuggestionsAddressCopyWith<$Res> {
  factory $SuggestionsAddressCopyWith(
          SuggestionsAddress value, $Res Function(SuggestionsAddress) then) =
      _$SuggestionsAddressCopyWithImpl<$Res>;
  $Res call({String value, String unrestricted_value, DataAddress data});

  $DataAddressCopyWith<$Res> get data;
}

/// @nodoc
class _$SuggestionsAddressCopyWithImpl<$Res>
    implements $SuggestionsAddressCopyWith<$Res> {
  _$SuggestionsAddressCopyWithImpl(this._value, this._then);

  final SuggestionsAddress _value;
  // ignore: unused_field
  final $Res Function(SuggestionsAddress) _then;

  @override
  $Res call({
    Object? value = freezed,
    Object? unrestricted_value = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      unrestricted_value: unrestricted_value == freezed
          ? _value.unrestricted_value
          : unrestricted_value // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataAddress,
    ));
  }

  @override
  $DataAddressCopyWith<$Res> get data {
    return $DataAddressCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$$_SuggestionsAddressCopyWith<$Res>
    implements $SuggestionsAddressCopyWith<$Res> {
  factory _$$_SuggestionsAddressCopyWith(_$_SuggestionsAddress value,
          $Res Function(_$_SuggestionsAddress) then) =
      __$$_SuggestionsAddressCopyWithImpl<$Res>;
  @override
  $Res call({String value, String unrestricted_value, DataAddress data});

  @override
  $DataAddressCopyWith<$Res> get data;
}

/// @nodoc
class __$$_SuggestionsAddressCopyWithImpl<$Res>
    extends _$SuggestionsAddressCopyWithImpl<$Res>
    implements _$$_SuggestionsAddressCopyWith<$Res> {
  __$$_SuggestionsAddressCopyWithImpl(
      _$_SuggestionsAddress _value, $Res Function(_$_SuggestionsAddress) _then)
      : super(_value, (v) => _then(v as _$_SuggestionsAddress));

  @override
  _$_SuggestionsAddress get _value => super._value as _$_SuggestionsAddress;

  @override
  $Res call({
    Object? value = freezed,
    Object? unrestricted_value = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_SuggestionsAddress(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      unrestricted_value: unrestricted_value == freezed
          ? _value.unrestricted_value
          : unrestricted_value // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataAddress,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SuggestionsAddress implements _SuggestionsAddress {
  const _$_SuggestionsAddress(
      {this.value = '',
      this.unrestricted_value = '',
      this.data = const DataAddress()});

  factory _$_SuggestionsAddress.fromJson(Map<String, dynamic> json) =>
      _$$_SuggestionsAddressFromJson(json);

  @override
  @JsonKey()
  final String value;
  @override
  @JsonKey()
  final String unrestricted_value;
  @override
  @JsonKey()
  final DataAddress data;

  @override
  String toString() {
    return 'SuggestionsAddress(value: $value, unrestricted_value: $unrestricted_value, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SuggestionsAddress &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality()
                .equals(other.unrestricted_value, unrestricted_value) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(unrestricted_value),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_SuggestionsAddressCopyWith<_$_SuggestionsAddress> get copyWith =>
      __$$_SuggestionsAddressCopyWithImpl<_$_SuggestionsAddress>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SuggestionsAddressToJson(
      this,
    );
  }
}

abstract class _SuggestionsAddress implements SuggestionsAddress {
  const factory _SuggestionsAddress(
      {final String value,
      final String unrestricted_value,
      final DataAddress data}) = _$_SuggestionsAddress;

  factory _SuggestionsAddress.fromJson(Map<String, dynamic> json) =
      _$_SuggestionsAddress.fromJson;

  @override
  String get value;
  @override
  String get unrestricted_value;
  @override
  DataAddress get data;
  @override
  @JsonKey(ignore: true)
  _$$_SuggestionsAddressCopyWith<_$_SuggestionsAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

DataAddress _$DataAddressFromJson(Map<String, dynamic> json) {
  return _DataAddress.fromJson(json);
}

/// @nodoc
mixin _$DataAddress {
  String get postal_code => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get country_iso_code => throw _privateConstructorUsedError;
  String get federal_district => throw _privateConstructorUsedError;
  String get region_fias_id => throw _privateConstructorUsedError;
  String get region_kladr_id => throw _privateConstructorUsedError;
  String get region_iso_code => throw _privateConstructorUsedError;
  String get region_with_type => throw _privateConstructorUsedError;
  String get region_type => throw _privateConstructorUsedError;
  String get region_type_full => throw _privateConstructorUsedError;
  String get region => throw _privateConstructorUsedError;
  String get area_fias_id => throw _privateConstructorUsedError;
  String get area_kladr_id => throw _privateConstructorUsedError;
  String get area_with_type => throw _privateConstructorUsedError;
  String get area_type => throw _privateConstructorUsedError;
  String get area_type_full => throw _privateConstructorUsedError;
  String get area => throw _privateConstructorUsedError;
  String get city_fias_id => throw _privateConstructorUsedError;
  String get city_kladr_id => throw _privateConstructorUsedError;
  String get city_with_type => throw _privateConstructorUsedError;
  String get city_type => throw _privateConstructorUsedError;
  String get city_type_full => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get city_area => throw _privateConstructorUsedError;
  String get city_district_fias_id => throw _privateConstructorUsedError;
  String get city_district_kladr_id => throw _privateConstructorUsedError;
  String get city_district_with_type => throw _privateConstructorUsedError;
  String get city_district_type => throw _privateConstructorUsedError;
  String get city_district_type_full => throw _privateConstructorUsedError;
  String get city_district => throw _privateConstructorUsedError;
  String get settlement_fias_id => throw _privateConstructorUsedError;
  String get settlement_kladr_id => throw _privateConstructorUsedError;
  String get settlement_with_type => throw _privateConstructorUsedError;
  String get settlement_type => throw _privateConstructorUsedError;
  String get settlement_type_full => throw _privateConstructorUsedError;
  String get settlement => throw _privateConstructorUsedError;
  String get street_fias_id => throw _privateConstructorUsedError;
  String get street_kladr_id => throw _privateConstructorUsedError;
  String get street_with_type => throw _privateConstructorUsedError;
  String get street_type => throw _privateConstructorUsedError;
  String get street_type_full => throw _privateConstructorUsedError;
  String get street => throw _privateConstructorUsedError;
  String get stead_fias_id => throw _privateConstructorUsedError;
  String get stead_cadnum => throw _privateConstructorUsedError;
  String get stead_type => throw _privateConstructorUsedError;
  String get stead_type_full => throw _privateConstructorUsedError;
  String get stead => throw _privateConstructorUsedError;
  String get house_fias_id => throw _privateConstructorUsedError;
  String get house_kladr_id => throw _privateConstructorUsedError;
  String get house_cadnum => throw _privateConstructorUsedError;
  String get house_type => throw _privateConstructorUsedError;
  String get house_type_full => throw _privateConstructorUsedError;
  String get house => throw _privateConstructorUsedError;
  String get block_type => throw _privateConstructorUsedError;
  String get block_type_full => throw _privateConstructorUsedError;
  String get block => throw _privateConstructorUsedError;
  String get entrance => throw _privateConstructorUsedError;
  String get floor => throw _privateConstructorUsedError;
  String get flat_fias_id => throw _privateConstructorUsedError;
  String get flat_cadnum => throw _privateConstructorUsedError;
  String get flat_type => throw _privateConstructorUsedError;
  String get flat_type_full => throw _privateConstructorUsedError;
  String get flat => throw _privateConstructorUsedError;
  String get flat_area => throw _privateConstructorUsedError;
  String get square_meter_price => throw _privateConstructorUsedError;
  String get flat_price => throw _privateConstructorUsedError;
  String get postal_box => throw _privateConstructorUsedError;
  String get fias_id => throw _privateConstructorUsedError;
  String get fias_code => throw _privateConstructorUsedError;
  String get fias_level => throw _privateConstructorUsedError;
  String get fias_actuality_state => throw _privateConstructorUsedError;
  String get kladr_id => throw _privateConstructorUsedError;
  String get geoname_id => throw _privateConstructorUsedError;
  String get capital_marker => throw _privateConstructorUsedError;
  String get okato => throw _privateConstructorUsedError;
  String get oktmo => throw _privateConstructorUsedError;
  String get tax_office => throw _privateConstructorUsedError;
  String get tax_office_legal => throw _privateConstructorUsedError;
  String get timezone => throw _privateConstructorUsedError;
  String get geo_lat => throw _privateConstructorUsedError;
  String get geo_lon => throw _privateConstructorUsedError;
  String get beltway_hit => throw _privateConstructorUsedError;
  String get beltway_distance => throw _privateConstructorUsedError;
  List<String> get metro => throw _privateConstructorUsedError;
  String get divisions => throw _privateConstructorUsedError;
  String get qc_geo => throw _privateConstructorUsedError;
  String get qc_complete => throw _privateConstructorUsedError;
  String get qc_house => throw _privateConstructorUsedError;
  List<String> get history_values => throw _privateConstructorUsedError;
  String get unparsed_parts => throw _privateConstructorUsedError;
  String get source => throw _privateConstructorUsedError;
  String get qc => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataAddressCopyWith<DataAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataAddressCopyWith<$Res> {
  factory $DataAddressCopyWith(
          DataAddress value, $Res Function(DataAddress) then) =
      _$DataAddressCopyWithImpl<$Res>;
  $Res call(
      {String postal_code,
      String country,
      String country_iso_code,
      String federal_district,
      String region_fias_id,
      String region_kladr_id,
      String region_iso_code,
      String region_with_type,
      String region_type,
      String region_type_full,
      String region,
      String area_fias_id,
      String area_kladr_id,
      String area_with_type,
      String area_type,
      String area_type_full,
      String area,
      String city_fias_id,
      String city_kladr_id,
      String city_with_type,
      String city_type,
      String city_type_full,
      String city,
      String city_area,
      String city_district_fias_id,
      String city_district_kladr_id,
      String city_district_with_type,
      String city_district_type,
      String city_district_type_full,
      String city_district,
      String settlement_fias_id,
      String settlement_kladr_id,
      String settlement_with_type,
      String settlement_type,
      String settlement_type_full,
      String settlement,
      String street_fias_id,
      String street_kladr_id,
      String street_with_type,
      String street_type,
      String street_type_full,
      String street,
      String stead_fias_id,
      String stead_cadnum,
      String stead_type,
      String stead_type_full,
      String stead,
      String house_fias_id,
      String house_kladr_id,
      String house_cadnum,
      String house_type,
      String house_type_full,
      String house,
      String block_type,
      String block_type_full,
      String block,
      String entrance,
      String floor,
      String flat_fias_id,
      String flat_cadnum,
      String flat_type,
      String flat_type_full,
      String flat,
      String flat_area,
      String square_meter_price,
      String flat_price,
      String postal_box,
      String fias_id,
      String fias_code,
      String fias_level,
      String fias_actuality_state,
      String kladr_id,
      String geoname_id,
      String capital_marker,
      String okato,
      String oktmo,
      String tax_office,
      String tax_office_legal,
      String timezone,
      String geo_lat,
      String geo_lon,
      String beltway_hit,
      String beltway_distance,
      List<String> metro,
      String divisions,
      String qc_geo,
      String qc_complete,
      String qc_house,
      List<String> history_values,
      String unparsed_parts,
      String source,
      String qc});
}

/// @nodoc
class _$DataAddressCopyWithImpl<$Res> implements $DataAddressCopyWith<$Res> {
  _$DataAddressCopyWithImpl(this._value, this._then);

  final DataAddress _value;
  // ignore: unused_field
  final $Res Function(DataAddress) _then;

  @override
  $Res call({
    Object? postal_code = freezed,
    Object? country = freezed,
    Object? country_iso_code = freezed,
    Object? federal_district = freezed,
    Object? region_fias_id = freezed,
    Object? region_kladr_id = freezed,
    Object? region_iso_code = freezed,
    Object? region_with_type = freezed,
    Object? region_type = freezed,
    Object? region_type_full = freezed,
    Object? region = freezed,
    Object? area_fias_id = freezed,
    Object? area_kladr_id = freezed,
    Object? area_with_type = freezed,
    Object? area_type = freezed,
    Object? area_type_full = freezed,
    Object? area = freezed,
    Object? city_fias_id = freezed,
    Object? city_kladr_id = freezed,
    Object? city_with_type = freezed,
    Object? city_type = freezed,
    Object? city_type_full = freezed,
    Object? city = freezed,
    Object? city_area = freezed,
    Object? city_district_fias_id = freezed,
    Object? city_district_kladr_id = freezed,
    Object? city_district_with_type = freezed,
    Object? city_district_type = freezed,
    Object? city_district_type_full = freezed,
    Object? city_district = freezed,
    Object? settlement_fias_id = freezed,
    Object? settlement_kladr_id = freezed,
    Object? settlement_with_type = freezed,
    Object? settlement_type = freezed,
    Object? settlement_type_full = freezed,
    Object? settlement = freezed,
    Object? street_fias_id = freezed,
    Object? street_kladr_id = freezed,
    Object? street_with_type = freezed,
    Object? street_type = freezed,
    Object? street_type_full = freezed,
    Object? street = freezed,
    Object? stead_fias_id = freezed,
    Object? stead_cadnum = freezed,
    Object? stead_type = freezed,
    Object? stead_type_full = freezed,
    Object? stead = freezed,
    Object? house_fias_id = freezed,
    Object? house_kladr_id = freezed,
    Object? house_cadnum = freezed,
    Object? house_type = freezed,
    Object? house_type_full = freezed,
    Object? house = freezed,
    Object? block_type = freezed,
    Object? block_type_full = freezed,
    Object? block = freezed,
    Object? entrance = freezed,
    Object? floor = freezed,
    Object? flat_fias_id = freezed,
    Object? flat_cadnum = freezed,
    Object? flat_type = freezed,
    Object? flat_type_full = freezed,
    Object? flat = freezed,
    Object? flat_area = freezed,
    Object? square_meter_price = freezed,
    Object? flat_price = freezed,
    Object? postal_box = freezed,
    Object? fias_id = freezed,
    Object? fias_code = freezed,
    Object? fias_level = freezed,
    Object? fias_actuality_state = freezed,
    Object? kladr_id = freezed,
    Object? geoname_id = freezed,
    Object? capital_marker = freezed,
    Object? okato = freezed,
    Object? oktmo = freezed,
    Object? tax_office = freezed,
    Object? tax_office_legal = freezed,
    Object? timezone = freezed,
    Object? geo_lat = freezed,
    Object? geo_lon = freezed,
    Object? beltway_hit = freezed,
    Object? beltway_distance = freezed,
    Object? metro = freezed,
    Object? divisions = freezed,
    Object? qc_geo = freezed,
    Object? qc_complete = freezed,
    Object? qc_house = freezed,
    Object? history_values = freezed,
    Object? unparsed_parts = freezed,
    Object? source = freezed,
    Object? qc = freezed,
  }) {
    return _then(_value.copyWith(
      postal_code: postal_code == freezed
          ? _value.postal_code
          : postal_code // ignore: cast_nullable_to_non_nullable
              as String,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      country_iso_code: country_iso_code == freezed
          ? _value.country_iso_code
          : country_iso_code // ignore: cast_nullable_to_non_nullable
              as String,
      federal_district: federal_district == freezed
          ? _value.federal_district
          : federal_district // ignore: cast_nullable_to_non_nullable
              as String,
      region_fias_id: region_fias_id == freezed
          ? _value.region_fias_id
          : region_fias_id // ignore: cast_nullable_to_non_nullable
              as String,
      region_kladr_id: region_kladr_id == freezed
          ? _value.region_kladr_id
          : region_kladr_id // ignore: cast_nullable_to_non_nullable
              as String,
      region_iso_code: region_iso_code == freezed
          ? _value.region_iso_code
          : region_iso_code // ignore: cast_nullable_to_non_nullable
              as String,
      region_with_type: region_with_type == freezed
          ? _value.region_with_type
          : region_with_type // ignore: cast_nullable_to_non_nullable
              as String,
      region_type: region_type == freezed
          ? _value.region_type
          : region_type // ignore: cast_nullable_to_non_nullable
              as String,
      region_type_full: region_type_full == freezed
          ? _value.region_type_full
          : region_type_full // ignore: cast_nullable_to_non_nullable
              as String,
      region: region == freezed
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      area_fias_id: area_fias_id == freezed
          ? _value.area_fias_id
          : area_fias_id // ignore: cast_nullable_to_non_nullable
              as String,
      area_kladr_id: area_kladr_id == freezed
          ? _value.area_kladr_id
          : area_kladr_id // ignore: cast_nullable_to_non_nullable
              as String,
      area_with_type: area_with_type == freezed
          ? _value.area_with_type
          : area_with_type // ignore: cast_nullable_to_non_nullable
              as String,
      area_type: area_type == freezed
          ? _value.area_type
          : area_type // ignore: cast_nullable_to_non_nullable
              as String,
      area_type_full: area_type_full == freezed
          ? _value.area_type_full
          : area_type_full // ignore: cast_nullable_to_non_nullable
              as String,
      area: area == freezed
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String,
      city_fias_id: city_fias_id == freezed
          ? _value.city_fias_id
          : city_fias_id // ignore: cast_nullable_to_non_nullable
              as String,
      city_kladr_id: city_kladr_id == freezed
          ? _value.city_kladr_id
          : city_kladr_id // ignore: cast_nullable_to_non_nullable
              as String,
      city_with_type: city_with_type == freezed
          ? _value.city_with_type
          : city_with_type // ignore: cast_nullable_to_non_nullable
              as String,
      city_type: city_type == freezed
          ? _value.city_type
          : city_type // ignore: cast_nullable_to_non_nullable
              as String,
      city_type_full: city_type_full == freezed
          ? _value.city_type_full
          : city_type_full // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      city_area: city_area == freezed
          ? _value.city_area
          : city_area // ignore: cast_nullable_to_non_nullable
              as String,
      city_district_fias_id: city_district_fias_id == freezed
          ? _value.city_district_fias_id
          : city_district_fias_id // ignore: cast_nullable_to_non_nullable
              as String,
      city_district_kladr_id: city_district_kladr_id == freezed
          ? _value.city_district_kladr_id
          : city_district_kladr_id // ignore: cast_nullable_to_non_nullable
              as String,
      city_district_with_type: city_district_with_type == freezed
          ? _value.city_district_with_type
          : city_district_with_type // ignore: cast_nullable_to_non_nullable
              as String,
      city_district_type: city_district_type == freezed
          ? _value.city_district_type
          : city_district_type // ignore: cast_nullable_to_non_nullable
              as String,
      city_district_type_full: city_district_type_full == freezed
          ? _value.city_district_type_full
          : city_district_type_full // ignore: cast_nullable_to_non_nullable
              as String,
      city_district: city_district == freezed
          ? _value.city_district
          : city_district // ignore: cast_nullable_to_non_nullable
              as String,
      settlement_fias_id: settlement_fias_id == freezed
          ? _value.settlement_fias_id
          : settlement_fias_id // ignore: cast_nullable_to_non_nullable
              as String,
      settlement_kladr_id: settlement_kladr_id == freezed
          ? _value.settlement_kladr_id
          : settlement_kladr_id // ignore: cast_nullable_to_non_nullable
              as String,
      settlement_with_type: settlement_with_type == freezed
          ? _value.settlement_with_type
          : settlement_with_type // ignore: cast_nullable_to_non_nullable
              as String,
      settlement_type: settlement_type == freezed
          ? _value.settlement_type
          : settlement_type // ignore: cast_nullable_to_non_nullable
              as String,
      settlement_type_full: settlement_type_full == freezed
          ? _value.settlement_type_full
          : settlement_type_full // ignore: cast_nullable_to_non_nullable
              as String,
      settlement: settlement == freezed
          ? _value.settlement
          : settlement // ignore: cast_nullable_to_non_nullable
              as String,
      street_fias_id: street_fias_id == freezed
          ? _value.street_fias_id
          : street_fias_id // ignore: cast_nullable_to_non_nullable
              as String,
      street_kladr_id: street_kladr_id == freezed
          ? _value.street_kladr_id
          : street_kladr_id // ignore: cast_nullable_to_non_nullable
              as String,
      street_with_type: street_with_type == freezed
          ? _value.street_with_type
          : street_with_type // ignore: cast_nullable_to_non_nullable
              as String,
      street_type: street_type == freezed
          ? _value.street_type
          : street_type // ignore: cast_nullable_to_non_nullable
              as String,
      street_type_full: street_type_full == freezed
          ? _value.street_type_full
          : street_type_full // ignore: cast_nullable_to_non_nullable
              as String,
      street: street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      stead_fias_id: stead_fias_id == freezed
          ? _value.stead_fias_id
          : stead_fias_id // ignore: cast_nullable_to_non_nullable
              as String,
      stead_cadnum: stead_cadnum == freezed
          ? _value.stead_cadnum
          : stead_cadnum // ignore: cast_nullable_to_non_nullable
              as String,
      stead_type: stead_type == freezed
          ? _value.stead_type
          : stead_type // ignore: cast_nullable_to_non_nullable
              as String,
      stead_type_full: stead_type_full == freezed
          ? _value.stead_type_full
          : stead_type_full // ignore: cast_nullable_to_non_nullable
              as String,
      stead: stead == freezed
          ? _value.stead
          : stead // ignore: cast_nullable_to_non_nullable
              as String,
      house_fias_id: house_fias_id == freezed
          ? _value.house_fias_id
          : house_fias_id // ignore: cast_nullable_to_non_nullable
              as String,
      house_kladr_id: house_kladr_id == freezed
          ? _value.house_kladr_id
          : house_kladr_id // ignore: cast_nullable_to_non_nullable
              as String,
      house_cadnum: house_cadnum == freezed
          ? _value.house_cadnum
          : house_cadnum // ignore: cast_nullable_to_non_nullable
              as String,
      house_type: house_type == freezed
          ? _value.house_type
          : house_type // ignore: cast_nullable_to_non_nullable
              as String,
      house_type_full: house_type_full == freezed
          ? _value.house_type_full
          : house_type_full // ignore: cast_nullable_to_non_nullable
              as String,
      house: house == freezed
          ? _value.house
          : house // ignore: cast_nullable_to_non_nullable
              as String,
      block_type: block_type == freezed
          ? _value.block_type
          : block_type // ignore: cast_nullable_to_non_nullable
              as String,
      block_type_full: block_type_full == freezed
          ? _value.block_type_full
          : block_type_full // ignore: cast_nullable_to_non_nullable
              as String,
      block: block == freezed
          ? _value.block
          : block // ignore: cast_nullable_to_non_nullable
              as String,
      entrance: entrance == freezed
          ? _value.entrance
          : entrance // ignore: cast_nullable_to_non_nullable
              as String,
      floor: floor == freezed
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as String,
      flat_fias_id: flat_fias_id == freezed
          ? _value.flat_fias_id
          : flat_fias_id // ignore: cast_nullable_to_non_nullable
              as String,
      flat_cadnum: flat_cadnum == freezed
          ? _value.flat_cadnum
          : flat_cadnum // ignore: cast_nullable_to_non_nullable
              as String,
      flat_type: flat_type == freezed
          ? _value.flat_type
          : flat_type // ignore: cast_nullable_to_non_nullable
              as String,
      flat_type_full: flat_type_full == freezed
          ? _value.flat_type_full
          : flat_type_full // ignore: cast_nullable_to_non_nullable
              as String,
      flat: flat == freezed
          ? _value.flat
          : flat // ignore: cast_nullable_to_non_nullable
              as String,
      flat_area: flat_area == freezed
          ? _value.flat_area
          : flat_area // ignore: cast_nullable_to_non_nullable
              as String,
      square_meter_price: square_meter_price == freezed
          ? _value.square_meter_price
          : square_meter_price // ignore: cast_nullable_to_non_nullable
              as String,
      flat_price: flat_price == freezed
          ? _value.flat_price
          : flat_price // ignore: cast_nullable_to_non_nullable
              as String,
      postal_box: postal_box == freezed
          ? _value.postal_box
          : postal_box // ignore: cast_nullable_to_non_nullable
              as String,
      fias_id: fias_id == freezed
          ? _value.fias_id
          : fias_id // ignore: cast_nullable_to_non_nullable
              as String,
      fias_code: fias_code == freezed
          ? _value.fias_code
          : fias_code // ignore: cast_nullable_to_non_nullable
              as String,
      fias_level: fias_level == freezed
          ? _value.fias_level
          : fias_level // ignore: cast_nullable_to_non_nullable
              as String,
      fias_actuality_state: fias_actuality_state == freezed
          ? _value.fias_actuality_state
          : fias_actuality_state // ignore: cast_nullable_to_non_nullable
              as String,
      kladr_id: kladr_id == freezed
          ? _value.kladr_id
          : kladr_id // ignore: cast_nullable_to_non_nullable
              as String,
      geoname_id: geoname_id == freezed
          ? _value.geoname_id
          : geoname_id // ignore: cast_nullable_to_non_nullable
              as String,
      capital_marker: capital_marker == freezed
          ? _value.capital_marker
          : capital_marker // ignore: cast_nullable_to_non_nullable
              as String,
      okato: okato == freezed
          ? _value.okato
          : okato // ignore: cast_nullable_to_non_nullable
              as String,
      oktmo: oktmo == freezed
          ? _value.oktmo
          : oktmo // ignore: cast_nullable_to_non_nullable
              as String,
      tax_office: tax_office == freezed
          ? _value.tax_office
          : tax_office // ignore: cast_nullable_to_non_nullable
              as String,
      tax_office_legal: tax_office_legal == freezed
          ? _value.tax_office_legal
          : tax_office_legal // ignore: cast_nullable_to_non_nullable
              as String,
      timezone: timezone == freezed
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      geo_lat: geo_lat == freezed
          ? _value.geo_lat
          : geo_lat // ignore: cast_nullable_to_non_nullable
              as String,
      geo_lon: geo_lon == freezed
          ? _value.geo_lon
          : geo_lon // ignore: cast_nullable_to_non_nullable
              as String,
      beltway_hit: beltway_hit == freezed
          ? _value.beltway_hit
          : beltway_hit // ignore: cast_nullable_to_non_nullable
              as String,
      beltway_distance: beltway_distance == freezed
          ? _value.beltway_distance
          : beltway_distance // ignore: cast_nullable_to_non_nullable
              as String,
      metro: metro == freezed
          ? _value.metro
          : metro // ignore: cast_nullable_to_non_nullable
              as List<String>,
      divisions: divisions == freezed
          ? _value.divisions
          : divisions // ignore: cast_nullable_to_non_nullable
              as String,
      qc_geo: qc_geo == freezed
          ? _value.qc_geo
          : qc_geo // ignore: cast_nullable_to_non_nullable
              as String,
      qc_complete: qc_complete == freezed
          ? _value.qc_complete
          : qc_complete // ignore: cast_nullable_to_non_nullable
              as String,
      qc_house: qc_house == freezed
          ? _value.qc_house
          : qc_house // ignore: cast_nullable_to_non_nullable
              as String,
      history_values: history_values == freezed
          ? _value.history_values
          : history_values // ignore: cast_nullable_to_non_nullable
              as List<String>,
      unparsed_parts: unparsed_parts == freezed
          ? _value.unparsed_parts
          : unparsed_parts // ignore: cast_nullable_to_non_nullable
              as String,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      qc: qc == freezed
          ? _value.qc
          : qc // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_DataAddressCopyWith<$Res>
    implements $DataAddressCopyWith<$Res> {
  factory _$$_DataAddressCopyWith(
          _$_DataAddress value, $Res Function(_$_DataAddress) then) =
      __$$_DataAddressCopyWithImpl<$Res>;
  @override
  $Res call(
      {String postal_code,
      String country,
      String country_iso_code,
      String federal_district,
      String region_fias_id,
      String region_kladr_id,
      String region_iso_code,
      String region_with_type,
      String region_type,
      String region_type_full,
      String region,
      String area_fias_id,
      String area_kladr_id,
      String area_with_type,
      String area_type,
      String area_type_full,
      String area,
      String city_fias_id,
      String city_kladr_id,
      String city_with_type,
      String city_type,
      String city_type_full,
      String city,
      String city_area,
      String city_district_fias_id,
      String city_district_kladr_id,
      String city_district_with_type,
      String city_district_type,
      String city_district_type_full,
      String city_district,
      String settlement_fias_id,
      String settlement_kladr_id,
      String settlement_with_type,
      String settlement_type,
      String settlement_type_full,
      String settlement,
      String street_fias_id,
      String street_kladr_id,
      String street_with_type,
      String street_type,
      String street_type_full,
      String street,
      String stead_fias_id,
      String stead_cadnum,
      String stead_type,
      String stead_type_full,
      String stead,
      String house_fias_id,
      String house_kladr_id,
      String house_cadnum,
      String house_type,
      String house_type_full,
      String house,
      String block_type,
      String block_type_full,
      String block,
      String entrance,
      String floor,
      String flat_fias_id,
      String flat_cadnum,
      String flat_type,
      String flat_type_full,
      String flat,
      String flat_area,
      String square_meter_price,
      String flat_price,
      String postal_box,
      String fias_id,
      String fias_code,
      String fias_level,
      String fias_actuality_state,
      String kladr_id,
      String geoname_id,
      String capital_marker,
      String okato,
      String oktmo,
      String tax_office,
      String tax_office_legal,
      String timezone,
      String geo_lat,
      String geo_lon,
      String beltway_hit,
      String beltway_distance,
      List<String> metro,
      String divisions,
      String qc_geo,
      String qc_complete,
      String qc_house,
      List<String> history_values,
      String unparsed_parts,
      String source,
      String qc});
}

/// @nodoc
class __$$_DataAddressCopyWithImpl<$Res> extends _$DataAddressCopyWithImpl<$Res>
    implements _$$_DataAddressCopyWith<$Res> {
  __$$_DataAddressCopyWithImpl(
      _$_DataAddress _value, $Res Function(_$_DataAddress) _then)
      : super(_value, (v) => _then(v as _$_DataAddress));

  @override
  _$_DataAddress get _value => super._value as _$_DataAddress;

  @override
  $Res call({
    Object? postal_code = freezed,
    Object? country = freezed,
    Object? country_iso_code = freezed,
    Object? federal_district = freezed,
    Object? region_fias_id = freezed,
    Object? region_kladr_id = freezed,
    Object? region_iso_code = freezed,
    Object? region_with_type = freezed,
    Object? region_type = freezed,
    Object? region_type_full = freezed,
    Object? region = freezed,
    Object? area_fias_id = freezed,
    Object? area_kladr_id = freezed,
    Object? area_with_type = freezed,
    Object? area_type = freezed,
    Object? area_type_full = freezed,
    Object? area = freezed,
    Object? city_fias_id = freezed,
    Object? city_kladr_id = freezed,
    Object? city_with_type = freezed,
    Object? city_type = freezed,
    Object? city_type_full = freezed,
    Object? city = freezed,
    Object? city_area = freezed,
    Object? city_district_fias_id = freezed,
    Object? city_district_kladr_id = freezed,
    Object? city_district_with_type = freezed,
    Object? city_district_type = freezed,
    Object? city_district_type_full = freezed,
    Object? city_district = freezed,
    Object? settlement_fias_id = freezed,
    Object? settlement_kladr_id = freezed,
    Object? settlement_with_type = freezed,
    Object? settlement_type = freezed,
    Object? settlement_type_full = freezed,
    Object? settlement = freezed,
    Object? street_fias_id = freezed,
    Object? street_kladr_id = freezed,
    Object? street_with_type = freezed,
    Object? street_type = freezed,
    Object? street_type_full = freezed,
    Object? street = freezed,
    Object? stead_fias_id = freezed,
    Object? stead_cadnum = freezed,
    Object? stead_type = freezed,
    Object? stead_type_full = freezed,
    Object? stead = freezed,
    Object? house_fias_id = freezed,
    Object? house_kladr_id = freezed,
    Object? house_cadnum = freezed,
    Object? house_type = freezed,
    Object? house_type_full = freezed,
    Object? house = freezed,
    Object? block_type = freezed,
    Object? block_type_full = freezed,
    Object? block = freezed,
    Object? entrance = freezed,
    Object? floor = freezed,
    Object? flat_fias_id = freezed,
    Object? flat_cadnum = freezed,
    Object? flat_type = freezed,
    Object? flat_type_full = freezed,
    Object? flat = freezed,
    Object? flat_area = freezed,
    Object? square_meter_price = freezed,
    Object? flat_price = freezed,
    Object? postal_box = freezed,
    Object? fias_id = freezed,
    Object? fias_code = freezed,
    Object? fias_level = freezed,
    Object? fias_actuality_state = freezed,
    Object? kladr_id = freezed,
    Object? geoname_id = freezed,
    Object? capital_marker = freezed,
    Object? okato = freezed,
    Object? oktmo = freezed,
    Object? tax_office = freezed,
    Object? tax_office_legal = freezed,
    Object? timezone = freezed,
    Object? geo_lat = freezed,
    Object? geo_lon = freezed,
    Object? beltway_hit = freezed,
    Object? beltway_distance = freezed,
    Object? metro = freezed,
    Object? divisions = freezed,
    Object? qc_geo = freezed,
    Object? qc_complete = freezed,
    Object? qc_house = freezed,
    Object? history_values = freezed,
    Object? unparsed_parts = freezed,
    Object? source = freezed,
    Object? qc = freezed,
  }) {
    return _then(_$_DataAddress(
      postal_code: postal_code == freezed
          ? _value.postal_code
          : postal_code // ignore: cast_nullable_to_non_nullable
              as String,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      country_iso_code: country_iso_code == freezed
          ? _value.country_iso_code
          : country_iso_code // ignore: cast_nullable_to_non_nullable
              as String,
      federal_district: federal_district == freezed
          ? _value.federal_district
          : federal_district // ignore: cast_nullable_to_non_nullable
              as String,
      region_fias_id: region_fias_id == freezed
          ? _value.region_fias_id
          : region_fias_id // ignore: cast_nullable_to_non_nullable
              as String,
      region_kladr_id: region_kladr_id == freezed
          ? _value.region_kladr_id
          : region_kladr_id // ignore: cast_nullable_to_non_nullable
              as String,
      region_iso_code: region_iso_code == freezed
          ? _value.region_iso_code
          : region_iso_code // ignore: cast_nullable_to_non_nullable
              as String,
      region_with_type: region_with_type == freezed
          ? _value.region_with_type
          : region_with_type // ignore: cast_nullable_to_non_nullable
              as String,
      region_type: region_type == freezed
          ? _value.region_type
          : region_type // ignore: cast_nullable_to_non_nullable
              as String,
      region_type_full: region_type_full == freezed
          ? _value.region_type_full
          : region_type_full // ignore: cast_nullable_to_non_nullable
              as String,
      region: region == freezed
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      area_fias_id: area_fias_id == freezed
          ? _value.area_fias_id
          : area_fias_id // ignore: cast_nullable_to_non_nullable
              as String,
      area_kladr_id: area_kladr_id == freezed
          ? _value.area_kladr_id
          : area_kladr_id // ignore: cast_nullable_to_non_nullable
              as String,
      area_with_type: area_with_type == freezed
          ? _value.area_with_type
          : area_with_type // ignore: cast_nullable_to_non_nullable
              as String,
      area_type: area_type == freezed
          ? _value.area_type
          : area_type // ignore: cast_nullable_to_non_nullable
              as String,
      area_type_full: area_type_full == freezed
          ? _value.area_type_full
          : area_type_full // ignore: cast_nullable_to_non_nullable
              as String,
      area: area == freezed
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String,
      city_fias_id: city_fias_id == freezed
          ? _value.city_fias_id
          : city_fias_id // ignore: cast_nullable_to_non_nullable
              as String,
      city_kladr_id: city_kladr_id == freezed
          ? _value.city_kladr_id
          : city_kladr_id // ignore: cast_nullable_to_non_nullable
              as String,
      city_with_type: city_with_type == freezed
          ? _value.city_with_type
          : city_with_type // ignore: cast_nullable_to_non_nullable
              as String,
      city_type: city_type == freezed
          ? _value.city_type
          : city_type // ignore: cast_nullable_to_non_nullable
              as String,
      city_type_full: city_type_full == freezed
          ? _value.city_type_full
          : city_type_full // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      city_area: city_area == freezed
          ? _value.city_area
          : city_area // ignore: cast_nullable_to_non_nullable
              as String,
      city_district_fias_id: city_district_fias_id == freezed
          ? _value.city_district_fias_id
          : city_district_fias_id // ignore: cast_nullable_to_non_nullable
              as String,
      city_district_kladr_id: city_district_kladr_id == freezed
          ? _value.city_district_kladr_id
          : city_district_kladr_id // ignore: cast_nullable_to_non_nullable
              as String,
      city_district_with_type: city_district_with_type == freezed
          ? _value.city_district_with_type
          : city_district_with_type // ignore: cast_nullable_to_non_nullable
              as String,
      city_district_type: city_district_type == freezed
          ? _value.city_district_type
          : city_district_type // ignore: cast_nullable_to_non_nullable
              as String,
      city_district_type_full: city_district_type_full == freezed
          ? _value.city_district_type_full
          : city_district_type_full // ignore: cast_nullable_to_non_nullable
              as String,
      city_district: city_district == freezed
          ? _value.city_district
          : city_district // ignore: cast_nullable_to_non_nullable
              as String,
      settlement_fias_id: settlement_fias_id == freezed
          ? _value.settlement_fias_id
          : settlement_fias_id // ignore: cast_nullable_to_non_nullable
              as String,
      settlement_kladr_id: settlement_kladr_id == freezed
          ? _value.settlement_kladr_id
          : settlement_kladr_id // ignore: cast_nullable_to_non_nullable
              as String,
      settlement_with_type: settlement_with_type == freezed
          ? _value.settlement_with_type
          : settlement_with_type // ignore: cast_nullable_to_non_nullable
              as String,
      settlement_type: settlement_type == freezed
          ? _value.settlement_type
          : settlement_type // ignore: cast_nullable_to_non_nullable
              as String,
      settlement_type_full: settlement_type_full == freezed
          ? _value.settlement_type_full
          : settlement_type_full // ignore: cast_nullable_to_non_nullable
              as String,
      settlement: settlement == freezed
          ? _value.settlement
          : settlement // ignore: cast_nullable_to_non_nullable
              as String,
      street_fias_id: street_fias_id == freezed
          ? _value.street_fias_id
          : street_fias_id // ignore: cast_nullable_to_non_nullable
              as String,
      street_kladr_id: street_kladr_id == freezed
          ? _value.street_kladr_id
          : street_kladr_id // ignore: cast_nullable_to_non_nullable
              as String,
      street_with_type: street_with_type == freezed
          ? _value.street_with_type
          : street_with_type // ignore: cast_nullable_to_non_nullable
              as String,
      street_type: street_type == freezed
          ? _value.street_type
          : street_type // ignore: cast_nullable_to_non_nullable
              as String,
      street_type_full: street_type_full == freezed
          ? _value.street_type_full
          : street_type_full // ignore: cast_nullable_to_non_nullable
              as String,
      street: street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      stead_fias_id: stead_fias_id == freezed
          ? _value.stead_fias_id
          : stead_fias_id // ignore: cast_nullable_to_non_nullable
              as String,
      stead_cadnum: stead_cadnum == freezed
          ? _value.stead_cadnum
          : stead_cadnum // ignore: cast_nullable_to_non_nullable
              as String,
      stead_type: stead_type == freezed
          ? _value.stead_type
          : stead_type // ignore: cast_nullable_to_non_nullable
              as String,
      stead_type_full: stead_type_full == freezed
          ? _value.stead_type_full
          : stead_type_full // ignore: cast_nullable_to_non_nullable
              as String,
      stead: stead == freezed
          ? _value.stead
          : stead // ignore: cast_nullable_to_non_nullable
              as String,
      house_fias_id: house_fias_id == freezed
          ? _value.house_fias_id
          : house_fias_id // ignore: cast_nullable_to_non_nullable
              as String,
      house_kladr_id: house_kladr_id == freezed
          ? _value.house_kladr_id
          : house_kladr_id // ignore: cast_nullable_to_non_nullable
              as String,
      house_cadnum: house_cadnum == freezed
          ? _value.house_cadnum
          : house_cadnum // ignore: cast_nullable_to_non_nullable
              as String,
      house_type: house_type == freezed
          ? _value.house_type
          : house_type // ignore: cast_nullable_to_non_nullable
              as String,
      house_type_full: house_type_full == freezed
          ? _value.house_type_full
          : house_type_full // ignore: cast_nullable_to_non_nullable
              as String,
      house: house == freezed
          ? _value.house
          : house // ignore: cast_nullable_to_non_nullable
              as String,
      block_type: block_type == freezed
          ? _value.block_type
          : block_type // ignore: cast_nullable_to_non_nullable
              as String,
      block_type_full: block_type_full == freezed
          ? _value.block_type_full
          : block_type_full // ignore: cast_nullable_to_non_nullable
              as String,
      block: block == freezed
          ? _value.block
          : block // ignore: cast_nullable_to_non_nullable
              as String,
      entrance: entrance == freezed
          ? _value.entrance
          : entrance // ignore: cast_nullable_to_non_nullable
              as String,
      floor: floor == freezed
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as String,
      flat_fias_id: flat_fias_id == freezed
          ? _value.flat_fias_id
          : flat_fias_id // ignore: cast_nullable_to_non_nullable
              as String,
      flat_cadnum: flat_cadnum == freezed
          ? _value.flat_cadnum
          : flat_cadnum // ignore: cast_nullable_to_non_nullable
              as String,
      flat_type: flat_type == freezed
          ? _value.flat_type
          : flat_type // ignore: cast_nullable_to_non_nullable
              as String,
      flat_type_full: flat_type_full == freezed
          ? _value.flat_type_full
          : flat_type_full // ignore: cast_nullable_to_non_nullable
              as String,
      flat: flat == freezed
          ? _value.flat
          : flat // ignore: cast_nullable_to_non_nullable
              as String,
      flat_area: flat_area == freezed
          ? _value.flat_area
          : flat_area // ignore: cast_nullable_to_non_nullable
              as String,
      square_meter_price: square_meter_price == freezed
          ? _value.square_meter_price
          : square_meter_price // ignore: cast_nullable_to_non_nullable
              as String,
      flat_price: flat_price == freezed
          ? _value.flat_price
          : flat_price // ignore: cast_nullable_to_non_nullable
              as String,
      postal_box: postal_box == freezed
          ? _value.postal_box
          : postal_box // ignore: cast_nullable_to_non_nullable
              as String,
      fias_id: fias_id == freezed
          ? _value.fias_id
          : fias_id // ignore: cast_nullable_to_non_nullable
              as String,
      fias_code: fias_code == freezed
          ? _value.fias_code
          : fias_code // ignore: cast_nullable_to_non_nullable
              as String,
      fias_level: fias_level == freezed
          ? _value.fias_level
          : fias_level // ignore: cast_nullable_to_non_nullable
              as String,
      fias_actuality_state: fias_actuality_state == freezed
          ? _value.fias_actuality_state
          : fias_actuality_state // ignore: cast_nullable_to_non_nullable
              as String,
      kladr_id: kladr_id == freezed
          ? _value.kladr_id
          : kladr_id // ignore: cast_nullable_to_non_nullable
              as String,
      geoname_id: geoname_id == freezed
          ? _value.geoname_id
          : geoname_id // ignore: cast_nullable_to_non_nullable
              as String,
      capital_marker: capital_marker == freezed
          ? _value.capital_marker
          : capital_marker // ignore: cast_nullable_to_non_nullable
              as String,
      okato: okato == freezed
          ? _value.okato
          : okato // ignore: cast_nullable_to_non_nullable
              as String,
      oktmo: oktmo == freezed
          ? _value.oktmo
          : oktmo // ignore: cast_nullable_to_non_nullable
              as String,
      tax_office: tax_office == freezed
          ? _value.tax_office
          : tax_office // ignore: cast_nullable_to_non_nullable
              as String,
      tax_office_legal: tax_office_legal == freezed
          ? _value.tax_office_legal
          : tax_office_legal // ignore: cast_nullable_to_non_nullable
              as String,
      timezone: timezone == freezed
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      geo_lat: geo_lat == freezed
          ? _value.geo_lat
          : geo_lat // ignore: cast_nullable_to_non_nullable
              as String,
      geo_lon: geo_lon == freezed
          ? _value.geo_lon
          : geo_lon // ignore: cast_nullable_to_non_nullable
              as String,
      beltway_hit: beltway_hit == freezed
          ? _value.beltway_hit
          : beltway_hit // ignore: cast_nullable_to_non_nullable
              as String,
      beltway_distance: beltway_distance == freezed
          ? _value.beltway_distance
          : beltway_distance // ignore: cast_nullable_to_non_nullable
              as String,
      metro: metro == freezed
          ? _value._metro
          : metro // ignore: cast_nullable_to_non_nullable
              as List<String>,
      divisions: divisions == freezed
          ? _value.divisions
          : divisions // ignore: cast_nullable_to_non_nullable
              as String,
      qc_geo: qc_geo == freezed
          ? _value.qc_geo
          : qc_geo // ignore: cast_nullable_to_non_nullable
              as String,
      qc_complete: qc_complete == freezed
          ? _value.qc_complete
          : qc_complete // ignore: cast_nullable_to_non_nullable
              as String,
      qc_house: qc_house == freezed
          ? _value.qc_house
          : qc_house // ignore: cast_nullable_to_non_nullable
              as String,
      history_values: history_values == freezed
          ? _value._history_values
          : history_values // ignore: cast_nullable_to_non_nullable
              as List<String>,
      unparsed_parts: unparsed_parts == freezed
          ? _value.unparsed_parts
          : unparsed_parts // ignore: cast_nullable_to_non_nullable
              as String,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      qc: qc == freezed
          ? _value.qc
          : qc // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataAddress implements _DataAddress {
  const _$_DataAddress(
      {this.postal_code = '',
      this.country = '',
      this.country_iso_code = '',
      this.federal_district = '',
      this.region_fias_id = '',
      this.region_kladr_id = '',
      this.region_iso_code = '',
      this.region_with_type = '',
      this.region_type = '',
      this.region_type_full = '',
      this.region = '',
      this.area_fias_id = '',
      this.area_kladr_id = '',
      this.area_with_type = '',
      this.area_type = '',
      this.area_type_full = '',
      this.area = '',
      this.city_fias_id = '',
      this.city_kladr_id = '',
      this.city_with_type = '',
      this.city_type = '',
      this.city_type_full = '',
      this.city = '',
      this.city_area = '',
      this.city_district_fias_id = '',
      this.city_district_kladr_id = '',
      this.city_district_with_type = '',
      this.city_district_type = '',
      this.city_district_type_full = '',
      this.city_district = '',
      this.settlement_fias_id = '',
      this.settlement_kladr_id = '',
      this.settlement_with_type = '',
      this.settlement_type = '',
      this.settlement_type_full = '',
      this.settlement = '',
      this.street_fias_id = '',
      this.street_kladr_id = '',
      this.street_with_type = '',
      this.street_type = '',
      this.street_type_full = '',
      this.street = '',
      this.stead_fias_id = '',
      this.stead_cadnum = '',
      this.stead_type = '',
      this.stead_type_full = '',
      this.stead = '',
      this.house_fias_id = '',
      this.house_kladr_id = '',
      this.house_cadnum = '',
      this.house_type = '',
      this.house_type_full = '',
      this.house = '',
      this.block_type = '',
      this.block_type_full = '',
      this.block = '',
      this.entrance = '',
      this.floor = '',
      this.flat_fias_id = '',
      this.flat_cadnum = '',
      this.flat_type = '',
      this.flat_type_full = '',
      this.flat = '',
      this.flat_area = '',
      this.square_meter_price = '',
      this.flat_price = '',
      this.postal_box = '',
      this.fias_id = '',
      this.fias_code = '',
      this.fias_level = '',
      this.fias_actuality_state = '',
      this.kladr_id = '',
      this.geoname_id = '',
      this.capital_marker = '',
      this.okato = '',
      this.oktmo = '',
      this.tax_office = '',
      this.tax_office_legal = '',
      this.timezone = '',
      this.geo_lat = '',
      this.geo_lon = '',
      this.beltway_hit = '',
      this.beltway_distance = '',
      final List<String> metro = const [],
      this.divisions = '',
      this.qc_geo = '',
      this.qc_complete = '',
      this.qc_house = '',
      final List<String> history_values = const [],
      this.unparsed_parts = '',
      this.source = '',
      this.qc = ''})
      : _metro = metro,
        _history_values = history_values;

  factory _$_DataAddress.fromJson(Map<String, dynamic> json) =>
      _$$_DataAddressFromJson(json);

  @override
  @JsonKey()
  final String postal_code;
  @override
  @JsonKey()
  final String country;
  @override
  @JsonKey()
  final String country_iso_code;
  @override
  @JsonKey()
  final String federal_district;
  @override
  @JsonKey()
  final String region_fias_id;
  @override
  @JsonKey()
  final String region_kladr_id;
  @override
  @JsonKey()
  final String region_iso_code;
  @override
  @JsonKey()
  final String region_with_type;
  @override
  @JsonKey()
  final String region_type;
  @override
  @JsonKey()
  final String region_type_full;
  @override
  @JsonKey()
  final String region;
  @override
  @JsonKey()
  final String area_fias_id;
  @override
  @JsonKey()
  final String area_kladr_id;
  @override
  @JsonKey()
  final String area_with_type;
  @override
  @JsonKey()
  final String area_type;
  @override
  @JsonKey()
  final String area_type_full;
  @override
  @JsonKey()
  final String area;
  @override
  @JsonKey()
  final String city_fias_id;
  @override
  @JsonKey()
  final String city_kladr_id;
  @override
  @JsonKey()
  final String city_with_type;
  @override
  @JsonKey()
  final String city_type;
  @override
  @JsonKey()
  final String city_type_full;
  @override
  @JsonKey()
  final String city;
  @override
  @JsonKey()
  final String city_area;
  @override
  @JsonKey()
  final String city_district_fias_id;
  @override
  @JsonKey()
  final String city_district_kladr_id;
  @override
  @JsonKey()
  final String city_district_with_type;
  @override
  @JsonKey()
  final String city_district_type;
  @override
  @JsonKey()
  final String city_district_type_full;
  @override
  @JsonKey()
  final String city_district;
  @override
  @JsonKey()
  final String settlement_fias_id;
  @override
  @JsonKey()
  final String settlement_kladr_id;
  @override
  @JsonKey()
  final String settlement_with_type;
  @override
  @JsonKey()
  final String settlement_type;
  @override
  @JsonKey()
  final String settlement_type_full;
  @override
  @JsonKey()
  final String settlement;
  @override
  @JsonKey()
  final String street_fias_id;
  @override
  @JsonKey()
  final String street_kladr_id;
  @override
  @JsonKey()
  final String street_with_type;
  @override
  @JsonKey()
  final String street_type;
  @override
  @JsonKey()
  final String street_type_full;
  @override
  @JsonKey()
  final String street;
  @override
  @JsonKey()
  final String stead_fias_id;
  @override
  @JsonKey()
  final String stead_cadnum;
  @override
  @JsonKey()
  final String stead_type;
  @override
  @JsonKey()
  final String stead_type_full;
  @override
  @JsonKey()
  final String stead;
  @override
  @JsonKey()
  final String house_fias_id;
  @override
  @JsonKey()
  final String house_kladr_id;
  @override
  @JsonKey()
  final String house_cadnum;
  @override
  @JsonKey()
  final String house_type;
  @override
  @JsonKey()
  final String house_type_full;
  @override
  @JsonKey()
  final String house;
  @override
  @JsonKey()
  final String block_type;
  @override
  @JsonKey()
  final String block_type_full;
  @override
  @JsonKey()
  final String block;
  @override
  @JsonKey()
  final String entrance;
  @override
  @JsonKey()
  final String floor;
  @override
  @JsonKey()
  final String flat_fias_id;
  @override
  @JsonKey()
  final String flat_cadnum;
  @override
  @JsonKey()
  final String flat_type;
  @override
  @JsonKey()
  final String flat_type_full;
  @override
  @JsonKey()
  final String flat;
  @override
  @JsonKey()
  final String flat_area;
  @override
  @JsonKey()
  final String square_meter_price;
  @override
  @JsonKey()
  final String flat_price;
  @override
  @JsonKey()
  final String postal_box;
  @override
  @JsonKey()
  final String fias_id;
  @override
  @JsonKey()
  final String fias_code;
  @override
  @JsonKey()
  final String fias_level;
  @override
  @JsonKey()
  final String fias_actuality_state;
  @override
  @JsonKey()
  final String kladr_id;
  @override
  @JsonKey()
  final String geoname_id;
  @override
  @JsonKey()
  final String capital_marker;
  @override
  @JsonKey()
  final String okato;
  @override
  @JsonKey()
  final String oktmo;
  @override
  @JsonKey()
  final String tax_office;
  @override
  @JsonKey()
  final String tax_office_legal;
  @override
  @JsonKey()
  final String timezone;
  @override
  @JsonKey()
  final String geo_lat;
  @override
  @JsonKey()
  final String geo_lon;
  @override
  @JsonKey()
  final String beltway_hit;
  @override
  @JsonKey()
  final String beltway_distance;
  final List<String> _metro;
  @override
  @JsonKey()
  List<String> get metro {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_metro);
  }

  @override
  @JsonKey()
  final String divisions;
  @override
  @JsonKey()
  final String qc_geo;
  @override
  @JsonKey()
  final String qc_complete;
  @override
  @JsonKey()
  final String qc_house;
  final List<String> _history_values;
  @override
  @JsonKey()
  List<String> get history_values {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_history_values);
  }

  @override
  @JsonKey()
  final String unparsed_parts;
  @override
  @JsonKey()
  final String source;
  @override
  @JsonKey()
  final String qc;

  @override
  String toString() {
    return 'DataAddress(postal_code: $postal_code, country: $country, country_iso_code: $country_iso_code, federal_district: $federal_district, region_fias_id: $region_fias_id, region_kladr_id: $region_kladr_id, region_iso_code: $region_iso_code, region_with_type: $region_with_type, region_type: $region_type, region_type_full: $region_type_full, region: $region, area_fias_id: $area_fias_id, area_kladr_id: $area_kladr_id, area_with_type: $area_with_type, area_type: $area_type, area_type_full: $area_type_full, area: $area, city_fias_id: $city_fias_id, city_kladr_id: $city_kladr_id, city_with_type: $city_with_type, city_type: $city_type, city_type_full: $city_type_full, city: $city, city_area: $city_area, city_district_fias_id: $city_district_fias_id, city_district_kladr_id: $city_district_kladr_id, city_district_with_type: $city_district_with_type, city_district_type: $city_district_type, city_district_type_full: $city_district_type_full, city_district: $city_district, settlement_fias_id: $settlement_fias_id, settlement_kladr_id: $settlement_kladr_id, settlement_with_type: $settlement_with_type, settlement_type: $settlement_type, settlement_type_full: $settlement_type_full, settlement: $settlement, street_fias_id: $street_fias_id, street_kladr_id: $street_kladr_id, street_with_type: $street_with_type, street_type: $street_type, street_type_full: $street_type_full, street: $street, stead_fias_id: $stead_fias_id, stead_cadnum: $stead_cadnum, stead_type: $stead_type, stead_type_full: $stead_type_full, stead: $stead, house_fias_id: $house_fias_id, house_kladr_id: $house_kladr_id, house_cadnum: $house_cadnum, house_type: $house_type, house_type_full: $house_type_full, house: $house, block_type: $block_type, block_type_full: $block_type_full, block: $block, entrance: $entrance, floor: $floor, flat_fias_id: $flat_fias_id, flat_cadnum: $flat_cadnum, flat_type: $flat_type, flat_type_full: $flat_type_full, flat: $flat, flat_area: $flat_area, square_meter_price: $square_meter_price, flat_price: $flat_price, postal_box: $postal_box, fias_id: $fias_id, fias_code: $fias_code, fias_level: $fias_level, fias_actuality_state: $fias_actuality_state, kladr_id: $kladr_id, geoname_id: $geoname_id, capital_marker: $capital_marker, okato: $okato, oktmo: $oktmo, tax_office: $tax_office, tax_office_legal: $tax_office_legal, timezone: $timezone, geo_lat: $geo_lat, geo_lon: $geo_lon, beltway_hit: $beltway_hit, beltway_distance: $beltway_distance, metro: $metro, divisions: $divisions, qc_geo: $qc_geo, qc_complete: $qc_complete, qc_house: $qc_house, history_values: $history_values, unparsed_parts: $unparsed_parts, source: $source, qc: $qc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataAddress &&
            const DeepCollectionEquality()
                .equals(other.postal_code, postal_code) &&
            const DeepCollectionEquality().equals(other.country, country) &&
            const DeepCollectionEquality()
                .equals(other.country_iso_code, country_iso_code) &&
            const DeepCollectionEquality()
                .equals(other.federal_district, federal_district) &&
            const DeepCollectionEquality()
                .equals(other.region_fias_id, region_fias_id) &&
            const DeepCollectionEquality()
                .equals(other.region_kladr_id, region_kladr_id) &&
            const DeepCollectionEquality()
                .equals(other.region_iso_code, region_iso_code) &&
            const DeepCollectionEquality()
                .equals(other.region_with_type, region_with_type) &&
            const DeepCollectionEquality()
                .equals(other.region_type, region_type) &&
            const DeepCollectionEquality()
                .equals(other.region_type_full, region_type_full) &&
            const DeepCollectionEquality().equals(other.region, region) &&
            const DeepCollectionEquality()
                .equals(other.area_fias_id, area_fias_id) &&
            const DeepCollectionEquality()
                .equals(other.area_kladr_id, area_kladr_id) &&
            const DeepCollectionEquality()
                .equals(other.area_with_type, area_with_type) &&
            const DeepCollectionEquality().equals(other.area_type, area_type) &&
            const DeepCollectionEquality()
                .equals(other.area_type_full, area_type_full) &&
            const DeepCollectionEquality().equals(other.area, area) &&
            const DeepCollectionEquality()
                .equals(other.city_fias_id, city_fias_id) &&
            const DeepCollectionEquality()
                .equals(other.city_kladr_id, city_kladr_id) &&
            const DeepCollectionEquality()
                .equals(other.city_with_type, city_with_type) &&
            const DeepCollectionEquality().equals(other.city_type, city_type) &&
            const DeepCollectionEquality()
                .equals(other.city_type_full, city_type_full) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality().equals(other.city_area, city_area) &&
            const DeepCollectionEquality()
                .equals(other.city_district_fias_id, city_district_fias_id) &&
            const DeepCollectionEquality()
                .equals(other.city_district_kladr_id, city_district_kladr_id) &&
            const DeepCollectionEquality().equals(
                other.city_district_with_type, city_district_with_type) &&
            const DeepCollectionEquality()
                .equals(other.city_district_type, city_district_type) &&
            const DeepCollectionEquality().equals(
                other.city_district_type_full, city_district_type_full) &&
            const DeepCollectionEquality()
                .equals(other.city_district, city_district) &&
            const DeepCollectionEquality()
                .equals(other.settlement_fias_id, settlement_fias_id) &&
            const DeepCollectionEquality()
                .equals(other.settlement_kladr_id, settlement_kladr_id) &&
            const DeepCollectionEquality()
                .equals(other.settlement_with_type, settlement_with_type) &&
            const DeepCollectionEquality()
                .equals(other.settlement_type, settlement_type) &&
            const DeepCollectionEquality()
                .equals(other.settlement_type_full, settlement_type_full) &&
            const DeepCollectionEquality()
                .equals(other.settlement, settlement) &&
            const DeepCollectionEquality()
                .equals(other.street_fias_id, street_fias_id) &&
            const DeepCollectionEquality()
                .equals(other.street_kladr_id, street_kladr_id) &&
            const DeepCollectionEquality()
                .equals(other.street_with_type, street_with_type) &&
            const DeepCollectionEquality()
                .equals(other.street_type, street_type) &&
            const DeepCollectionEquality()
                .equals(other.street_type_full, street_type_full) &&
            const DeepCollectionEquality().equals(other.street, street) &&
            const DeepCollectionEquality()
                .equals(other.stead_fias_id, stead_fias_id) &&
            const DeepCollectionEquality()
                .equals(other.stead_cadnum, stead_cadnum) &&
            const DeepCollectionEquality()
                .equals(other.stead_type, stead_type) &&
            const DeepCollectionEquality()
                .equals(other.stead_type_full, stead_type_full) &&
            const DeepCollectionEquality().equals(other.stead, stead) &&
            const DeepCollectionEquality()
                .equals(other.house_fias_id, house_fias_id) &&
            const DeepCollectionEquality()
                .equals(other.house_kladr_id, house_kladr_id) &&
            const DeepCollectionEquality()
                .equals(other.house_cadnum, house_cadnum) &&
            const DeepCollectionEquality()
                .equals(other.house_type, house_type) &&
            const DeepCollectionEquality()
                .equals(other.house_type_full, house_type_full) &&
            const DeepCollectionEquality().equals(other.house, house) &&
            const DeepCollectionEquality()
                .equals(other.block_type, block_type) &&
            const DeepCollectionEquality().equals(other.block_type_full, block_type_full) &&
            const DeepCollectionEquality().equals(other.block, block) &&
            const DeepCollectionEquality().equals(other.entrance, entrance) &&
            const DeepCollectionEquality().equals(other.floor, floor) &&
            const DeepCollectionEquality().equals(other.flat_fias_id, flat_fias_id) &&
            const DeepCollectionEquality().equals(other.flat_cadnum, flat_cadnum) &&
            const DeepCollectionEquality().equals(other.flat_type, flat_type) &&
            const DeepCollectionEquality().equals(other.flat_type_full, flat_type_full) &&
            const DeepCollectionEquality().equals(other.flat, flat) &&
            const DeepCollectionEquality().equals(other.flat_area, flat_area) &&
            const DeepCollectionEquality().equals(other.square_meter_price, square_meter_price) &&
            const DeepCollectionEquality().equals(other.flat_price, flat_price) &&
            const DeepCollectionEquality().equals(other.postal_box, postal_box) &&
            const DeepCollectionEquality().equals(other.fias_id, fias_id) &&
            const DeepCollectionEquality().equals(other.fias_code, fias_code) &&
            const DeepCollectionEquality().equals(other.fias_level, fias_level) &&
            const DeepCollectionEquality().equals(other.fias_actuality_state, fias_actuality_state) &&
            const DeepCollectionEquality().equals(other.kladr_id, kladr_id) &&
            const DeepCollectionEquality().equals(other.geoname_id, geoname_id) &&
            const DeepCollectionEquality().equals(other.capital_marker, capital_marker) &&
            const DeepCollectionEquality().equals(other.okato, okato) &&
            const DeepCollectionEquality().equals(other.oktmo, oktmo) &&
            const DeepCollectionEquality().equals(other.tax_office, tax_office) &&
            const DeepCollectionEquality().equals(other.tax_office_legal, tax_office_legal) &&
            const DeepCollectionEquality().equals(other.timezone, timezone) &&
            const DeepCollectionEquality().equals(other.geo_lat, geo_lat) &&
            const DeepCollectionEquality().equals(other.geo_lon, geo_lon) &&
            const DeepCollectionEquality().equals(other.beltway_hit, beltway_hit) &&
            const DeepCollectionEquality().equals(other.beltway_distance, beltway_distance) &&
            const DeepCollectionEquality().equals(other._metro, _metro) &&
            const DeepCollectionEquality().equals(other.divisions, divisions) &&
            const DeepCollectionEquality().equals(other.qc_geo, qc_geo) &&
            const DeepCollectionEquality().equals(other.qc_complete, qc_complete) &&
            const DeepCollectionEquality().equals(other.qc_house, qc_house) &&
            const DeepCollectionEquality().equals(other._history_values, _history_values) &&
            const DeepCollectionEquality().equals(other.unparsed_parts, unparsed_parts) &&
            const DeepCollectionEquality().equals(other.source, source) &&
            const DeepCollectionEquality().equals(other.qc, qc));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(postal_code),
        const DeepCollectionEquality().hash(country),
        const DeepCollectionEquality().hash(country_iso_code),
        const DeepCollectionEquality().hash(federal_district),
        const DeepCollectionEquality().hash(region_fias_id),
        const DeepCollectionEquality().hash(region_kladr_id),
        const DeepCollectionEquality().hash(region_iso_code),
        const DeepCollectionEquality().hash(region_with_type),
        const DeepCollectionEquality().hash(region_type),
        const DeepCollectionEquality().hash(region_type_full),
        const DeepCollectionEquality().hash(region),
        const DeepCollectionEquality().hash(area_fias_id),
        const DeepCollectionEquality().hash(area_kladr_id),
        const DeepCollectionEquality().hash(area_with_type),
        const DeepCollectionEquality().hash(area_type),
        const DeepCollectionEquality().hash(area_type_full),
        const DeepCollectionEquality().hash(area),
        const DeepCollectionEquality().hash(city_fias_id),
        const DeepCollectionEquality().hash(city_kladr_id),
        const DeepCollectionEquality().hash(city_with_type),
        const DeepCollectionEquality().hash(city_type),
        const DeepCollectionEquality().hash(city_type_full),
        const DeepCollectionEquality().hash(city),
        const DeepCollectionEquality().hash(city_area),
        const DeepCollectionEquality().hash(city_district_fias_id),
        const DeepCollectionEquality().hash(city_district_kladr_id),
        const DeepCollectionEquality().hash(city_district_with_type),
        const DeepCollectionEquality().hash(city_district_type),
        const DeepCollectionEquality().hash(city_district_type_full),
        const DeepCollectionEquality().hash(city_district),
        const DeepCollectionEquality().hash(settlement_fias_id),
        const DeepCollectionEquality().hash(settlement_kladr_id),
        const DeepCollectionEquality().hash(settlement_with_type),
        const DeepCollectionEquality().hash(settlement_type),
        const DeepCollectionEquality().hash(settlement_type_full),
        const DeepCollectionEquality().hash(settlement),
        const DeepCollectionEquality().hash(street_fias_id),
        const DeepCollectionEquality().hash(street_kladr_id),
        const DeepCollectionEquality().hash(street_with_type),
        const DeepCollectionEquality().hash(street_type),
        const DeepCollectionEquality().hash(street_type_full),
        const DeepCollectionEquality().hash(street),
        const DeepCollectionEquality().hash(stead_fias_id),
        const DeepCollectionEquality().hash(stead_cadnum),
        const DeepCollectionEquality().hash(stead_type),
        const DeepCollectionEquality().hash(stead_type_full),
        const DeepCollectionEquality().hash(stead),
        const DeepCollectionEquality().hash(house_fias_id),
        const DeepCollectionEquality().hash(house_kladr_id),
        const DeepCollectionEquality().hash(house_cadnum),
        const DeepCollectionEquality().hash(house_type),
        const DeepCollectionEquality().hash(house_type_full),
        const DeepCollectionEquality().hash(house),
        const DeepCollectionEquality().hash(block_type),
        const DeepCollectionEquality().hash(block_type_full),
        const DeepCollectionEquality().hash(block),
        const DeepCollectionEquality().hash(entrance),
        const DeepCollectionEquality().hash(floor),
        const DeepCollectionEquality().hash(flat_fias_id),
        const DeepCollectionEquality().hash(flat_cadnum),
        const DeepCollectionEquality().hash(flat_type),
        const DeepCollectionEquality().hash(flat_type_full),
        const DeepCollectionEquality().hash(flat),
        const DeepCollectionEquality().hash(flat_area),
        const DeepCollectionEquality().hash(square_meter_price),
        const DeepCollectionEquality().hash(flat_price),
        const DeepCollectionEquality().hash(postal_box),
        const DeepCollectionEquality().hash(fias_id),
        const DeepCollectionEquality().hash(fias_code),
        const DeepCollectionEquality().hash(fias_level),
        const DeepCollectionEquality().hash(fias_actuality_state),
        const DeepCollectionEquality().hash(kladr_id),
        const DeepCollectionEquality().hash(geoname_id),
        const DeepCollectionEquality().hash(capital_marker),
        const DeepCollectionEquality().hash(okato),
        const DeepCollectionEquality().hash(oktmo),
        const DeepCollectionEquality().hash(tax_office),
        const DeepCollectionEquality().hash(tax_office_legal),
        const DeepCollectionEquality().hash(timezone),
        const DeepCollectionEquality().hash(geo_lat),
        const DeepCollectionEquality().hash(geo_lon),
        const DeepCollectionEquality().hash(beltway_hit),
        const DeepCollectionEquality().hash(beltway_distance),
        const DeepCollectionEquality().hash(_metro),
        const DeepCollectionEquality().hash(divisions),
        const DeepCollectionEquality().hash(qc_geo),
        const DeepCollectionEquality().hash(qc_complete),
        const DeepCollectionEquality().hash(qc_house),
        const DeepCollectionEquality().hash(_history_values),
        const DeepCollectionEquality().hash(unparsed_parts),
        const DeepCollectionEquality().hash(source),
        const DeepCollectionEquality().hash(qc)
      ]);

  @JsonKey(ignore: true)
  @override
  _$$_DataAddressCopyWith<_$_DataAddress> get copyWith =>
      __$$_DataAddressCopyWithImpl<_$_DataAddress>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataAddressToJson(
      this,
    );
  }
}

abstract class _DataAddress implements DataAddress {
  const factory _DataAddress(
      {final String postal_code,
      final String country,
      final String country_iso_code,
      final String federal_district,
      final String region_fias_id,
      final String region_kladr_id,
      final String region_iso_code,
      final String region_with_type,
      final String region_type,
      final String region_type_full,
      final String region,
      final String area_fias_id,
      final String area_kladr_id,
      final String area_with_type,
      final String area_type,
      final String area_type_full,
      final String area,
      final String city_fias_id,
      final String city_kladr_id,
      final String city_with_type,
      final String city_type,
      final String city_type_full,
      final String city,
      final String city_area,
      final String city_district_fias_id,
      final String city_district_kladr_id,
      final String city_district_with_type,
      final String city_district_type,
      final String city_district_type_full,
      final String city_district,
      final String settlement_fias_id,
      final String settlement_kladr_id,
      final String settlement_with_type,
      final String settlement_type,
      final String settlement_type_full,
      final String settlement,
      final String street_fias_id,
      final String street_kladr_id,
      final String street_with_type,
      final String street_type,
      final String street_type_full,
      final String street,
      final String stead_fias_id,
      final String stead_cadnum,
      final String stead_type,
      final String stead_type_full,
      final String stead,
      final String house_fias_id,
      final String house_kladr_id,
      final String house_cadnum,
      final String house_type,
      final String house_type_full,
      final String house,
      final String block_type,
      final String block_type_full,
      final String block,
      final String entrance,
      final String floor,
      final String flat_fias_id,
      final String flat_cadnum,
      final String flat_type,
      final String flat_type_full,
      final String flat,
      final String flat_area,
      final String square_meter_price,
      final String flat_price,
      final String postal_box,
      final String fias_id,
      final String fias_code,
      final String fias_level,
      final String fias_actuality_state,
      final String kladr_id,
      final String geoname_id,
      final String capital_marker,
      final String okato,
      final String oktmo,
      final String tax_office,
      final String tax_office_legal,
      final String timezone,
      final String geo_lat,
      final String geo_lon,
      final String beltway_hit,
      final String beltway_distance,
      final List<String> metro,
      final String divisions,
      final String qc_geo,
      final String qc_complete,
      final String qc_house,
      final List<String> history_values,
      final String unparsed_parts,
      final String source,
      final String qc}) = _$_DataAddress;

  factory _DataAddress.fromJson(Map<String, dynamic> json) =
      _$_DataAddress.fromJson;

  @override
  String get postal_code;
  @override
  String get country;
  @override
  String get country_iso_code;
  @override
  String get federal_district;
  @override
  String get region_fias_id;
  @override
  String get region_kladr_id;
  @override
  String get region_iso_code;
  @override
  String get region_with_type;
  @override
  String get region_type;
  @override
  String get region_type_full;
  @override
  String get region;
  @override
  String get area_fias_id;
  @override
  String get area_kladr_id;
  @override
  String get area_with_type;
  @override
  String get area_type;
  @override
  String get area_type_full;
  @override
  String get area;
  @override
  String get city_fias_id;
  @override
  String get city_kladr_id;
  @override
  String get city_with_type;
  @override
  String get city_type;
  @override
  String get city_type_full;
  @override
  String get city;
  @override
  String get city_area;
  @override
  String get city_district_fias_id;
  @override
  String get city_district_kladr_id;
  @override
  String get city_district_with_type;
  @override
  String get city_district_type;
  @override
  String get city_district_type_full;
  @override
  String get city_district;
  @override
  String get settlement_fias_id;
  @override
  String get settlement_kladr_id;
  @override
  String get settlement_with_type;
  @override
  String get settlement_type;
  @override
  String get settlement_type_full;
  @override
  String get settlement;
  @override
  String get street_fias_id;
  @override
  String get street_kladr_id;
  @override
  String get street_with_type;
  @override
  String get street_type;
  @override
  String get street_type_full;
  @override
  String get street;
  @override
  String get stead_fias_id;
  @override
  String get stead_cadnum;
  @override
  String get stead_type;
  @override
  String get stead_type_full;
  @override
  String get stead;
  @override
  String get house_fias_id;
  @override
  String get house_kladr_id;
  @override
  String get house_cadnum;
  @override
  String get house_type;
  @override
  String get house_type_full;
  @override
  String get house;
  @override
  String get block_type;
  @override
  String get block_type_full;
  @override
  String get block;
  @override
  String get entrance;
  @override
  String get floor;
  @override
  String get flat_fias_id;
  @override
  String get flat_cadnum;
  @override
  String get flat_type;
  @override
  String get flat_type_full;
  @override
  String get flat;
  @override
  String get flat_area;
  @override
  String get square_meter_price;
  @override
  String get flat_price;
  @override
  String get postal_box;
  @override
  String get fias_id;
  @override
  String get fias_code;
  @override
  String get fias_level;
  @override
  String get fias_actuality_state;
  @override
  String get kladr_id;
  @override
  String get geoname_id;
  @override
  String get capital_marker;
  @override
  String get okato;
  @override
  String get oktmo;
  @override
  String get tax_office;
  @override
  String get tax_office_legal;
  @override
  String get timezone;
  @override
  String get geo_lat;
  @override
  String get geo_lon;
  @override
  String get beltway_hit;
  @override
  String get beltway_distance;
  @override
  List<String> get metro;
  @override
  String get divisions;
  @override
  String get qc_geo;
  @override
  String get qc_complete;
  @override
  String get qc_house;
  @override
  List<String> get history_values;
  @override
  String get unparsed_parts;
  @override
  String get source;
  @override
  String get qc;
  @override
  @JsonKey(ignore: true)
  _$$_DataAddressCopyWith<_$_DataAddress> get copyWith =>
      throw _privateConstructorUsedError;
}
