import 'package:block_practice/boc/switch/switch_bloc.dart';
import 'package:block_practice/boc/switch/switch_event.dart';
import 'package:block_practice/boc/switch/switch_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SwitchSliderScreen extends StatelessWidget {
  const SwitchSliderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Switch and Slider Example')),
      body: Column(
        spacing: 20,
        children: [
          BlocBuilder<SwitchBloc, SwitchState>(
            buildWhen: (previous, current) => previous.isOn != current.isOn,
            builder: (context, state) {
              return SwitchListTile(
                title: const Text('Enable Feature'),
                value: state.isOn,
                onChanged: (bool value) {
                  context.read<SwitchBloc>().add(ToggleSwitch());
                },
              );
            },
          ),
          BlocBuilder<SwitchBloc, SwitchState>(
            buildWhen: (previous, current) =>
                previous.sliderValue != current.sliderValue,
            builder: (context, state) {
              return Container(
                height: 100,
                width: double.infinity,
                color: Colors.red.withValues(alpha: state.sliderValue),
              );
            },
          ),
          BlocBuilder<SwitchBloc, SwitchState>(
            buildWhen: (previous, current) =>
                previous.sliderValue != current.sliderValue,
            builder: (context, state) {
              return Slider(
                value: state.sliderValue,
                onChanged: (double value) {
                  print(value.toString());
                  context.read<SwitchBloc>().add(UpdateSlider(value: value));
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
