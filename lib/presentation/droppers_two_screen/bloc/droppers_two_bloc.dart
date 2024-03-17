import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:infodroppers_s_application1/presentation/droppers_two_screen/models/droppers_two_model.dart';
part 'droppers_two_event.dart';
part 'droppers_two_state.dart';

/// A bloc that manages the state of a DroppersTwo according to the event that is dispatched to it.
class DroppersTwoBloc extends Bloc<DroppersTwoEvent, DroppersTwoState> {
  DroppersTwoBloc(DroppersTwoState initialState) : super(initialState) {
    on<DroppersTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DroppersTwoInitialEvent event,
    Emitter<DroppersTwoState> emit,
  ) async {}
}
