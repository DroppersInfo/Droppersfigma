// ignore_for_file: must_be_immutable

part of 'droppers_two_bloc.dart';

/// Represents the state of DroppersTwo in the application.
class DroppersTwoState extends Equatable {
  DroppersTwoState({this.droppersTwoModelObj});

  DroppersTwoModel? droppersTwoModelObj;

  @override
  List<Object?> get props => [
        droppersTwoModelObj,
      ];

  DroppersTwoState copyWith({DroppersTwoModel? droppersTwoModelObj}) {
    return DroppersTwoState(
      droppersTwoModelObj: droppersTwoModelObj ?? this.droppersTwoModelObj,
    );
  }
}
