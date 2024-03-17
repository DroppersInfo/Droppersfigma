// ignore_for_file: must_be_immutable

part of 'droppers_three_bloc.dart';

/// Represents the state of DroppersThree in the application.
class DroppersThreeState extends Equatable {
  DroppersThreeState({
    this.group360Controller,
    this.droppersThreeModelObj,
  });

  TextEditingController? group360Controller;

  DroppersThreeModel? droppersThreeModelObj;

  @override
  List<Object?> get props => [
        group360Controller,
        droppersThreeModelObj,
      ];

  DroppersThreeState copyWith({
    TextEditingController? group360Controller,
    DroppersThreeModel? droppersThreeModelObj,
  }) {
    return DroppersThreeState(
      group360Controller: group360Controller ?? this.group360Controller,
      droppersThreeModelObj:
          droppersThreeModelObj ?? this.droppersThreeModelObj,
    );
  }
}
