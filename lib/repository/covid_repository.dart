import 'dart:async';

import 'package:covid_19/dto/covid_dto.dart';
import 'package:meta/meta.dart';

import 'covid_provider.dart';

class CovidRepository {
  final CovidApiClient apiClient;

  CovidRepository({
    @required this.apiClient,
  }) : assert(apiClient != null);

  Future<CovidSummary> getCovidSummary() async {
    return await apiClient.fetchSummary();
  }
}
