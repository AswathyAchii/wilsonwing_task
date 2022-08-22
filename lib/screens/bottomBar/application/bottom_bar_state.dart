part of 'bottom_bar_bloc.dart';

@freezed
class BottomBarState with _$BottomBarState {
  const factory BottomBarState({
    required int index,
  }) = _BottomBarState;
  factory BottomBarState.initial() {
    return const BottomBarState(index: 0);
  }
}
