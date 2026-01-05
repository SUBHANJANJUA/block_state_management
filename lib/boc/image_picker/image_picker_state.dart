import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerState extends Equatable {
  const ImagePickerState({this.file, this.file2});

  final XFile? file;
  final XFile? file2;

  ImagePickerState copyWith({XFile? file, XFile? file2}) {
    return ImagePickerState(
      file: file ?? this.file,
      file2: file2 ?? this.file2,
    );
  }

  @override
  List<Object?> get props => [file, file2];
}
