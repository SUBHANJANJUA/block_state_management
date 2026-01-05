import 'package:bloc/bloc.dart';
import 'package:block_practice/boc/image_picker/image_picker_event.dart';
import 'package:block_practice/boc/image_picker/image_picker_state.dart';
import 'package:block_practice/utils/image_picker_utils.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerBloc extends Bloc<ImagePickerEvent, ImagePickerState> {
  final ImagePickerUtils _imagePickerUtils;

  ImagePickerBloc(this._imagePickerUtils) : super(ImagePickerState()) {
    on<CameraPicker>(_pickFromCamera);
    on<GalleryPicker>(_pickFromGallery);
  }

  void _pickFromCamera(
    CameraPicker event,
    Emitter<ImagePickerState> emit,
  ) async {
    XFile? file = await _imagePickerUtils.pickImageFromCamera();
    emit(state.copyWith(file: file));
  }

  void _pickFromGallery(
    GalleryPicker event,
    Emitter<ImagePickerState> emit,
  ) async {
    XFile? file2 = await _imagePickerUtils.pickImageFromGallery();
    emit(state.copyWith(file2: file2));
  }
}
