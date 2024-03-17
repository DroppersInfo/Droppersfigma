// ignore_for_file: must_be_immutable

part of 'droppers_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DroppersThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DroppersThreeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the DroppersThree widget is first created.
class DroppersThreeInitialEvent extends DroppersThreeEvent {
  @override
  List<Object?> get props => [];
}
