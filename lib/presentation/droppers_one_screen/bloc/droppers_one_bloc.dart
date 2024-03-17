import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:infodroppers_s_application1/presentation/droppers_one_screen/models/droppers_one_model.dart';
part 'droppers_one_event.dart';
part 'droppers_one_state.dart';

/// A bloc that manages the state of a DroppersOne according to the event that is dispatched to it.
class DroppersOneBloc extends Bloc<DroppersOneEvent, DroppersOneState> {
  DroppersOneBloc(DroppersOneState initialState) : super(initialState) {
    on<DroppersOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DroppersOneInitialEvent event,
    Emitter<DroppersOneState> emit,
  ) async {
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.droppersTwoScreen,
      );
    });
  }
}
