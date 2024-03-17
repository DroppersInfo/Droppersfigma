// ignore_for_file: must_be_immutable

part of 'droppers_five_bloc.dart';

/// Represents the state of DroppersFive in the application.
class DroppersFiveState extends Equatable {
  DroppersFiveState({
    this.otpController,
    this.droppersFiveModelObj,
  });

  TextEditingController? otpController;

  DroppersFiveModel? droppersFiveModelObj;

  @override
  List<Object?> get props => [
        otpController,
        droppersFiveModelObj,
      ];

  DroppersFiveState copyWith({
    TextEditingController? otpController,
    DroppersFiveModel? droppersFiveModelObj,
  }) {
    return DroppersFiveState(
      otpController: otpController ?? this.otpController,
      droppersFiveModelObj: droppersFiveModelObj ?? this.droppersFiveModelObj,
    );
  }
}
