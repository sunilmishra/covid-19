import 'package:covid_19/dto/covid_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'covid_state.freezed.dart';

@freezed
abstract class CovidState with _$CovidState {
  const factory CovidState.loading() = _CovidSummaryLoading;
  const factory CovidState.content(CovidSummary summary) = _CovidSummaryContent;
  const factory CovidState.error() = _CovidSummaryError;
}
