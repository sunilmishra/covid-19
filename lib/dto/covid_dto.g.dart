// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'covid_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

// ignore: non_constant_identifier_names
_$_CovidSummary _$_$_CovidSummaryFromJson(Map<String, dynamic> json) {
  return _$_CovidSummary(
    global: json['Global'] == null
        ? null
        : Global.fromJson(json['Global'] as Map<String, dynamic>),
    countries: (json['Countries'] as List)
        ?.map((e) =>
            e == null ? null : Country.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    date: json['Date'] as String,
  );
}

// ignore: non_constant_identifier_names
Map<String, dynamic> _$_$_CovidSummaryToJson(_$_CovidSummary instance) =>
    <String, dynamic>{
      'Global': instance.global,
      'Countries': instance.countries,
      'Date': instance.date,
    };

// ignore: non_constant_identifier_names
_$_Global _$_$_GlobalFromJson(Map<String, dynamic> json) {
  return _$_Global(
    newConfirmed: json['NewConfirmed'] as int,
    totalConfirmed: json['TotalConfirmed'] as int,
    newDeaths: json['NewDeaths'] as int,
    totalDeaths: json['TotalDeaths'] as int,
    newRecovered: json['NewRecovered'] as int,
    totalRecovered: json['TotalRecovered'] as int,
  );
}

// ignore: non_constant_identifier_names
Map<String, dynamic> _$_$_GlobalToJson(_$_Global instance) => <String, dynamic>{
      'NewConfirmed': instance.newConfirmed,
      'TotalConfirmed': instance.totalConfirmed,
      'NewDeaths': instance.newDeaths,
      'TotalDeaths': instance.totalDeaths,
      'NewRecovered': instance.newRecovered,
      'TotalRecovered': instance.totalRecovered,
    };
// ignore: non_constant_identifier_names
_$_Country _$_$_CountryFromJson(Map<String, dynamic> json) {
  return _$_Country(
    country: json['Country'] as String,
    countryCode: json['CountryCode'] as String,
    slug: json['Slug'] as String,
    newConfirmed: json['NewConfirmed'] as int,
    totalConfirmed: json['TotalConfirmed'] as int,
    newDeaths: json['NewDeaths'] as int,
    totalDeaths: json['TotalDeaths'] as int,
    newRecovered: json['NewRecovered'] as int,
    totalRecovered: json['TotalRecovered'] as int,
    date: json['Date'] as String,
  );
}

// ignore: non_constant_identifier_names
Map<String, dynamic> _$_$_CountryToJson(_$_Country instance) =>
    <String, dynamic>{
      'Country': instance.country,
      'CountryCode': instance.countryCode,
      'Slug': instance.slug,
      'NewConfirmed': instance.newConfirmed,
      'TotalConfirmed': instance.totalConfirmed,
      'NewDeaths': instance.newDeaths,
      'TotalDeaths': instance.totalDeaths,
      'NewRecovered': instance.newRecovered,
      'TotalRecovered': instance.totalRecovered,
      'Date': instance.date,
    };
