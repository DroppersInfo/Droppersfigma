// ignore_for_file: must_be_immutable

part of 'droppers_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DroppersTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DroppersTwoEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the DroppersTwo widget is first created.
class DroppersTwoInitialEvent extends DroppersTwoEvent {
  @override
  List<Object?> get props => [];
}
