// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'covid_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CovidSummary _$CovidSummaryFromJson(Map json) {
  return CovidSummary(
    global: json['Global'] == null
        ? null
        : Global.fromJson((json['Global'] as Map)?.map(
            (k, e) => MapEntry(k as String, e),
          )),
    countries: (json['Countries'] as List)
        ?.map((e) => e == null
            ? null
            : Country.fromJson((e as Map)?.map(
                (k, e) => MapEntry(k as String, e),
              )))
        ?.toList(),
    date: json['Date'] as String,
  );
}

Map<String, dynamic> _$CovidSummaryToJson(CovidSummary instance) =>
    <String, dynamic>{
      'Global': instance.global,
      'Countries': instance.countries,
      'Date': instance.date,
    };

Global _$GlobalFromJson(Map json) {
  return Global(
    json['NewConfirmed'] as int,
    json['TotalConfirmed'] as int,
    json['NewDeaths'] as int,
    json['TotalDeaths'] as int,
    json['NewRecovered'] as int,
    json['TotalRecovered'] as int,
  );
}

Map<String, dynamic> _$GlobalToJson(Global instance) => <String, dynamic>{
      'NewConfirmed': instance.newConfirmed,
      'TotalConfirmed': instance.totalConfirmed,
      'NewDeaths': instance.newDeaths,
      'TotalDeaths': instance.totalDeaths,
      'NewRecovered': instance.newRecovered,
      'TotalRecovered': instance.totalRecovered,
    };

Country _$CountryFromJson(Map json) {
  return Country(
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

Map<String, dynamic> _$CountryToJson(Country instance) => <String, dynamic>{
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
