// ignore_for_file: constant_identifier_names

enum SortAscDesc { asc, desc }

enum NutrientName {
  water,
  k_potassium,
  na_sodium,
  p_phosphorus,
  ca_calcium,
  proteins,
  calorie,
  carbohydrates,
  fats,
  feed_ash,
  a_vitamin,
  retinol,
  beta_carotene,
  b1_vitamin_thiamine,
  b2_vitamin_riboflavin,
  b5_vitamin,
  b6_vitamin_pyridoxine,
  b9_vitamin_folates,
  b12_vitamin_cobalamin,
  c_vitamin,
  e_vitamin,
  rr_vitamin,
  niacin,
  mg_magnesium,
  s_sulfur,
  cl_chlorine,
  fe_iron,
  i_iodine,
  co_cobalt,
  mn_manganese,
  cu_copper,
  mo_molybdenum,
  ni_nickel,
  se_selenium,
  f_fluorine,
  cr_chrome,
  zh_zinc,
  cholesterol,
  saturated_fatty_acids,
  myristina,
  palmitic,
  stearic,
  arachinova,
  mono_fatty_acids,
  palmitoleic,
  heptadecene,
  omega_9_oleic,
  omega_9_gadolein,
  poly_fatty_acids,
  linoleic,
  linolenic,
  arachidonic,
  omega_3_epk,
  omega_3_fatty_acids,
  omega_3_dpc,
  omega_6_fatty_acids,
  dietary_fiber,
  mono_di_saccharides,
  organic_acids,
  b4_vitamin,
  d_Vitamin_calciferol,
  h_vitamin_biotin,
  k_vitamin_phylloquinone,
  al_aluminium,
  sn_tin,
  sr_strontium,
  galactose,
  glucose_dextrose,
  lactose,
  essential_amino_acids,
  arginine,
  valin,
  histidine,
  isoleucine,
  leucine,
  lysine,
  methionine,
  methionine_cysteine,
  threonine,
  tryptophan,
  phenylalanine,
  phenylalanine_tyrosine,
  substitutable_amino_acids,
  alanine,
  aspartica_acid,
  glycine,
  glutamic_acid,
  proline,
  serin,
  tyrosine,
  cysteine,
  oil_4_0,
  capron,
  caprylic,
  caprine,
  laurin,
  pentadecane,
  margarine,
  myristolein,
  sucrose,
  trans_fats,
  starch_dextrins,
  ethyl_alcohol,
  si_silicon,
  b_bohr,
  v_vanadium,
  li_lithium,
  rb_rubidium,
  zr_zirconium,
  omega_9_eruca,
  omega_3_stioride,
  omega_3_Docosahexaeno,
  beta_sitosterol,
  begenova,
  fructose,
  maltose,
  phytosterols,
  ti_titan,
  hydroxyproline,
  lignoceric,
  betaine,
  monoun_trans_fats,
  cis_16_1,
  cis_18_1,
  trance_18_1,
  mixed_isomers,
  omega_6_cis,
  conjugated_linoleic_acid,
  omega_3_alpha_linolenic,
  d3_vitamin_cholecalciferol,
  alpha_carotene,
  cryptoxanthin_beta,
  lutein_zeaxanthin,
  beta_tocopherol,
  gamma_tocopherol,
  trance_16_1,
  cis_22_1,
  omega_9_nervone,
  trans_isomer_undefined,
  omega_6_gamma_linolenic,
  trance_18_3,
  omega_6_eicosadieno,
  eicosatrieno,
  omega_6_20_3,
  omega_6_docosatetraeno,
  lycopene,
  tocopherol_delta,
  polyun_trans_fats,
  tridecane_13_0,
  omega_3,
  pentadecene,
  caffeine,
  theobromine,
  trans_trans,
  menaquinone_4,
  campesterol,
  stigmasterol,
  e_vitamin_added,
  b12_vitamin_added,
  trance_22_1,
  dihydrophylloquinone,
  d2_vitamin_ergocalciferol,
  omega_6_20_4,
  omega_3_geneico
}

/// {@template enum}
/// IncrDecrValue enumeration
/// {@endtemplate}
enum IncrDecrValue with Comparable<IncrDecrValue> {
  one('1'),
  five('5'),
  ten('10'),
  fifty('50');

  /// {@macro enum}
  const IncrDecrValue(this.value);

  /// Creates a new instance of [IncrDecrValue] from a given string.
  static IncrDecrValue fromValue(String? value, {IncrDecrValue? fallback}) {
    switch (value) {
      case '1':
        return one;
      case '5':
        return five;
      case '10':
        return ten;
      case '50':
        return fifty;
      default:
        return fallback ?? (throw ArgumentError.value(value));
    }
  }

  /// Value of the enum
  final String value;

  /// Pattern matching
  T map<T>({
    required T Function() one,
    required T Function() five,
    required T Function() ten,
    required T Function() fifty,
  }) {
    switch (this) {
      case IncrDecrValue.one:
        return one();
      case IncrDecrValue.five:
        return five();
      case IncrDecrValue.ten:
        return ten();
      case IncrDecrValue.fifty:
        return fifty();
    }
  }

  @override
  int compareTo(IncrDecrValue other) => index.compareTo(other.index);

  @override
  String toString() => value;
}

/// {@template enum}
/// WeightCalculationType enumeration
/// {@endtemplate}
enum WeightCalculationType with Comparable<WeightCalculationType> {
  /// increment weight
  increment('increment'),

  /// decrement weight
  decrement('decrement'),

  /// custom
  custom('custom');

  /// {@macro enum}
  const WeightCalculationType(this.value);

  /// Creates a new instance of [WeightCalculationType] from a given string.
  static WeightCalculationType fromValue(
    String? value, {
    WeightCalculationType? fallback,
  }) {
    switch (value) {
      case 'increment':
        return increment;
      case 'decrement':
        return decrement;
      case 'custom':
        return custom;
      default:
        return fallback ?? (throw ArgumentError.value(value));
    }
  }

  /// Value of the enum
  final String value;

  /// Pattern matching
  T map<T>({
    required T Function() increment,
    required T Function() decrement,
    required T Function() custom,
  }) {
    switch (this) {
      case WeightCalculationType.increment:
        return increment();
      case WeightCalculationType.decrement:
        return decrement();
      case WeightCalculationType.custom:
        return custom();
    }
  }

  /// Pattern matching
  T maybeMap<T>({
    required T Function() orElse,
    T Function()? increment,
    T Function()? decrement,
    T Function()? custom,
  }) =>
      map<T>(
        increment: increment ?? orElse,
        decrement: decrement ?? orElse,
        custom: custom ?? orElse,
      );

  /// Pattern matching
  T? maybeMapOrNull<T>({
    T Function()? increment,
    T Function()? decrement,
    T Function()? custom,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        increment: increment,
        decrement: decrement,
        custom: custom,
      );

  @override
  int compareTo(WeightCalculationType other) => index.compareTo(other.index);

  @override
  String toString() => value;
}

/// {@template enum}
/// Locale enumeration
/// {@endtemplate}
enum Locale with Comparable<Locale> {
  /// runtimeType
  ru('ru'),

  /// en-
  en('en');

  /// {@macro enum}
  const Locale(this.value);

  /// Creates a new instance of [Locale] from a given string.
  static Locale fromValue(String? value, {Locale? fallback}) {
    switch (value) {
      case 'ru':
        return ru;
      case 'en':
        return en;

      default:
        return fallback ?? (throw ArgumentError.value(value));
    }
  }

  /// Value of the enum
  final String value;

  /// Pattern matching
  T map<T>({
    required T Function() ru,
    required T Function() en,
  }) {
    switch (this) {
      case Locale.ru:
        return ru();
      case Locale.en:
        return en();
    }
  }

  /// Pattern matching
  T maybeMap<T>({
    required T Function() orElse,
    T Function()? ru,
    T Function()? en,
  }) =>
      map<T>(
        ru: ru ?? orElse,
        en: en ?? orElse,
      );

  /// Pattern matching
  T? maybeMapOrNull<T>({
    T Function()? ru,
    T Function()? en,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        ru: ru,
        en: en,
      );

  @override
  int compareTo(Locale other) => index.compareTo(other.index);

  @override
  String toString() => value;
}
