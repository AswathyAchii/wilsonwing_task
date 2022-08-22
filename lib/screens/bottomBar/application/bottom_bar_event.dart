part of 'bottom_bar_bloc.dart';

@freezed
class BottomBarEvent with _$BottomBarEvent {
  const factory BottomBarEvent.started() = _Started;
  const factory BottomBarEvent.getCurrentIndex({
    required int index,
  }) = _GetCurrentIndex;
}
