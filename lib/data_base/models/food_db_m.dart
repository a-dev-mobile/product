// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names, lines_longer_than_80_chars
import 'dart:convert';

import 'package:flutter/material.dart';

@immutable
class FoodDbModel {
  final int id_product;
  final String ru_product_name;
  final String en_product_name;
  final String id_category;
  final String en_category_name;
  final String ru_category_name;
  final String id_source;
  final String en_source_name;
  final String ru_source_name;
  final double water;
  final double k_potassium;
  final double na_sodium;
  final double proteins;
  final double carbohydrates;
  final double fats;
  final double calorie;
  final double p_phosphorus;
  final double ca_calcium;
  final double feed_ash;
  final double a_vitamin;
  final double retinol;
  final double beta_carotene;
  final double b1_vitamin_thiamine;
  final double b2_vitamin_riboflavin;
  final double b5_vitamin;
  final double b6_vitamin_pyridoxine;
  final double b9_vitamin_folates;
  final double b12_vitamin_cobalamin;
  final double c_vitamin;
  final double e_vitamin;
  final double rr_vitamin;
  final double niacin;
  final double mg_magnesium;
  final double s_sulfur;
  final double cl_chlorine;
  final double fe_iron;
  final double i_iodine;
  final double co_cobalt;
  final double mn_manganese;
  final double cu_copper;
  final double mo_molybdenum;
  final double ni_nickel;
  final double se_selenium;
  final double f_fluorine;
  final double cr_chrome;
  final double zh_zinc;
  final double cholesterol;
  final double saturated_fatty_acids;
  final double myristina;
  final double palmitic;
  final double stearic;
  final double arachinova;
  final double mono_fatty_acids;
  final double palmitoleic;
  final double heptadecene;
  final double omega_9_oleic;
  final double omega_9_gadolein;
  final double poly_fatty_acids;
  final double linoleic;
  final double linolenic;
  final double arachidonic;
  final double omega_3_epk;
  final double omega_3_fatty_acids;
  final double omega_3_dpc;
  final double omega_6_fatty_acids;
  final double dietary_fiber;
  final double mono_di_saccharides;
  final double organic_acids;
  final double b4_vitamin;
  final double d_vitamin_calciferol;
  final double h_vitamin_biotin;
  final double k_vitamin_phylloquinone;
  final double al_aluminium;
  final double sn_tin;
  final double sr_strontium;
  final double galactose;
  final double glucose_dextrose;
  final double lactose;
  final double essential_amino_acids;
  final double arginine;
  final double valin;
  final double histidine;
  final double isoleucine;
  final double leucine;
  final double lysine;
  final double methionine;
  final double methionine_cysteine;
  final double threonine;
  final double tryptophan;
  final double phenylalanine;
  final double phenylalanine_tyrosine;
  final double substitutable_amino_acids;
  final double alanine;
  final double aspartica_acid;
  final double glycine;
  final double glutamic_acid;
  final double proline;
  final double serin;
  final double tyrosine;
  final double cysteine;
  final double oil_4_0;
  final double capron;
  final double caprylic;
  final double caprine;
  final double laurin;
  final double pentadecane;
  final double margarine;
  final double myristolein;
  final double sucrose;
  final double trans_fats;
  final double starch_dextrins;
  final double ethyl_alcohol;
  final double si_silicon;
  final double b_bohr;
  final double v_vanadium;
  final double li_lithium;
  final double rb_rubidium;
  final double zr_zirconium;
  final double omega_9_eruca;
  final double omega_3_stioride;
  final double omega_3_Docosahexaeno;
  final double beta_sitosterol;
  final double begenova;
  final double fructose;
  final double maltose;
  final double phytosterols;
  final double ti_titan;
  final double hydroxyproline;
  final double lignoceric;
  final double betaine;
  final double monoun_trans_fats;
  final double cis_16_1;
  final double cis_18_1;
  final double trance_18_1;
  final double mixed_isomers;
  final double omega_6_cis;
  final double conjugated_linoleic_acid;
  final double omega_3_alpha_linolenic;
  final double d3_vitamin_cholecalciferol;
  final double alpha_carotene;
  final double cryptoxanthin_beta;
  final double lutein_zeaxanthin;
  final double beta_tocopherol;
  final double gamma_tocopherol;
  final double trance_16_1;
  final double cis_22_1;
  final double omega_9_nervone;
  final double trans_isomer_undefined;
  final double omega_6_gamma_linolenic;
  final double trance_18_3;
  final double omega_6_eicosadieno;
  final double eicosatrieno;
  final double omega_6_20_3;
  final double omega_6_docosatetraeno;
  final double lycopene;
  final double tocopherol_delta;
  final double polyun_trans_fats;
  final double tridecane_13_0;
  final double omega_3;
  final double pentadecene;
  final double caffeine;
  final double theobromine;
  final double trans_trans;
  final double menaquinone_4;
  final double campesterol;
  final double stigmasterol;
  final double e_vitamin_added;
  final double b12_vitamin_added;
  final double trance_22_1;
  final double dihydrophylloquinone;
  final double d2_vitamin_ergocalciferol;
  final double omega_6_20_4;
  final double omega_3_geneico;
  const FoodDbModel({
    this.id_product = 0,
    this.ru_product_name = '',
    this.en_product_name = '',
    this.id_category = '',
    this.en_category_name = '',
    this.ru_category_name = '',
    this.id_source = '',
    this.en_source_name = '',
    this.ru_source_name = '',
    this.water = 0.0,
    this.k_potassium = 0.0,
    this.na_sodium = 0.0,
    this.proteins = 0.0,
    this.carbohydrates = 0.0,
    this.fats = 0.0,
    this.calorie = 0.0,
    this.p_phosphorus = 0.0,
    this.ca_calcium = 0.0,
    this.feed_ash = 0.0,
    this.a_vitamin = 0.0,
    this.retinol = 0.0,
    this.beta_carotene = 0.0,
    this.b1_vitamin_thiamine = 0.0,
    this.b2_vitamin_riboflavin = 0.0,
    this.b5_vitamin = 0.0,
    this.b6_vitamin_pyridoxine = 0.0,
    this.b9_vitamin_folates = 0.0,
    this.b12_vitamin_cobalamin = 0.0,
    this.c_vitamin = 0.0,
    this.e_vitamin = 0.0,
    this.rr_vitamin = 0.0,
    this.niacin = 0.0,
    this.mg_magnesium = 0.0,
    this.s_sulfur = 0.0,
    this.cl_chlorine = 0.0,
    this.fe_iron = 0.0,
    this.i_iodine = 0.0,
    this.co_cobalt = 0.0,
    this.mn_manganese = 0.0,
    this.cu_copper = 0.0,
    this.mo_molybdenum = 0.0,
    this.ni_nickel = 0.0,
    this.se_selenium = 0.0,
    this.f_fluorine = 0.0,
    this.cr_chrome = 0.0,
    this.zh_zinc = 0.0,
    this.cholesterol = 0.0,
    this.saturated_fatty_acids = 0.0,
    this.myristina = 0.0,
    this.palmitic = 0.0,
    this.stearic = 0.0,
    this.arachinova = 0.0,
    this.mono_fatty_acids = 0.0,
    this.palmitoleic = 0.0,
    this.heptadecene = 0.0,
    this.omega_9_oleic = 0.0,
    this.omega_9_gadolein = 0.0,
    this.poly_fatty_acids = 0.0,
    this.linoleic = 0.0,
    this.linolenic = 0.0,
    this.arachidonic = 0.0,
    this.omega_3_epk = 0.0,
    this.omega_3_fatty_acids = 0.0,
    this.omega_3_dpc = 0.0,
    this.omega_6_fatty_acids = 0.0,
    this.dietary_fiber = 0.0,
    this.mono_di_saccharides = 0.0,
    this.organic_acids = 0.0,
    this.b4_vitamin = 0.0,
    this.d_vitamin_calciferol = 0.0,
    this.h_vitamin_biotin = 0.0,
    this.k_vitamin_phylloquinone = 0.0,
    this.al_aluminium = 0.0,
    this.sn_tin = 0.0,
    this.sr_strontium = 0.0,
    this.galactose = 0.0,
    this.glucose_dextrose = 0.0,
    this.lactose = 0.0,
    this.essential_amino_acids = 0.0,
    this.arginine = 0.0,
    this.valin = 0.0,
    this.histidine = 0.0,
    this.isoleucine = 0.0,
    this.leucine = 0.0,
    this.lysine = 0.0,
    this.methionine = 0.0,
    this.methionine_cysteine = 0.0,
    this.threonine = 0.0,
    this.tryptophan = 0.0,
    this.phenylalanine = 0.0,
    this.phenylalanine_tyrosine = 0.0,
    this.substitutable_amino_acids = 0.0,
    this.alanine = 0.0,
    this.aspartica_acid = 0.0,
    this.glycine = 0.0,
    this.glutamic_acid = 0.0,
    this.proline = 0.0,
    this.serin = 0.0,
    this.tyrosine = 0.0,
    this.cysteine = 0.0,
    this.oil_4_0 = 0.0,
    this.capron = 0.0,
    this.caprylic = 0.0,
    this.caprine = 0.0,
    this.laurin = 0.0,
    this.pentadecane = 0.0,
    this.margarine = 0.0,
    this.myristolein = 0.0,
    this.sucrose = 0.0,
    this.trans_fats = 0.0,
    this.starch_dextrins = 0.0,
    this.ethyl_alcohol = 0.0,
    this.si_silicon = 0.0,
    this.b_bohr = 0.0,
    this.v_vanadium = 0.0,
    this.li_lithium = 0.0,
    this.rb_rubidium = 0.0,
    this.zr_zirconium = 0.0,
    this.omega_9_eruca = 0.0,
    this.omega_3_stioride = 0.0,
    this.omega_3_Docosahexaeno = 0.0,
    this.beta_sitosterol = 0.0,
    this.begenova = 0.0,
    this.fructose = 0.0,
    this.maltose = 0.0,
    this.phytosterols = 0.0,
    this.ti_titan = 0.0,
    this.hydroxyproline = 0.0,
    this.lignoceric = 0.0,
    this.betaine = 0.0,
    this.monoun_trans_fats = 0.0,
    this.cis_16_1 = 0.0,
    this.cis_18_1 = 0.0,
    this.trance_18_1 = 0.0,
    this.mixed_isomers = 0.0,
    this.omega_6_cis = 0.0,
    this.conjugated_linoleic_acid = 0.0,
    this.omega_3_alpha_linolenic = 0.0,
    this.d3_vitamin_cholecalciferol = 0.0,
    this.alpha_carotene = 0.0,
    this.cryptoxanthin_beta = 0.0,
    this.lutein_zeaxanthin = 0.0,
    this.beta_tocopherol = 0.0,
    this.gamma_tocopherol = 0.0,
    this.trance_16_1 = 0.0,
    this.cis_22_1 = 0.0,
    this.omega_9_nervone = 0.0,
    this.trans_isomer_undefined = 0.0,
    this.omega_6_gamma_linolenic = 0.0,
    this.trance_18_3 = 0.0,
    this.omega_6_eicosadieno = 0.0,
    this.eicosatrieno = 0.0,
    this.omega_6_20_3 = 0.0,
    this.omega_6_docosatetraeno = 0.0,
    this.lycopene = 0.0,
    this.tocopherol_delta = 0.0,
    this.polyun_trans_fats = 0.0,
    this.tridecane_13_0 = 0.0,
    this.omega_3 = 0.0,
    this.pentadecene = 0.0,
    this.caffeine = 0.0,
    this.theobromine = 0.0,
    this.trans_trans = 0.0,
    this.menaquinone_4 = 0.0,
    this.campesterol = 0.0,
    this.stigmasterol = 0.0,
    this.e_vitamin_added = 0.0,
    this.b12_vitamin_added = 0.0,
    this.trance_22_1 = 0.0,
    this.dihydrophylloquinone = 0.0,
    this.d2_vitamin_ergocalciferol = 0.0,
    this.omega_6_20_4 = 0.0,
    this.omega_3_geneico = 0.0,
  });

  FoodDbModel copyWith({
    int? id_product,
    String? ru_product_name,
    String? en_product_name,
    String? id_category,
    String? en_category_name,
    String? ru_category_name,
    String? id_source,
    String? en_source_name,
    String? ru_source_name,
    double? water,
    double? k_potassium,
    double? na_sodium,
    double? proteins,
    double? carbohydrates,
    double? fats,
    double? calorie,
    double? p_phosphorus,
    double? ca_calcium,
    double? feed_ash,
    double? a_vitamin,
    double? retinol,
    double? beta_carotene,
    double? b1_vitamin_thiamine,
    double? b2_vitamin_riboflavin,
    double? b5_vitamin,
    double? b6_vitamin_pyridoxine,
    double? b9_vitamin_folates,
    double? b12_vitamin_cobalamin,
    double? c_vitamin,
    double? e_vitamin,
    double? rr_vitamin,
    double? niacin,
    double? mg_magnesium,
    double? s_sulfur,
    double? cl_chlorine,
    double? fe_iron,
    double? i_iodine,
    double? co_cobalt,
    double? mn_manganese,
    double? cu_copper,
    double? mo_molybdenum,
    double? ni_nickel,
    double? se_selenium,
    double? f_fluorine,
    double? cr_chrome,
    double? zh_zinc,
    double? cholesterol,
    double? saturated_fatty_acids,
    double? myristina,
    double? palmitic,
    double? stearic,
    double? arachinova,
    double? mono_fatty_acids,
    double? palmitoleic,
    double? heptadecene,
    double? omega_9_oleic,
    double? omega_9_gadolein,
    double? poly_fatty_acids,
    double? linoleic,
    double? linolenic,
    double? arachidonic,
    double? omega_3_epk,
    double? omega_3_fatty_acids,
    double? omega_3_dpc,
    double? omega_6_fatty_acids,
    double? dietary_fiber,
    double? mono_di_saccharides,
    double? organic_acids,
    double? b4_vitamin,
    double? d_vitamin_calciferol,
    double? h_vitamin_biotin,
    double? k_vitamin_phylloquinone,
    double? al_aluminium,
    double? sn_tin,
    double? sr_strontium,
    double? galactose,
    double? glucose_dextrose,
    double? lactose,
    double? essential_amino_acids,
    double? arginine,
    double? valin,
    double? histidine,
    double? isoleucine,
    double? leucine,
    double? lysine,
    double? methionine,
    double? methionine_cysteine,
    double? threonine,
    double? tryptophan,
    double? phenylalanine,
    double? phenylalanine_tyrosine,
    double? substitutable_amino_acids,
    double? alanine,
    double? aspartica_acid,
    double? glycine,
    double? glutamic_acid,
    double? proline,
    double? serin,
    double? tyrosine,
    double? cysteine,
    double? oil_4_0,
    double? capron,
    double? caprylic,
    double? caprine,
    double? laurin,
    double? pentadecane,
    double? margarine,
    double? myristolein,
    double? sucrose,
    double? trans_fats,
    double? starch_dextrins,
    double? ethyl_alcohol,
    double? si_silicon,
    double? b_bohr,
    double? v_vanadium,
    double? li_lithium,
    double? rb_rubidium,
    double? zr_zirconium,
    double? omega_9_eruca,
    double? omega_3_stioride,
    double? omega_3_Docosahexaeno,
    double? beta_sitosterol,
    double? begenova,
    double? fructose,
    double? maltose,
    double? phytosterols,
    double? ti_titan,
    double? hydroxyproline,
    double? lignoceric,
    double? betaine,
    double? monoun_trans_fats,
    double? cis_16_1,
    double? cis_18_1,
    double? trance_18_1,
    double? mixed_isomers,
    double? omega_6_cis,
    double? conjugated_linoleic_acid,
    double? omega_3_alpha_linolenic,
    double? d3_vitamin_cholecalciferol,
    double? alpha_carotene,
    double? cryptoxanthin_beta,
    double? lutein_zeaxanthin,
    double? beta_tocopherol,
    double? gamma_tocopherol,
    double? trance_16_1,
    double? cis_22_1,
    double? omega_9_nervone,
    double? trans_isomer_undefined,
    double? omega_6_gamma_linolenic,
    double? trance_18_3,
    double? omega_6_eicosadieno,
    double? eicosatrieno,
    double? omega_6_20_3,
    double? omega_6_docosatetraeno,
    double? lycopene,
    double? tocopherol_delta,
    double? polyun_trans_fats,
    double? tridecane_13_0,
    double? omega_3,
    double? pentadecene,
    double? caffeine,
    double? theobromine,
    double? trans_trans,
    double? menaquinone_4,
    double? campesterol,
    double? stigmasterol,
    double? e_vitamin_added,
    double? b12_vitamin_added,
    double? trance_22_1,
    double? dihydrophylloquinone,
    double? d2_vitamin_ergocalciferol,
    double? omega_6_20_4,
    double? omega_3_geneico,
  }) {
    return FoodDbModel(
      id_product: id_product ?? this.id_product,
      ru_product_name: ru_product_name ?? this.ru_product_name,
      en_product_name: en_product_name ?? this.en_product_name,
      id_category: id_category ?? this.id_category,
      en_category_name: en_category_name ?? this.en_category_name,
      ru_category_name: ru_category_name ?? this.ru_category_name,
      id_source: id_source ?? this.id_source,
      en_source_name: en_source_name ?? this.en_source_name,
      ru_source_name: ru_source_name ?? this.ru_source_name,
      water: water ?? this.water,
      k_potassium: k_potassium ?? this.k_potassium,
      na_sodium: na_sodium ?? this.na_sodium,
      proteins: proteins ?? this.proteins,
      carbohydrates: carbohydrates ?? this.carbohydrates,
      fats: fats ?? this.fats,
      calorie: calorie ?? this.calorie,
      p_phosphorus: p_phosphorus ?? this.p_phosphorus,
      ca_calcium: ca_calcium ?? this.ca_calcium,
      feed_ash: feed_ash ?? this.feed_ash,
      a_vitamin: a_vitamin ?? this.a_vitamin,
      retinol: retinol ?? this.retinol,
      beta_carotene: beta_carotene ?? this.beta_carotene,
      b1_vitamin_thiamine: b1_vitamin_thiamine ?? this.b1_vitamin_thiamine,
      b2_vitamin_riboflavin:
          b2_vitamin_riboflavin ?? this.b2_vitamin_riboflavin,
      b5_vitamin: b5_vitamin ?? this.b5_vitamin,
      b6_vitamin_pyridoxine:
          b6_vitamin_pyridoxine ?? this.b6_vitamin_pyridoxine,
      b9_vitamin_folates: b9_vitamin_folates ?? this.b9_vitamin_folates,
      b12_vitamin_cobalamin:
          b12_vitamin_cobalamin ?? this.b12_vitamin_cobalamin,
      c_vitamin: c_vitamin ?? this.c_vitamin,
      e_vitamin: e_vitamin ?? this.e_vitamin,
      rr_vitamin: rr_vitamin ?? this.rr_vitamin,
      niacin: niacin ?? this.niacin,
      mg_magnesium: mg_magnesium ?? this.mg_magnesium,
      s_sulfur: s_sulfur ?? this.s_sulfur,
      cl_chlorine: cl_chlorine ?? this.cl_chlorine,
      fe_iron: fe_iron ?? this.fe_iron,
      i_iodine: i_iodine ?? this.i_iodine,
      co_cobalt: co_cobalt ?? this.co_cobalt,
      mn_manganese: mn_manganese ?? this.mn_manganese,
      cu_copper: cu_copper ?? this.cu_copper,
      mo_molybdenum: mo_molybdenum ?? this.mo_molybdenum,
      ni_nickel: ni_nickel ?? this.ni_nickel,
      se_selenium: se_selenium ?? this.se_selenium,
      f_fluorine: f_fluorine ?? this.f_fluorine,
      cr_chrome: cr_chrome ?? this.cr_chrome,
      zh_zinc: zh_zinc ?? this.zh_zinc,
      cholesterol: cholesterol ?? this.cholesterol,
      saturated_fatty_acids:
          saturated_fatty_acids ?? this.saturated_fatty_acids,
      myristina: myristina ?? this.myristina,
      palmitic: palmitic ?? this.palmitic,
      stearic: stearic ?? this.stearic,
      arachinova: arachinova ?? this.arachinova,
      mono_fatty_acids: mono_fatty_acids ?? this.mono_fatty_acids,
      palmitoleic: palmitoleic ?? this.palmitoleic,
      heptadecene: heptadecene ?? this.heptadecene,
      omega_9_oleic: omega_9_oleic ?? this.omega_9_oleic,
      omega_9_gadolein: omega_9_gadolein ?? this.omega_9_gadolein,
      poly_fatty_acids: poly_fatty_acids ?? this.poly_fatty_acids,
      linoleic: linoleic ?? this.linoleic,
      linolenic: linolenic ?? this.linolenic,
      arachidonic: arachidonic ?? this.arachidonic,
      omega_3_epk: omega_3_epk ?? this.omega_3_epk,
      omega_3_fatty_acids: omega_3_fatty_acids ?? this.omega_3_fatty_acids,
      omega_3_dpc: omega_3_dpc ?? this.omega_3_dpc,
      omega_6_fatty_acids: omega_6_fatty_acids ?? this.omega_6_fatty_acids,
      dietary_fiber: dietary_fiber ?? this.dietary_fiber,
      mono_di_saccharides: mono_di_saccharides ?? this.mono_di_saccharides,
      organic_acids: organic_acids ?? this.organic_acids,
      b4_vitamin: b4_vitamin ?? this.b4_vitamin,
      d_vitamin_calciferol: d_vitamin_calciferol ?? this.d_vitamin_calciferol,
      h_vitamin_biotin: h_vitamin_biotin ?? this.h_vitamin_biotin,
      k_vitamin_phylloquinone:
          k_vitamin_phylloquinone ?? this.k_vitamin_phylloquinone,
      al_aluminium: al_aluminium ?? this.al_aluminium,
      sn_tin: sn_tin ?? this.sn_tin,
      sr_strontium: sr_strontium ?? this.sr_strontium,
      galactose: galactose ?? this.galactose,
      glucose_dextrose: glucose_dextrose ?? this.glucose_dextrose,
      lactose: lactose ?? this.lactose,
      essential_amino_acids:
          essential_amino_acids ?? this.essential_amino_acids,
      arginine: arginine ?? this.arginine,
      valin: valin ?? this.valin,
      histidine: histidine ?? this.histidine,
      isoleucine: isoleucine ?? this.isoleucine,
      leucine: leucine ?? this.leucine,
      lysine: lysine ?? this.lysine,
      methionine: methionine ?? this.methionine,
      methionine_cysteine: methionine_cysteine ?? this.methionine_cysteine,
      threonine: threonine ?? this.threonine,
      tryptophan: tryptophan ?? this.tryptophan,
      phenylalanine: phenylalanine ?? this.phenylalanine,
      phenylalanine_tyrosine:
          phenylalanine_tyrosine ?? this.phenylalanine_tyrosine,
      substitutable_amino_acids:
          substitutable_amino_acids ?? this.substitutable_amino_acids,
      alanine: alanine ?? this.alanine,
      aspartica_acid: aspartica_acid ?? this.aspartica_acid,
      glycine: glycine ?? this.glycine,
      glutamic_acid: glutamic_acid ?? this.glutamic_acid,
      proline: proline ?? this.proline,
      serin: serin ?? this.serin,
      tyrosine: tyrosine ?? this.tyrosine,
      cysteine: cysteine ?? this.cysteine,
      oil_4_0: oil_4_0 ?? this.oil_4_0,
      capron: capron ?? this.capron,
      caprylic: caprylic ?? this.caprylic,
      caprine: caprine ?? this.caprine,
      laurin: laurin ?? this.laurin,
      pentadecane: pentadecane ?? this.pentadecane,
      margarine: margarine ?? this.margarine,
      myristolein: myristolein ?? this.myristolein,
      sucrose: sucrose ?? this.sucrose,
      trans_fats: trans_fats ?? this.trans_fats,
      starch_dextrins: starch_dextrins ?? this.starch_dextrins,
      ethyl_alcohol: ethyl_alcohol ?? this.ethyl_alcohol,
      si_silicon: si_silicon ?? this.si_silicon,
      b_bohr: b_bohr ?? this.b_bohr,
      v_vanadium: v_vanadium ?? this.v_vanadium,
      li_lithium: li_lithium ?? this.li_lithium,
      rb_rubidium: rb_rubidium ?? this.rb_rubidium,
      zr_zirconium: zr_zirconium ?? this.zr_zirconium,
      omega_9_eruca: omega_9_eruca ?? this.omega_9_eruca,
      omega_3_stioride: omega_3_stioride ?? this.omega_3_stioride,
      omega_3_Docosahexaeno:
          omega_3_Docosahexaeno ?? this.omega_3_Docosahexaeno,
      beta_sitosterol: beta_sitosterol ?? this.beta_sitosterol,
      begenova: begenova ?? this.begenova,
      fructose: fructose ?? this.fructose,
      maltose: maltose ?? this.maltose,
      phytosterols: phytosterols ?? this.phytosterols,
      ti_titan: ti_titan ?? this.ti_titan,
      hydroxyproline: hydroxyproline ?? this.hydroxyproline,
      lignoceric: lignoceric ?? this.lignoceric,
      betaine: betaine ?? this.betaine,
      monoun_trans_fats: monoun_trans_fats ?? this.monoun_trans_fats,
      cis_16_1: cis_16_1 ?? this.cis_16_1,
      cis_18_1: cis_18_1 ?? this.cis_18_1,
      trance_18_1: trance_18_1 ?? this.trance_18_1,
      mixed_isomers: mixed_isomers ?? this.mixed_isomers,
      omega_6_cis: omega_6_cis ?? this.omega_6_cis,
      conjugated_linoleic_acid:
          conjugated_linoleic_acid ?? this.conjugated_linoleic_acid,
      omega_3_alpha_linolenic:
          omega_3_alpha_linolenic ?? this.omega_3_alpha_linolenic,
      d3_vitamin_cholecalciferol:
          d3_vitamin_cholecalciferol ?? this.d3_vitamin_cholecalciferol,
      alpha_carotene: alpha_carotene ?? this.alpha_carotene,
      cryptoxanthin_beta: cryptoxanthin_beta ?? this.cryptoxanthin_beta,
      lutein_zeaxanthin: lutein_zeaxanthin ?? this.lutein_zeaxanthin,
      beta_tocopherol: beta_tocopherol ?? this.beta_tocopherol,
      gamma_tocopherol: gamma_tocopherol ?? this.gamma_tocopherol,
      trance_16_1: trance_16_1 ?? this.trance_16_1,
      cis_22_1: cis_22_1 ?? this.cis_22_1,
      omega_9_nervone: omega_9_nervone ?? this.omega_9_nervone,
      trans_isomer_undefined:
          trans_isomer_undefined ?? this.trans_isomer_undefined,
      omega_6_gamma_linolenic:
          omega_6_gamma_linolenic ?? this.omega_6_gamma_linolenic,
      trance_18_3: trance_18_3 ?? this.trance_18_3,
      omega_6_eicosadieno: omega_6_eicosadieno ?? this.omega_6_eicosadieno,
      eicosatrieno: eicosatrieno ?? this.eicosatrieno,
      omega_6_20_3: omega_6_20_3 ?? this.omega_6_20_3,
      omega_6_docosatetraeno:
          omega_6_docosatetraeno ?? this.omega_6_docosatetraeno,
      lycopene: lycopene ?? this.lycopene,
      tocopherol_delta: tocopherol_delta ?? this.tocopherol_delta,
      polyun_trans_fats: polyun_trans_fats ?? this.polyun_trans_fats,
      tridecane_13_0: tridecane_13_0 ?? this.tridecane_13_0,
      omega_3: omega_3 ?? this.omega_3,
      pentadecene: pentadecene ?? this.pentadecene,
      caffeine: caffeine ?? this.caffeine,
      theobromine: theobromine ?? this.theobromine,
      trans_trans: trans_trans ?? this.trans_trans,
      menaquinone_4: menaquinone_4 ?? this.menaquinone_4,
      campesterol: campesterol ?? this.campesterol,
      stigmasterol: stigmasterol ?? this.stigmasterol,
      e_vitamin_added: e_vitamin_added ?? this.e_vitamin_added,
      b12_vitamin_added: b12_vitamin_added ?? this.b12_vitamin_added,
      trance_22_1: trance_22_1 ?? this.trance_22_1,
      dihydrophylloquinone: dihydrophylloquinone ?? this.dihydrophylloquinone,
      d2_vitamin_ergocalciferol:
          d2_vitamin_ergocalciferol ?? this.d2_vitamin_ergocalciferol,
      omega_6_20_4: omega_6_20_4 ?? this.omega_6_20_4,
      omega_3_geneico: omega_3_geneico ?? this.omega_3_geneico,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id_product': id_product,
      'ru_product_name': ru_product_name,
      'en_product_name': en_product_name,
      'id_category': id_category,
      'en_category_name': en_category_name,
      'ru_category_name': ru_category_name,
      'id_source': id_source,
      'en_source_name': en_source_name,
      'ru_source_name': ru_source_name,
      'water': water,
      'k_potassium': k_potassium,
      'na_sodium': na_sodium,
      'proteins': proteins,
      'carbohydrates': carbohydrates,
      'fats': fats,
      'calorie': calorie,
      'p_phosphorus': p_phosphorus,
      'ca_calcium': ca_calcium,
      'feed_ash': feed_ash,
      'a_vitamin': a_vitamin,
      'retinol': retinol,
      'beta_carotene': beta_carotene,
      'b1_vitamin_thiamine': b1_vitamin_thiamine,
      'b2_vitamin_riboflavin': b2_vitamin_riboflavin,
      'b5_vitamin': b5_vitamin,
      'b6_vitamin_pyridoxine': b6_vitamin_pyridoxine,
      'b9_vitamin_folates': b9_vitamin_folates,
      'b12_vitamin_cobalamin': b12_vitamin_cobalamin,
      'c_vitamin': c_vitamin,
      'e_vitamin': e_vitamin,
      'rr_vitamin': rr_vitamin,
      'niacin': niacin,
      'mg_magnesium': mg_magnesium,
      's_sulfur': s_sulfur,
      'cl_chlorine': cl_chlorine,
      'fe_iron': fe_iron,
      'i_iodine': i_iodine,
      'co_cobalt': co_cobalt,
      'mn_manganese': mn_manganese,
      'cu_copper': cu_copper,
      'mo_molybdenum': mo_molybdenum,
      'ni_nickel': ni_nickel,
      'se_selenium': se_selenium,
      'f_fluorine': f_fluorine,
      'cr_chrome': cr_chrome,
      'zh_zinc': zh_zinc,
      'cholesterol': cholesterol,
      'saturated_fatty_acids': saturated_fatty_acids,
      'myristina': myristina,
      'palmitic': palmitic,
      'stearic': stearic,
      'arachinova': arachinova,
      'mono_fatty_acids': mono_fatty_acids,
      'palmitoleic': palmitoleic,
      'heptadecene': heptadecene,
      'omega_9_oleic': omega_9_oleic,
      'omega_9_gadolein': omega_9_gadolein,
      'poly_fatty_acids': poly_fatty_acids,
      'linoleic': linoleic,
      'linolenic': linolenic,
      'arachidonic': arachidonic,
      'omega_3_epk': omega_3_epk,
      'omega_3_fatty_acids': omega_3_fatty_acids,
      'omega_3_dpc': omega_3_dpc,
      'omega_6_fatty_acids': omega_6_fatty_acids,
      'dietary_fiber': dietary_fiber,
      'mono_di_saccharides': mono_di_saccharides,
      'organic_acids': organic_acids,
      'b4_vitamin': b4_vitamin,
      'd_vitamin_calciferol': d_vitamin_calciferol,
      'h_vitamin_biotin': h_vitamin_biotin,
      'k_vitamin_phylloquinone': k_vitamin_phylloquinone,
      'al_aluminium': al_aluminium,
      'sn_tin': sn_tin,
      'sr_strontium': sr_strontium,
      'galactose': galactose,
      'glucose_dextrose': glucose_dextrose,
      'lactose': lactose,
      'essential_amino_acids': essential_amino_acids,
      'arginine': arginine,
      'valin': valin,
      'histidine': histidine,
      'isoleucine': isoleucine,
      'leucine': leucine,
      'lysine': lysine,
      'methionine': methionine,
      'methionine_cysteine': methionine_cysteine,
      'threonine': threonine,
      'tryptophan': tryptophan,
      'phenylalanine': phenylalanine,
      'phenylalanine_tyrosine': phenylalanine_tyrosine,
      'substitutable_amino_acids': substitutable_amino_acids,
      'alanine': alanine,
      'aspartica_acid': aspartica_acid,
      'glycine': glycine,
      'glutamic_acid': glutamic_acid,
      'proline': proline,
      'serin': serin,
      'tyrosine': tyrosine,
      'cysteine': cysteine,
      'oil_4_0': oil_4_0,
      'capron': capron,
      'caprylic': caprylic,
      'caprine': caprine,
      'laurin': laurin,
      'pentadecane': pentadecane,
      'margarine': margarine,
      'myristolein': myristolein,
      'sucrose': sucrose,
      'trans_fats': trans_fats,
      'starch_dextrins': starch_dextrins,
      'ethyl_alcohol': ethyl_alcohol,
      'si_silicon': si_silicon,
      'b_bohr': b_bohr,
      'v_vanadium': v_vanadium,
      'li_lithium': li_lithium,
      'rb_rubidium': rb_rubidium,
      'zr_zirconium': zr_zirconium,
      'omega_9_eruca': omega_9_eruca,
      'omega_3_stioride': omega_3_stioride,
      'omega_3_Docosahexaeno': omega_3_Docosahexaeno,
      'beta_sitosterol': beta_sitosterol,
      'begenova': begenova,
      'fructose': fructose,
      'maltose': maltose,
      'phytosterols': phytosterols,
      'ti_titan': ti_titan,
      'hydroxyproline': hydroxyproline,
      'lignoceric': lignoceric,
      'betaine': betaine,
      'monoun_trans_fats': monoun_trans_fats,
      'cis_16_1': cis_16_1,
      'cis_18_1': cis_18_1,
      'trance_18_1': trance_18_1,
      'mixed_isomers': mixed_isomers,
      'omega_6_cis': omega_6_cis,
      'conjugated_linoleic_acid': conjugated_linoleic_acid,
      'omega_3_alpha_linolenic': omega_3_alpha_linolenic,
      'd3_vitamin_cholecalciferol': d3_vitamin_cholecalciferol,
      'alpha_carotene': alpha_carotene,
      'cryptoxanthin_beta': cryptoxanthin_beta,
      'lutein_zeaxanthin': lutein_zeaxanthin,
      'beta_tocopherol': beta_tocopherol,
      'gamma_tocopherol': gamma_tocopherol,
      'trance_16_1': trance_16_1,
      'cis_22_1': cis_22_1,
      'omega_9_nervone': omega_9_nervone,
      'trans_isomer_undefined': trans_isomer_undefined,
      'omega_6_gamma_linolenic': omega_6_gamma_linolenic,
      'trance_18_3': trance_18_3,
      'omega_6_eicosadieno': omega_6_eicosadieno,
      'eicosatrieno': eicosatrieno,
      'omega_6_20_3': omega_6_20_3,
      'omega_6_docosatetraeno': omega_6_docosatetraeno,
      'lycopene': lycopene,
      'tocopherol_delta': tocopherol_delta,
      'polyun_trans_fats': polyun_trans_fats,
      'tridecane_13_0': tridecane_13_0,
      'omega_3': omega_3,
      'pentadecene': pentadecene,
      'caffeine': caffeine,
      'theobromine': theobromine,
      'trans_trans': trans_trans,
      'menaquinone_4': menaquinone_4,
      'campesterol': campesterol,
      'stigmasterol': stigmasterol,
      'e_vitamin_added': e_vitamin_added,
      'b12_vitamin_added': b12_vitamin_added,
      'trance_22_1': trance_22_1,
      'dihydrophylloquinone': dihydrophylloquinone,
      'd2_vitamin_ergocalciferol': d2_vitamin_ergocalciferol,
      'omega_6_20_4': omega_6_20_4,
      'omega_3_geneico': omega_3_geneico,
    };
  }

  factory FoodDbModel.fromMap(Map<String, dynamic> map) {
    return FoodDbModel(
      id_product: map['id_product'] as int,
      ru_product_name: map['ru_product_name'] as String,
      en_product_name: map['en_product_name'] as String,
      id_category: map['id_category'] as String,
      en_category_name: map['en_category_name'] as String,
      ru_category_name: map['ru_category_name'] as String,
      id_source: map['id_source'] as String,
      en_source_name: map['en_source_name'] as String,
      ru_source_name: map['ru_source_name'] as String,
      water: map['water'] as double,
      k_potassium: map['k_potassium'] as double,
      na_sodium: map['na_sodium'] as double,
      proteins: map['proteins'] as double,
      carbohydrates: map['carbohydrates'] as double,
      fats: map['fats'] as double,
      calorie: map['calorie'] as double,
      p_phosphorus: map['p_phosphorus'] as double,
      ca_calcium: map['ca_calcium'] as double,
      feed_ash: map['feed_ash'] as double,
      a_vitamin: map['a_vitamin'] as double,
      retinol: map['retinol'] as double,
      beta_carotene: map['beta_carotene'] as double,
      b1_vitamin_thiamine: map['b1_vitamin_thiamine'] as double,
      b2_vitamin_riboflavin: map['b2_vitamin_riboflavin'] as double,
      b5_vitamin: map['b5_vitamin'] as double,
      b6_vitamin_pyridoxine: map['b6_vitamin_pyridoxine'] as double,
      b9_vitamin_folates: map['b9_vitamin_folates'] as double,
      b12_vitamin_cobalamin: map['b12_vitamin_cobalamin'] as double,
      c_vitamin: map['c_vitamin'] as double,
      e_vitamin: map['e_vitamin'] as double,
      rr_vitamin: map['rr_vitamin'] as double,
      niacin: map['niacin'] as double,
      mg_magnesium: map['mg_magnesium'] as double,
      s_sulfur: map['s_sulfur'] as double,
      cl_chlorine: map['cl_chlorine'] as double,
      fe_iron: map['fe_iron'] as double,
      i_iodine: map['i_iodine'] as double,
      co_cobalt: map['co_cobalt'] as double,
      mn_manganese: map['mn_manganese'] as double,
      cu_copper: map['cu_copper'] as double,
      mo_molybdenum: map['mo_molybdenum'] as double,
      ni_nickel: map['ni_nickel'] as double,
      se_selenium: map['se_selenium'] as double,
      f_fluorine: map['f_fluorine'] as double,
      cr_chrome: map['cr_chrome'] as double,
      zh_zinc: map['zh_zinc'] as double,
      cholesterol: map['cholesterol'] as double,
      saturated_fatty_acids: map['saturated_fatty_acids'] as double,
      myristina: map['myristina'] as double,
      palmitic: map['palmitic'] as double,
      stearic: map['stearic'] as double,
      arachinova: map['arachinova'] as double,
      mono_fatty_acids: map['mono_fatty_acids'] as double,
      palmitoleic: map['palmitoleic'] as double,
      heptadecene: map['heptadecene'] as double,
      omega_9_oleic: map['omega_9_oleic'] as double,
      omega_9_gadolein: map['omega_9_gadolein'] as double,
      poly_fatty_acids: map['poly_fatty_acids'] as double,
      linoleic: map['linoleic'] as double,
      linolenic: map['linolenic'] as double,
      arachidonic: map['arachidonic'] as double,
      omega_3_epk: map['omega_3_epk'] as double,
      omega_3_fatty_acids: map['omega_3_fatty_acids'] as double,
      omega_3_dpc: map['omega_3_dpc'] as double,
      omega_6_fatty_acids: map['omega_6_fatty_acids'] as double,
      dietary_fiber: map['dietary_fiber'] as double,
      mono_di_saccharides: map['mono_di_saccharides'] as double,
      organic_acids: map['organic_acids'] as double,
      b4_vitamin: map['b4_vitamin'] as double,
      d_vitamin_calciferol: map['d_vitamin_calciferol'] as double,
      h_vitamin_biotin: map['h_vitamin_biotin'] as double,
      k_vitamin_phylloquinone: map['k_vitamin_phylloquinone'] as double,
      al_aluminium: map['al_aluminium'] as double,
      sn_tin: map['sn_tin'] as double,
      sr_strontium: map['sr_strontium'] as double,
      galactose: map['galactose'] as double,
      glucose_dextrose: map['glucose_dextrose'] as double,
      lactose: map['lactose'] as double,
      essential_amino_acids: map['essential_amino_acids'] as double,
      arginine: map['arginine'] as double,
      valin: map['valin'] as double,
      histidine: map['histidine'] as double,
      isoleucine: map['isoleucine'] as double,
      leucine: map['leucine'] as double,
      lysine: map['lysine'] as double,
      methionine: map['methionine'] as double,
      methionine_cysteine: map['methionine_cysteine'] as double,
      threonine: map['threonine'] as double,
      tryptophan: map['tryptophan'] as double,
      phenylalanine: map['phenylalanine'] as double,
      phenylalanine_tyrosine: map['phenylalanine_tyrosine'] as double,
      substitutable_amino_acids: map['substitutable_amino_acids'] as double,
      alanine: map['alanine'] as double,
      aspartica_acid: map['aspartica_acid'] as double,
      glycine: map['glycine'] as double,
      glutamic_acid: map['glutamic_acid'] as double,
      proline: map['proline'] as double,
      serin: map['serin'] as double,
      tyrosine: map['tyrosine'] as double,
      cysteine: map['cysteine'] as double,
      oil_4_0: map['oil_4_0'] as double,
      capron: map['capron'] as double,
      caprylic: map['caprylic'] as double,
      caprine: map['caprine'] as double,
      laurin: map['laurin'] as double,
      pentadecane: map['pentadecane'] as double,
      margarine: map['margarine'] as double,
      myristolein: map['myristolein'] as double,
      sucrose: map['sucrose'] as double,
      trans_fats: map['trans_fats'] as double,
      starch_dextrins: map['starch_dextrins'] as double,
      ethyl_alcohol: map['ethyl_alcohol'] as double,
      si_silicon: map['si_silicon'] as double,
      b_bohr: map['b_bohr'] as double,
      v_vanadium: map['v_vanadium'] as double,
      li_lithium: map['li_lithium'] as double,
      rb_rubidium: map['rb_rubidium'] as double,
      zr_zirconium: map['zr_zirconium'] as double,
      omega_9_eruca: map['omega_9_eruca'] as double,
      omega_3_stioride: map['omega_3_stioride'] as double,
      omega_3_Docosahexaeno: map['omega_3_Docosahexaeno'] as double,
      beta_sitosterol: map['beta_sitosterol'] as double,
      begenova: map['begenova'] as double,
      fructose: map['fructose'] as double,
      maltose: map['maltose'] as double,
      phytosterols: map['phytosterols'] as double,
      ti_titan: map['ti_titan'] as double,
      hydroxyproline: map['hydroxyproline'] as double,
      lignoceric: map['lignoceric'] as double,
      betaine: map['betaine'] as double,
      monoun_trans_fats: map['monoun_trans_fats'] as double,
      cis_16_1: map['cis_16_1'] as double,
      cis_18_1: map['cis_18_1'] as double,
      trance_18_1: map['trance_18_1'] as double,
      mixed_isomers: map['mixed_isomers'] as double,
      omega_6_cis: map['omega_6_cis'] as double,
      conjugated_linoleic_acid: map['conjugated_linoleic_acid'] as double,
      omega_3_alpha_linolenic: map['omega_3_alpha_linolenic'] as double,
      d3_vitamin_cholecalciferol: map['d3_vitamin_cholecalciferol'] as double,
      alpha_carotene: map['alpha_carotene'] as double,
      cryptoxanthin_beta: map['cryptoxanthin_beta'] as double,
      lutein_zeaxanthin: map['lutein_zeaxanthin'] as double,
      beta_tocopherol: map['beta_tocopherol'] as double,
      gamma_tocopherol: map['gamma_tocopherol'] as double,
      trance_16_1: map['trance_16_1'] as double,
      cis_22_1: map['cis_22_1'] as double,
      omega_9_nervone: map['omega_9_nervone'] as double,
      trans_isomer_undefined: map['trans_isomer_undefined'] as double,
      omega_6_gamma_linolenic: map['omega_6_gamma_linolenic'] as double,
      trance_18_3: map['trance_18_3'] as double,
      omega_6_eicosadieno: map['omega_6_eicosadieno'] as double,
      eicosatrieno: map['eicosatrieno'] as double,
      omega_6_20_3: map['omega_6_20_3'] as double,
      omega_6_docosatetraeno: map['omega_6_docosatetraeno'] as double,
      lycopene: map['lycopene'] as double,
      tocopherol_delta: map['tocopherol_delta'] as double,
      polyun_trans_fats: map['polyun_trans_fats'] as double,
      tridecane_13_0: map['tridecane_13_0'] as double,
      omega_3: map['omega_3'] as double,
      pentadecene: map['pentadecene'] as double,
      caffeine: map['caffeine'] as double,
      theobromine: map['theobromine'] as double,
      trans_trans: map['trans_trans'] as double,
      menaquinone_4: map['menaquinone_4'] as double,
      campesterol: map['campesterol'] as double,
      stigmasterol: map['stigmasterol'] as double,
      e_vitamin_added: map['e_vitamin_added'] as double,
      b12_vitamin_added: map['b12_vitamin_added'] as double,
      trance_22_1: map['trance_22_1'] as double,
      dihydrophylloquinone: map['dihydrophylloquinone'] as double,
      d2_vitamin_ergocalciferol: map['d2_vitamin_ergocalciferol'] as double,
      omega_6_20_4: map['omega_6_20_4'] as double,
      omega_3_geneico: map['omega_3_geneico'] as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory FoodDbModel.fromJson(String source) =>
      FoodDbModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'FoodDbModel(id_product: $id_product, ru_product_name: $ru_product_name, en_product_name: $en_product_name, id_category: $id_category, en_category_name: $en_category_name, ru_category_name: $ru_category_name, id_source: $id_source, en_source_name: $en_source_name, ru_source_name: $ru_source_name, water: $water, k_potassium: $k_potassium, na_sodium: $na_sodium, proteins: $proteins, carbohydrates: $carbohydrates, fats: $fats, calorie: $calorie, p_phosphorus: $p_phosphorus, ca_calcium: $ca_calcium, feed_ash: $feed_ash, a_vitamin: $a_vitamin, retinol: $retinol, beta_carotene: $beta_carotene, b1_vitamin_thiamine: $b1_vitamin_thiamine, b2_vitamin_riboflavin: $b2_vitamin_riboflavin, b5_vitamin: $b5_vitamin, b6_vitamin_pyridoxine: $b6_vitamin_pyridoxine, b9_vitamin_folates: $b9_vitamin_folates, b12_vitamin_cobalamin: $b12_vitamin_cobalamin, c_vitamin: $c_vitamin, e_vitamin: $e_vitamin, rr_vitamin: $rr_vitamin, niacin: $niacin, mg_magnesium: $mg_magnesium, s_sulfur: $s_sulfur, cl_chlorine: $cl_chlorine, fe_iron: $fe_iron, i_iodine: $i_iodine, co_cobalt: $co_cobalt, mn_manganese: $mn_manganese, cu_copper: $cu_copper, mo_molybdenum: $mo_molybdenum, ni_nickel: $ni_nickel, se_selenium: $se_selenium, f_fluorine: $f_fluorine, cr_chrome: $cr_chrome, zh_zinc: $zh_zinc, cholesterol: $cholesterol, saturated_fatty_acids: $saturated_fatty_acids, myristina: $myristina, palmitic: $palmitic, stearic: $stearic, arachinova: $arachinova, mono_fatty_acids: $mono_fatty_acids, palmitoleic: $palmitoleic, heptadecene: $heptadecene, omega_9_oleic: $omega_9_oleic, omega_9_gadolein: $omega_9_gadolein, poly_fatty_acids: $poly_fatty_acids, linoleic: $linoleic, linolenic: $linolenic, arachidonic: $arachidonic, omega_3_epk: $omega_3_epk, omega_3_fatty_acids: $omega_3_fatty_acids, omega_3_dpc: $omega_3_dpc, omega_6_fatty_acids: $omega_6_fatty_acids, dietary_fiber: $dietary_fiber, mono_di_saccharides: $mono_di_saccharides, organic_acids: $organic_acids, b4_vitamin: $b4_vitamin, d_vitamin_calciferol: $d_vitamin_calciferol, h_vitamin_biotin: $h_vitamin_biotin, k_vitamin_phylloquinone: $k_vitamin_phylloquinone, al_aluminium: $al_aluminium, sn_tin: $sn_tin, sr_strontium: $sr_strontium, galactose: $galactose, glucose_dextrose: $glucose_dextrose, lactose: $lactose, essential_amino_acids: $essential_amino_acids, arginine: $arginine, valin: $valin, histidine: $histidine, isoleucine: $isoleucine, leucine: $leucine, lysine: $lysine, methionine: $methionine, methionine_cysteine: $methionine_cysteine, threonine: $threonine, tryptophan: $tryptophan, phenylalanine: $phenylalanine, phenylalanine_tyrosine: $phenylalanine_tyrosine, substitutable_amino_acids: $substitutable_amino_acids, alanine: $alanine, aspartica_acid: $aspartica_acid, glycine: $glycine, glutamic_acid: $glutamic_acid, proline: $proline, serin: $serin, tyrosine: $tyrosine, cysteine: $cysteine, oil_4_0: $oil_4_0, capron: $capron, caprylic: $caprylic, caprine: $caprine, laurin: $laurin, pentadecane: $pentadecane, margarine: $margarine, myristolein: $myristolein, sucrose: $sucrose, trans_fats: $trans_fats, starch_dextrins: $starch_dextrins, ethyl_alcohol: $ethyl_alcohol, si_silicon: $si_silicon, b_bohr: $b_bohr, v_vanadium: $v_vanadium, li_lithium: $li_lithium, rb_rubidium: $rb_rubidium, zr_zirconium: $zr_zirconium, omega_9_eruca: $omega_9_eruca, omega_3_stioride: $omega_3_stioride, omega_3_Docosahexaeno: $omega_3_Docosahexaeno, beta_sitosterol: $beta_sitosterol, begenova: $begenova, fructose: $fructose, maltose: $maltose, phytosterols: $phytosterols, ti_titan: $ti_titan, hydroxyproline: $hydroxyproline, lignoceric: $lignoceric, betaine: $betaine, monoun_trans_fats: $monoun_trans_fats, cis_16_1: $cis_16_1, cis_18_1: $cis_18_1, trance_18_1: $trance_18_1, mixed_isomers: $mixed_isomers, omega_6_cis: $omega_6_cis, conjugated_linoleic_acid: $conjugated_linoleic_acid, omega_3_alpha_linolenic: $omega_3_alpha_linolenic, d3_vitamin_cholecalciferol: $d3_vitamin_cholecalciferol, alpha_carotene: $alpha_carotene, cryptoxanthin_beta: $cryptoxanthin_beta, lutein_zeaxanthin: $lutein_zeaxanthin, beta_tocopherol: $beta_tocopherol, gamma_tocopherol: $gamma_tocopherol, trance_16_1: $trance_16_1, cis_22_1: $cis_22_1, omega_9_nervone: $omega_9_nervone, trans_isomer_undefined: $trans_isomer_undefined, omega_6_gamma_linolenic: $omega_6_gamma_linolenic, trance_18_3: $trance_18_3, omega_6_eicosadieno: $omega_6_eicosadieno, eicosatrieno: $eicosatrieno, omega_6_20_3: $omega_6_20_3, omega_6_docosatetraeno: $omega_6_docosatetraeno, lycopene: $lycopene, tocopherol_delta: $tocopherol_delta, polyun_trans_fats: $polyun_trans_fats, tridecane_13_0: $tridecane_13_0, omega_3: $omega_3, pentadecene: $pentadecene, caffeine: $caffeine, theobromine: $theobromine, trans_trans: $trans_trans, menaquinone_4: $menaquinone_4, campesterol: $campesterol, stigmasterol: $stigmasterol, e_vitamin_added: $e_vitamin_added, b12_vitamin_added: $b12_vitamin_added, trance_22_1: $trance_22_1, dihydrophylloquinone: $dihydrophylloquinone, d2_vitamin_ergocalciferol: $d2_vitamin_ergocalciferol, omega_6_20_4: $omega_6_20_4, omega_3_geneico: $omega_3_geneico)';
  }

  @override
  bool operator ==(covariant FoodDbModel other) {
    if (identical(this, other)) return true;

    return other.id_product == id_product &&
        other.ru_product_name == ru_product_name &&
        other.en_product_name == en_product_name &&
        other.id_category == id_category &&
        other.en_category_name == en_category_name &&
        other.ru_category_name == ru_category_name &&
        other.id_source == id_source &&
        other.en_source_name == en_source_name &&
        other.ru_source_name == ru_source_name &&
        other.water == water &&
        other.k_potassium == k_potassium &&
        other.na_sodium == na_sodium &&
        other.proteins == proteins &&
        other.carbohydrates == carbohydrates &&
        other.fats == fats &&
        other.calorie == calorie &&
        other.p_phosphorus == p_phosphorus &&
        other.ca_calcium == ca_calcium &&
        other.feed_ash == feed_ash &&
        other.a_vitamin == a_vitamin &&
        other.retinol == retinol &&
        other.beta_carotene == beta_carotene &&
        other.b1_vitamin_thiamine == b1_vitamin_thiamine &&
        other.b2_vitamin_riboflavin == b2_vitamin_riboflavin &&
        other.b5_vitamin == b5_vitamin &&
        other.b6_vitamin_pyridoxine == b6_vitamin_pyridoxine &&
        other.b9_vitamin_folates == b9_vitamin_folates &&
        other.b12_vitamin_cobalamin == b12_vitamin_cobalamin &&
        other.c_vitamin == c_vitamin &&
        other.e_vitamin == e_vitamin &&
        other.rr_vitamin == rr_vitamin &&
        other.niacin == niacin &&
        other.mg_magnesium == mg_magnesium &&
        other.s_sulfur == s_sulfur &&
        other.cl_chlorine == cl_chlorine &&
        other.fe_iron == fe_iron &&
        other.i_iodine == i_iodine &&
        other.co_cobalt == co_cobalt &&
        other.mn_manganese == mn_manganese &&
        other.cu_copper == cu_copper &&
        other.mo_molybdenum == mo_molybdenum &&
        other.ni_nickel == ni_nickel &&
        other.se_selenium == se_selenium &&
        other.f_fluorine == f_fluorine &&
        other.cr_chrome == cr_chrome &&
        other.zh_zinc == zh_zinc &&
        other.cholesterol == cholesterol &&
        other.saturated_fatty_acids == saturated_fatty_acids &&
        other.myristina == myristina &&
        other.palmitic == palmitic &&
        other.stearic == stearic &&
        other.arachinova == arachinova &&
        other.mono_fatty_acids == mono_fatty_acids &&
        other.palmitoleic == palmitoleic &&
        other.heptadecene == heptadecene &&
        other.omega_9_oleic == omega_9_oleic &&
        other.omega_9_gadolein == omega_9_gadolein &&
        other.poly_fatty_acids == poly_fatty_acids &&
        other.linoleic == linoleic &&
        other.linolenic == linolenic &&
        other.arachidonic == arachidonic &&
        other.omega_3_epk == omega_3_epk &&
        other.omega_3_fatty_acids == omega_3_fatty_acids &&
        other.omega_3_dpc == omega_3_dpc &&
        other.omega_6_fatty_acids == omega_6_fatty_acids &&
        other.dietary_fiber == dietary_fiber &&
        other.mono_di_saccharides == mono_di_saccharides &&
        other.organic_acids == organic_acids &&
        other.b4_vitamin == b4_vitamin &&
        other.d_vitamin_calciferol == d_vitamin_calciferol &&
        other.h_vitamin_biotin == h_vitamin_biotin &&
        other.k_vitamin_phylloquinone == k_vitamin_phylloquinone &&
        other.al_aluminium == al_aluminium &&
        other.sn_tin == sn_tin &&
        other.sr_strontium == sr_strontium &&
        other.galactose == galactose &&
        other.glucose_dextrose == glucose_dextrose &&
        other.lactose == lactose &&
        other.essential_amino_acids == essential_amino_acids &&
        other.arginine == arginine &&
        other.valin == valin &&
        other.histidine == histidine &&
        other.isoleucine == isoleucine &&
        other.leucine == leucine &&
        other.lysine == lysine &&
        other.methionine == methionine &&
        other.methionine_cysteine == methionine_cysteine &&
        other.threonine == threonine &&
        other.tryptophan == tryptophan &&
        other.phenylalanine == phenylalanine &&
        other.phenylalanine_tyrosine == phenylalanine_tyrosine &&
        other.substitutable_amino_acids == substitutable_amino_acids &&
        other.alanine == alanine &&
        other.aspartica_acid == aspartica_acid &&
        other.glycine == glycine &&
        other.glutamic_acid == glutamic_acid &&
        other.proline == proline &&
        other.serin == serin &&
        other.tyrosine == tyrosine &&
        other.cysteine == cysteine &&
        other.oil_4_0 == oil_4_0 &&
        other.capron == capron &&
        other.caprylic == caprylic &&
        other.caprine == caprine &&
        other.laurin == laurin &&
        other.pentadecane == pentadecane &&
        other.margarine == margarine &&
        other.myristolein == myristolein &&
        other.sucrose == sucrose &&
        other.trans_fats == trans_fats &&
        other.starch_dextrins == starch_dextrins &&
        other.ethyl_alcohol == ethyl_alcohol &&
        other.si_silicon == si_silicon &&
        other.b_bohr == b_bohr &&
        other.v_vanadium == v_vanadium &&
        other.li_lithium == li_lithium &&
        other.rb_rubidium == rb_rubidium &&
        other.zr_zirconium == zr_zirconium &&
        other.omega_9_eruca == omega_9_eruca &&
        other.omega_3_stioride == omega_3_stioride &&
        other.omega_3_Docosahexaeno == omega_3_Docosahexaeno &&
        other.beta_sitosterol == beta_sitosterol &&
        other.begenova == begenova &&
        other.fructose == fructose &&
        other.maltose == maltose &&
        other.phytosterols == phytosterols &&
        other.ti_titan == ti_titan &&
        other.hydroxyproline == hydroxyproline &&
        other.lignoceric == lignoceric &&
        other.betaine == betaine &&
        other.monoun_trans_fats == monoun_trans_fats &&
        other.cis_16_1 == cis_16_1 &&
        other.cis_18_1 == cis_18_1 &&
        other.trance_18_1 == trance_18_1 &&
        other.mixed_isomers == mixed_isomers &&
        other.omega_6_cis == omega_6_cis &&
        other.conjugated_linoleic_acid == conjugated_linoleic_acid &&
        other.omega_3_alpha_linolenic == omega_3_alpha_linolenic &&
        other.d3_vitamin_cholecalciferol == d3_vitamin_cholecalciferol &&
        other.alpha_carotene == alpha_carotene &&
        other.cryptoxanthin_beta == cryptoxanthin_beta &&
        other.lutein_zeaxanthin == lutein_zeaxanthin &&
        other.beta_tocopherol == beta_tocopherol &&
        other.gamma_tocopherol == gamma_tocopherol &&
        other.trance_16_1 == trance_16_1 &&
        other.cis_22_1 == cis_22_1 &&
        other.omega_9_nervone == omega_9_nervone &&
        other.trans_isomer_undefined == trans_isomer_undefined &&
        other.omega_6_gamma_linolenic == omega_6_gamma_linolenic &&
        other.trance_18_3 == trance_18_3 &&
        other.omega_6_eicosadieno == omega_6_eicosadieno &&
        other.eicosatrieno == eicosatrieno &&
        other.omega_6_20_3 == omega_6_20_3 &&
        other.omega_6_docosatetraeno == omega_6_docosatetraeno &&
        other.lycopene == lycopene &&
        other.tocopherol_delta == tocopherol_delta &&
        other.polyun_trans_fats == polyun_trans_fats &&
        other.tridecane_13_0 == tridecane_13_0 &&
        other.omega_3 == omega_3 &&
        other.pentadecene == pentadecene &&
        other.caffeine == caffeine &&
        other.theobromine == theobromine &&
        other.trans_trans == trans_trans &&
        other.menaquinone_4 == menaquinone_4 &&
        other.campesterol == campesterol &&
        other.stigmasterol == stigmasterol &&
        other.e_vitamin_added == e_vitamin_added &&
        other.b12_vitamin_added == b12_vitamin_added &&
        other.trance_22_1 == trance_22_1 &&
        other.dihydrophylloquinone == dihydrophylloquinone &&
        other.d2_vitamin_ergocalciferol == d2_vitamin_ergocalciferol &&
        other.omega_6_20_4 == omega_6_20_4 &&
        other.omega_3_geneico == omega_3_geneico;
  }

  @override
  int get hashCode {
    return id_product.hashCode ^
        ru_product_name.hashCode ^
        en_product_name.hashCode ^
        id_category.hashCode ^
        en_category_name.hashCode ^
        ru_category_name.hashCode ^
        id_source.hashCode ^
        en_source_name.hashCode ^
        ru_source_name.hashCode ^
        water.hashCode ^
        k_potassium.hashCode ^
        na_sodium.hashCode ^
        proteins.hashCode ^
        carbohydrates.hashCode ^
        fats.hashCode ^
        calorie.hashCode ^
        p_phosphorus.hashCode ^
        ca_calcium.hashCode ^
        feed_ash.hashCode ^
        a_vitamin.hashCode ^
        retinol.hashCode ^
        beta_carotene.hashCode ^
        b1_vitamin_thiamine.hashCode ^
        b2_vitamin_riboflavin.hashCode ^
        b5_vitamin.hashCode ^
        b6_vitamin_pyridoxine.hashCode ^
        b9_vitamin_folates.hashCode ^
        b12_vitamin_cobalamin.hashCode ^
        c_vitamin.hashCode ^
        e_vitamin.hashCode ^
        rr_vitamin.hashCode ^
        niacin.hashCode ^
        mg_magnesium.hashCode ^
        s_sulfur.hashCode ^
        cl_chlorine.hashCode ^
        fe_iron.hashCode ^
        i_iodine.hashCode ^
        co_cobalt.hashCode ^
        mn_manganese.hashCode ^
        cu_copper.hashCode ^
        mo_molybdenum.hashCode ^
        ni_nickel.hashCode ^
        se_selenium.hashCode ^
        f_fluorine.hashCode ^
        cr_chrome.hashCode ^
        zh_zinc.hashCode ^
        cholesterol.hashCode ^
        saturated_fatty_acids.hashCode ^
        myristina.hashCode ^
        palmitic.hashCode ^
        stearic.hashCode ^
        arachinova.hashCode ^
        mono_fatty_acids.hashCode ^
        palmitoleic.hashCode ^
        heptadecene.hashCode ^
        omega_9_oleic.hashCode ^
        omega_9_gadolein.hashCode ^
        poly_fatty_acids.hashCode ^
        linoleic.hashCode ^
        linolenic.hashCode ^
        arachidonic.hashCode ^
        omega_3_epk.hashCode ^
        omega_3_fatty_acids.hashCode ^
        omega_3_dpc.hashCode ^
        omega_6_fatty_acids.hashCode ^
        dietary_fiber.hashCode ^
        mono_di_saccharides.hashCode ^
        organic_acids.hashCode ^
        b4_vitamin.hashCode ^
        d_vitamin_calciferol.hashCode ^
        h_vitamin_biotin.hashCode ^
        k_vitamin_phylloquinone.hashCode ^
        al_aluminium.hashCode ^
        sn_tin.hashCode ^
        sr_strontium.hashCode ^
        galactose.hashCode ^
        glucose_dextrose.hashCode ^
        lactose.hashCode ^
        essential_amino_acids.hashCode ^
        arginine.hashCode ^
        valin.hashCode ^
        histidine.hashCode ^
        isoleucine.hashCode ^
        leucine.hashCode ^
        lysine.hashCode ^
        methionine.hashCode ^
        methionine_cysteine.hashCode ^
        threonine.hashCode ^
        tryptophan.hashCode ^
        phenylalanine.hashCode ^
        phenylalanine_tyrosine.hashCode ^
        substitutable_amino_acids.hashCode ^
        alanine.hashCode ^
        aspartica_acid.hashCode ^
        glycine.hashCode ^
        glutamic_acid.hashCode ^
        proline.hashCode ^
        serin.hashCode ^
        tyrosine.hashCode ^
        cysteine.hashCode ^
        oil_4_0.hashCode ^
        capron.hashCode ^
        caprylic.hashCode ^
        caprine.hashCode ^
        laurin.hashCode ^
        pentadecane.hashCode ^
        margarine.hashCode ^
        myristolein.hashCode ^
        sucrose.hashCode ^
        trans_fats.hashCode ^
        starch_dextrins.hashCode ^
        ethyl_alcohol.hashCode ^
        si_silicon.hashCode ^
        b_bohr.hashCode ^
        v_vanadium.hashCode ^
        li_lithium.hashCode ^
        rb_rubidium.hashCode ^
        zr_zirconium.hashCode ^
        omega_9_eruca.hashCode ^
        omega_3_stioride.hashCode ^
        omega_3_Docosahexaeno.hashCode ^
        beta_sitosterol.hashCode ^
        begenova.hashCode ^
        fructose.hashCode ^
        maltose.hashCode ^
        phytosterols.hashCode ^
        ti_titan.hashCode ^
        hydroxyproline.hashCode ^
        lignoceric.hashCode ^
        betaine.hashCode ^
        monoun_trans_fats.hashCode ^
        cis_16_1.hashCode ^
        cis_18_1.hashCode ^
        trance_18_1.hashCode ^
        mixed_isomers.hashCode ^
        omega_6_cis.hashCode ^
        conjugated_linoleic_acid.hashCode ^
        omega_3_alpha_linolenic.hashCode ^
        d3_vitamin_cholecalciferol.hashCode ^
        alpha_carotene.hashCode ^
        cryptoxanthin_beta.hashCode ^
        lutein_zeaxanthin.hashCode ^
        beta_tocopherol.hashCode ^
        gamma_tocopherol.hashCode ^
        trance_16_1.hashCode ^
        cis_22_1.hashCode ^
        omega_9_nervone.hashCode ^
        trans_isomer_undefined.hashCode ^
        omega_6_gamma_linolenic.hashCode ^
        trance_18_3.hashCode ^
        omega_6_eicosadieno.hashCode ^
        eicosatrieno.hashCode ^
        omega_6_20_3.hashCode ^
        omega_6_docosatetraeno.hashCode ^
        lycopene.hashCode ^
        tocopherol_delta.hashCode ^
        polyun_trans_fats.hashCode ^
        tridecane_13_0.hashCode ^
        omega_3.hashCode ^
        pentadecene.hashCode ^
        caffeine.hashCode ^
        theobromine.hashCode ^
        trans_trans.hashCode ^
        menaquinone_4.hashCode ^
        campesterol.hashCode ^
        stigmasterol.hashCode ^
        e_vitamin_added.hashCode ^
        b12_vitamin_added.hashCode ^
        trance_22_1.hashCode ^
        dihydrophylloquinone.hashCode ^
        d2_vitamin_ergocalciferol.hashCode ^
        omega_6_20_4.hashCode ^
        omega_3_geneico.hashCode;
  }
}
