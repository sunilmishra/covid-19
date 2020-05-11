import 'package:freezed_annotation/freezed_annotation.dart';
part 'covid_dto.g.dart';

@JsonSerializable(anyMap: true)
class CovidSummary {
  const CovidSummary({
    this.global,
    this.countries,
    this.date,
  });

  @JsonKey(name: 'Global')
  final Global global;

  @JsonKey(name: 'Countries')
  final List<Country> countries;

  @JsonKey(name: 'Date')
  final String date;

  factory CovidSummary.fromJson(Map<String, dynamic> json) =>
      _$CovidSummaryFromJson(json);

  Map<String, dynamic> toJson() => _$CovidSummaryToJson(this);
}

@JsonSerializable(anyMap: true)
class Global {
  const Global(
    this.newConfirmed,
    this.totalConfirmed,
    this.newDeaths,
    this.totalDeaths,
    this.newRecovered,
    this.totalRecovered,
  );

  @JsonKey(name: 'NewConfirmed')
  final int newConfirmed;

  @JsonKey(name: 'TotalConfirmed')
  final int totalConfirmed;

  @JsonKey(name: 'NewDeaths')
  final int newDeaths;

  @JsonKey(name: 'TotalDeaths')
  final int totalDeaths;

  @JsonKey(name: 'NewRecovered')
  final int newRecovered;

  @JsonKey(name: 'TotalRecovered')
  final int totalRecovered;

  factory Global.fromJson(Map<String, dynamic> json) => _$GlobalFromJson(json);

  Map<String, dynamic> toJson() => _$GlobalToJson(this);
}

@JsonSerializable(anyMap: true)
class Country {
  const Country({
    this.country,
    this.countryCode,
    this.slug,
    this.newConfirmed,
    this.totalConfirmed,
    this.newDeaths,
    this.totalDeaths,
    this.newRecovered,
    this.totalRecovered,
    this.date,
  });

  @JsonKey(name: 'Country')
  final String country;

  @JsonKey(name: 'CountryCode')
  final String countryCode;

  @JsonKey(name: 'Slug')
  final String slug;

  @JsonKey(name: 'NewConfirmed')
  final int newConfirmed;

  @JsonKey(name: 'TotalConfirmed')
  final int totalConfirmed;

  @JsonKey(name: 'NewDeaths')
  final int newDeaths;

  @JsonKey(name: 'TotalDeaths')
  final int totalDeaths;

  @JsonKey(name: 'NewRecovered')
  final int newRecovered;

  @JsonKey(name: 'TotalRecovered')
  final int totalRecovered;

  @JsonKey(name: 'Date')
  final String date;

  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);

  Map<String, dynamic> toJson() => _$CountryToJson(this);
}
