// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'passport_code_name_m.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PassportCodeName _$PassportCodeNameFromJson(Map<String, dynamic> json) {
  return _PassportCodeName.fromJson(json);
}

/// @nodoc
mixin _$PassportCodeName {
  List<PassportCodeNameSuggestions> get suggestions =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PassportCodeNameCopyWith<PassportCodeName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PassportCodeNameCopyWith<$Res> {
  factory $PassportCodeNameCopyWith(
          PassportCodeName value, $Res Function(PassportCodeName) then) =
      _$PassportCodeNameCopyWithImpl<$Res>;
  $Res call({List<PassportCodeNameSuggestions> suggestions});
}

/// @nodoc
class _$PassportCodeNameCopyWithImpl<$Res>
    implements $PassportCodeNameCopyWith<$Res> {
  _$PassportCodeNameCopyWithImpl(this._value, this._then);

  final PassportCodeName _value;
  // ignore: unused_field
  final $Res Function(PassportCodeName) _then;

  @override
  $Res call({
    Object? suggestions = freezed,
  }) {
    return _then(_value.copyWith(
      suggestions: suggestions == freezed
          ? _value.suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<PassportCodeNameSuggestions>,
    ));
  }
}

/// @nodoc
abstract class _$$_PassportCodeNameCopyWith<$Res>
    implements $PassportCodeNameCopyWith<$Res> {
  factory _$$_PassportCodeNameCopyWith(
          _$_PassportCodeName value, $Res Function(_$_PassportCodeName) then) =
      __$$_PassportCodeNameCopyWithImpl<$Res>;
  @override
  $Res call({List<PassportCodeNameSuggestions> suggestions});
}

/// @nodoc
class __$$_PassportCodeNameCopyWithImpl<$Res>
    extends _$PassportCodeNameCopyWithImpl<$Res>
    implements _$$_PassportCodeNameCopyWith<$Res> {
  __$$_PassportCodeNameCopyWithImpl(
      _$_PassportCodeName _value, $Res Function(_$_PassportCodeName) _then)
      : super(_value, (v) => _then(v as _$_PassportCodeName));

  @override
  _$_PassportCodeName get _value => super._value as _$_PassportCodeName;

  @override
  $Res call({
    Object? suggestions = freezed,
  }) {
    return _then(_$_PassportCodeName(
      suggestions == freezed
          ? _value._suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<PassportCodeNameSuggestions>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PassportCodeName implements _PassportCodeName {
  const _$_PassportCodeName(final List<PassportCodeNameSuggestions> suggestions)
      : _suggestions = suggestions;

  factory _$_PassportCodeName.fromJson(Map<String, dynamic> json) =>
      _$$_PassportCodeNameFromJson(json);

  final List<PassportCodeNameSuggestions> _suggestions;
  @override
  List<PassportCodeNameSuggestions> get suggestions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_suggestions);
  }

  @override
  String toString() {
    return 'PassportCodeName(suggestions: $suggestions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PassportCodeName &&
            const DeepCollectionEquality()
                .equals(other._suggestions, _suggestions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_suggestions));

  @JsonKey(ignore: true)
  @override
  _$$_PassportCodeNameCopyWith<_$_PassportCodeName> get copyWith =>
      __$$_PassportCodeNameCopyWithImpl<_$_PassportCodeName>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PassportCodeNameToJson(
      this,
    );
  }
}

abstract class _PassportCodeName implements PassportCodeName {
  const factory _PassportCodeName(
          final List<PassportCodeNameSuggestions> suggestions) =
      _$_PassportCodeName;

  factory _PassportCodeName.fromJson(Map<String, dynamic> json) =
      _$_PassportCodeName.fromJson;

  @override
  List<PassportCodeNameSuggestions> get suggestions;
  @override
  @JsonKey(ignore: true)
  _$$_PassportCodeNameCopyWith<_$_PassportCodeName> get copyWith =>
      throw _privateConstructorUsedError;
}

PassportCodeNameSuggestions _$PassportCodeNameSuggestionsFromJson(
    Map<String, dynamic> json) {
  return _PassportCodeNameSuggestions.fromJson(json);
}

/// @nodoc
mixin _$PassportCodeNameSuggestions {
  String get value => throw _privateConstructorUsedError;
  String get unrestricted_value => throw _privateConstructorUsedError;
  PassportCodeNameData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PassportCodeNameSuggestionsCopyWith<PassportCodeNameSuggestions>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PassportCodeNameSuggestionsCopyWith<$Res> {
  factory $PassportCodeNameSuggestionsCopyWith(
          PassportCodeNameSuggestions value,
          $Res Function(PassportCodeNameSuggestions) then) =
      _$PassportCodeNameSuggestionsCopyWithImpl<$Res>;
  $Res call(
      {String value, String unrestricted_value, PassportCodeNameData data});

  $PassportCodeNameDataCopyWith<$Res> get data;
}

/// @nodoc
class _$PassportCodeNameSuggestionsCopyWithImpl<$Res>
    implements $PassportCodeNameSuggestionsCopyWith<$Res> {
  _$PassportCodeNameSuggestionsCopyWithImpl(this._value, this._then);

  final PassportCodeNameSuggestions _value;
  // ignore: unused_field
  final $Res Function(PassportCodeNameSuggestions) _then;

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
              as PassportCodeNameData,
    ));
  }

  @override
  $PassportCodeNameDataCopyWith<$Res> get data {
    return $PassportCodeNameDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$$_PassportCodeNameSuggestionsCopyWith<$Res>
    implements $PassportCodeNameSuggestionsCopyWith<$Res> {
  factory _$$_PassportCodeNameSuggestionsCopyWith(
          _$_PassportCodeNameSuggestions value,
          $Res Function(_$_PassportCodeNameSuggestions) then) =
      __$$_PassportCodeNameSuggestionsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String value, String unrestricted_value, PassportCodeNameData data});

  @override
  $PassportCodeNameDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_PassportCodeNameSuggestionsCopyWithImpl<$Res>
    extends _$PassportCodeNameSuggestionsCopyWithImpl<$Res>
    implements _$$_PassportCodeNameSuggestionsCopyWith<$Res> {
  __$$_PassportCodeNameSuggestionsCopyWithImpl(
      _$_PassportCodeNameSuggestions _value,
      $Res Function(_$_PassportCodeNameSuggestions) _then)
      : super(_value, (v) => _then(v as _$_PassportCodeNameSuggestions));

  @override
  _$_PassportCodeNameSuggestions get _value =>
      super._value as _$_PassportCodeNameSuggestions;

  @override
  $Res call({
    Object? value = freezed,
    Object? unrestricted_value = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_PassportCodeNameSuggestions(
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
              as PassportCodeNameData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PassportCodeNameSuggestions implements _PassportCodeNameSuggestions {
  const _$_PassportCodeNameSuggestions(
      {this.value = '',
      this.unrestricted_value = '',
      this.data = const PassportCodeNameData()});

  factory _$_PassportCodeNameSuggestions.fromJson(Map<String, dynamic> json) =>
      _$$_PassportCodeNameSuggestionsFromJson(json);

  @override
  @JsonKey()
  final String value;
  @override
  @JsonKey()
  final String unrestricted_value;
  @override
  @JsonKey()
  final PassportCodeNameData data;

  @override
  String toString() {
    return 'PassportCodeNameSuggestions(value: $value, unrestricted_value: $unrestricted_value, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PassportCodeNameSuggestions &&
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
  _$$_PassportCodeNameSuggestionsCopyWith<_$_PassportCodeNameSuggestions>
      get copyWith => __$$_PassportCodeNameSuggestionsCopyWithImpl<
          _$_PassportCodeNameSuggestions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PassportCodeNameSuggestionsToJson(
      this,
    );
  }
}

abstract class _PassportCodeNameSuggestions
    implements PassportCodeNameSuggestions {
  const factory _PassportCodeNameSuggestions(
      {final String value,
      final String unrestricted_value,
      final PassportCodeNameData data}) = _$_PassportCodeNameSuggestions;

  factory _PassportCodeNameSuggestions.fromJson(Map<String, dynamic> json) =
      _$_PassportCodeNameSuggestions.fromJson;

  @override
  String get value;
  @override
  String get unrestricted_value;
  @override
  PassportCodeNameData get data;
  @override
  @JsonKey(ignore: true)
  _$$_PassportCodeNameSuggestionsCopyWith<_$_PassportCodeNameSuggestions>
      get copyWith => throw _privateConstructorUsedError;
}

PassportCodeNameData _$PassportCodeNameDataFromJson(Map<String, dynamic> json) {
  return _PassportCodeNameData.fromJson(json);
}

/// @nodoc
mixin _$PassportCodeNameData {
  String get code => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get region_code => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PassportCodeNameDataCopyWith<PassportCodeNameData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PassportCodeNameDataCopyWith<$Res> {
  factory $PassportCodeNameDataCopyWith(PassportCodeNameData value,
          $Res Function(PassportCodeNameData) then) =
      _$PassportCodeNameDataCopyWithImpl<$Res>;
  $Res call({String code, String name, String region_code, String type});
}

/// @nodoc
class _$PassportCodeNameDataCopyWithImpl<$Res>
    implements $PassportCodeNameDataCopyWith<$Res> {
  _$PassportCodeNameDataCopyWithImpl(this._value, this._then);

  final PassportCodeNameData _value;
  // ignore: unused_field
  final $Res Function(PassportCodeNameData) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
    Object? region_code = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      region_code: region_code == freezed
          ? _value.region_code
          : region_code // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_PassportCodeNameDataCopyWith<$Res>
    implements $PassportCodeNameDataCopyWith<$Res> {
  factory _$$_PassportCodeNameDataCopyWith(_$_PassportCodeNameData value,
          $Res Function(_$_PassportCodeNameData) then) =
      __$$_PassportCodeNameDataCopyWithImpl<$Res>;
  @override
  $Res call({String code, String name, String region_code, String type});
}

/// @nodoc
class __$$_PassportCodeNameDataCopyWithImpl<$Res>
    extends _$PassportCodeNameDataCopyWithImpl<$Res>
    implements _$$_PassportCodeNameDataCopyWith<$Res> {
  __$$_PassportCodeNameDataCopyWithImpl(_$_PassportCodeNameData _value,
      $Res Function(_$_PassportCodeNameData) _then)
      : super(_value, (v) => _then(v as _$_PassportCodeNameData));

  @override
  _$_PassportCodeNameData get _value => super._value as _$_PassportCodeNameData;

  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
    Object? region_code = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_PassportCodeNameData(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      region_code: region_code == freezed
          ? _value.region_code
          : region_code // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PassportCodeNameData implements _PassportCodeNameData {
  const _$_PassportCodeNameData(
      {this.code = '', this.name = '', this.region_code = '', this.type = ''});

  factory _$_PassportCodeNameData.fromJson(Map<String, dynamic> json) =>
      _$$_PassportCodeNameDataFromJson(json);

  @override
  @JsonKey()
  final String code;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String region_code;
  @override
  @JsonKey()
  final String type;

  @override
  String toString() {
    return 'PassportCodeNameData(code: $code, name: $name, region_code: $region_code, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PassportCodeNameData &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.region_code, region_code) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(region_code),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$$_PassportCodeNameDataCopyWith<_$_PassportCodeNameData> get copyWith =>
      __$$_PassportCodeNameDataCopyWithImpl<_$_PassportCodeNameData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PassportCodeNameDataToJson(
      this,
    );
  }
}

abstract class _PassportCodeNameData implements PassportCodeNameData {
  const factory _PassportCodeNameData(
      {final String code,
      final String name,
      final String region_code,
      final String type}) = _$_PassportCodeNameData;

  factory _PassportCodeNameData.fromJson(Map<String, dynamic> json) =
      _$_PassportCodeNameData.fromJson;

  @override
  String get code;
  @override
  String get name;
  @override
  String get region_code;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$_PassportCodeNameDataCopyWith<_$_PassportCodeNameData> get copyWith =>
      throw _privateConstructorUsedError;
}
