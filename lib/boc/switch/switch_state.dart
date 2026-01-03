import 'package:equatable/equatable.dart';

class SwitchState extends Equatable {
  final bool isOn;
  final double sliderValue;

  const SwitchState({this.isOn = false, this.sliderValue = 0.4});

  SwitchState copyWith({bool? isOn, double? sliderValue}) {
    return SwitchState(
      isOn: isOn ?? this.isOn,
      sliderValue: sliderValue ?? this.sliderValue,
    );
  }

  @override
  List<Object> get props => [isOn, sliderValue];
}
