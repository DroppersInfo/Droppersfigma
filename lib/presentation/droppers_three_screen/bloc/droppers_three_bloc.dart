import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:infodroppers_s_application1/presentation/droppers_three_screen/models/droppers_three_model.dart';
part 'droppers_three_event.dart';
part 'droppers_three_state.dart';

/// A bloc that manages the state of a DroppersThree according to the event that is dispatched to it.
class DroppersThreeBloc extends Bloc<DroppersThreeEvent, DroppersThreeState> {
  DroppersThreeBloc(DroppersThreeState initialState) : super(initialState) {
    on<DroppersThreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DroppersThreeInitialEvent event,
    Emitter<DroppersThreeState> emit,
  ) async {
    emit(state.copyWith(
      group360Controller: TextEditingController(),
    ));
  }
}
