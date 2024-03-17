import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:infodroppers_s_application1/presentation/droppers_five_screen/models/droppers_five_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'droppers_five_event.dart';
part 'droppers_five_state.dart';

/// A bloc that manages the state of a DroppersFive according to the event that is dispatched to it.
class DroppersFiveBloc extends Bloc<DroppersFiveEvent, DroppersFiveState>
    with CodeAutoFill {
  DroppersFiveBloc(DroppersFiveState initialState) : super(initialState) {
    on<DroppersFiveInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<DroppersFiveState> emit,
  ) {
    emit(state.copyWith(
      otpController: TextEditingController(text: event.code),
    ));
  }

  _onInitialize(
    DroppersFiveInitialEvent event,
    Emitter<DroppersFiveState> emit,
  ) async {
    emit(state.copyWith(
      otpController: TextEditingController(),
    ));
    listenForCode();
  }
}
