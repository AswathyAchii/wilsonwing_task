part of 'report_bloc.dart';

@freezed
class ReportState with _$ReportState {
  factory ReportState() = _ReportState;
  factory ReportState.initial() {
    return ReportState();
  }
}
