import 'package:freezed_annotation/freezed_annotation.dart';
part 'covid_dto.freezed.dart';
part 'covid_dto.g.dart';

@freezed
abstract class CovidSummary with _$CovidSummary {
  factory CovidSummary({
    @JsonKey(name: 'Global') Global global,
    @JsonKey(name: 'Countries') List<Country> countries,
    @JsonKey(name: 'Date') String date,
  }) = _CovidSummary;

  factory CovidSummary.fromJson(Map<String, dynamic> json) =>
      _$CovidSummaryFromJson(json);
}

@freezed
abstract class Global with _$Global {
  factory Global({
    @JsonKey(name: 'NewConfirmed') int newConfirmed,
    @JsonKey(name: 'TotalConfirmed') int totalConfirmed,
    @JsonKey(name: 'NewDeaths') int newDeaths,
    @JsonKey(name: 'TotalDeaths') int totalDeaths,
    @JsonKey(name: 'NewRecovered') int newRecovered,
    @JsonKey(name: 'TotalRecovered') int totalRecovered,
  }) = _Global;

  factory Global.fromJson(Map<String, dynamic> json) => _$GlobalFromJson(json);
}

@freezed
abstract class Country with _$Country {
  factory Country({
    @JsonKey(name: 'Country') String country,
    @JsonKey(name: 'CountryCode') String countryCode,
    @JsonKey(name: 'Slug') String slug,
    @JsonKey(name: 'NewConfirmed') int newConfirmed,
    @JsonKey(name: 'TotalConfirmed') int totalConfirmed,
    @JsonKey(name: 'NewDeaths') int newDeaths,
    @JsonKey(name: 'TotalDeaths') int totalDeaths,
    @JsonKey(name: 'NewRecovered') int newRecovered,
    @JsonKey(name: 'TotalRecovered') int totalRecovered,
    @JsonKey(name: 'Date') String date,
  }) = _Country;

  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);
}
