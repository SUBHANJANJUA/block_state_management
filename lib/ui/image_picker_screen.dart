import 'dart:io';

import 'package:block_practice/boc/image_picker/image_picker_bloc.dart';
import 'package:block_practice/boc/image_picker/image_picker_event.dart';
import 'package:block_practice/boc/image_picker/image_picker_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImagePickerScreen extends StatelessWidget {
  const ImagePickerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Image Picker Screen')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<ImagePickerBloc, ImagePickerState>(
            buildWhen: (previous, current) => previous.file != current.file,
            builder: (context, state) {
              if (state.file == null) {
                return InkWell(
                  onTap: () {
                    context.read<ImagePickerBloc>().add(CameraPicker());
                  },
                  child: Icon(Icons.camera_alt, size: 100, color: Colors.grey),
                );
              } else {
                return Image.file(
                  File(state.file!.path.toString()),

                  height: 200,
                );
              }
            },
          ),

          const SizedBox(height: 20, width: double.infinity),
          BlocBuilder<ImagePickerBloc, ImagePickerState>(
            buildWhen: (previous, current) => previous.file2 != current.file2,
            builder: (context, state) {
              if (state.file2 == null) {
                return InkWell(
                  onTap: () {
                    context.read<ImagePickerBloc>().add(GalleryPicker());
                  },
                  child: Icon(Icons.photo, size: 100, color: Colors.blue),
                );
              } else {
                return Image.file(
                  File(state.file2!.path.toString()),

                  height: 200,
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
