import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_bar_event.dart';
part 'bottom_bar_state.dart';
part 'bottom_bar_bloc.freezed.dart';

class BottomBarBloc extends Bloc<BottomBarEvent, BottomBarState> {
  BottomBarBloc() : super(BottomBarState.initial()) {
    on<_GetCurrentIndex>((event, emit) {
      emit(state.copyWith(index: event.index));
    });
  }
}
