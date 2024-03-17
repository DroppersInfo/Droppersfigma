// ignore_for_file: must_be_immutable

part of 'droppers_five_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DroppersFive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DroppersFiveEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the DroppersFive widget is first created.
class DroppersFiveInitialEvent extends DroppersFiveEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends DroppersFiveEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
