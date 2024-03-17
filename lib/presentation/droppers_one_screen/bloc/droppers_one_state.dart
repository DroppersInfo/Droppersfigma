// ignore_for_file: must_be_immutable

part of 'droppers_one_bloc.dart';

/// Represents the state of DroppersOne in the application.
class DroppersOneState extends Equatable {
  DroppersOneState({this.droppersOneModelObj});

  DroppersOneModel? droppersOneModelObj;

  @override
  List<Object?> get props => [
        droppersOneModelObj,
      ];

  DroppersOneState copyWith({DroppersOneModel? droppersOneModelObj}) {
    return DroppersOneState(
      droppersOneModelObj: droppersOneModelObj ?? this.droppersOneModelObj,
    );
  }
}
