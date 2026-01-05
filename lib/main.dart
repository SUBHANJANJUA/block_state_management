import 'package:block_practice/boc/Counter/counter_bloc.dart';
import 'package:block_practice/boc/image_picker/image_picker_bloc.dart';
import 'package:block_practice/boc/switch/switch_bloc.dart';
import 'package:block_practice/boc/todo/to_do_bloc.dart';
import 'package:block_practice/ui/to_do_screen.dart';
import 'package:block_practice/utils/image_picker_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CounterBloc()),
        BlocProvider(create: (context) => SwitchBloc()),
        BlocProvider(create: (context) => ImagePickerBloc(ImagePickerUtils())),
        BlocProvider(create: (context) => ToDoBloc()),
      ],
      child: MaterialApp(
        title: 'Flutter Bloc Counter',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const ToDoScreen(),
      ),
    );
  }
}
