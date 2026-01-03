import 'package:bloc/bloc.dart';
import 'package:block_practice/boc/switch/switch_event.dart';
import 'package:block_practice/boc/switch/switch_state.dart';

class SwitchBloc extends Bloc<SwitchEvent, SwitchState> {
  SwitchBloc() : super(SwitchState()) {
    on<ToggleSwitch>(_toggle);
    on<UpdateSlider>(_sliderUpdate);
  }

  void _toggle(ToggleSwitch event, Emitter<SwitchState> emit) {
    emit(state.copyWith(isOn: !state.isOn));
  }

  void _sliderUpdate(UpdateSlider event, Emitter<SwitchState> emit) {
    emit(state.copyWith(sliderValue: event.value));
  }
}
