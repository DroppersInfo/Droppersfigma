// ignore_for_file: must_be_immutable

part of 'droppers_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DroppersOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DroppersOneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the DroppersOne widget is first created.
class DroppersOneInitialEvent extends DroppersOneEvent {
  @override
  List<Object?> get props => [];
}
