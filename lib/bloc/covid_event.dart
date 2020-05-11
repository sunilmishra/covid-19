import 'package:freezed_annotation/freezed_annotation.dart';
part 'covid_event.freezed.dart';

@freezed
abstract class CovidEvent with _$CovidEvent {
  const factory CovidEvent.fetchSummary() = CovidSummaryEvent;
}
