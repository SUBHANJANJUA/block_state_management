import 'package:equatable/equatable.dart';

abstract class SwitchEvent extends Equatable {
  const SwitchEvent();
  @override
  List<Object> get props => [];
}

class ToggleSwitch extends SwitchEvent {}

// ignore: must_be_immutable
class UpdateSlider extends SwitchEvent {
  double value;
  UpdateSlider({required this.value});

  @override
  List<Object> get props => [value];
}
