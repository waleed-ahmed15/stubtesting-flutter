import 'dart:typed_data';
import 'package:image_picker/image_picker.dart';
import 'package:stubtesting/image_picker/platform_impl/base_image_picker.dart';

class ImagePickerImpl extends BaseImagePicker {
  final ImagePicker imagePicker = ImagePicker();
  Uint8List? imagebyte;
  String? base64img;

  @override
  void imagePickerFunc() {
    print('imagePickerFunc() for mob');
    _pickBase64Image();
  }

  void _pickBase64Image() async {
    final XFile? image =
        await imagePicker.pickImage(source: ImageSource.gallery);
    // uploadImage(File(image!.path));
    if (image != null) {
      imagebyte = await image.readAsBytes();
      return;
    }
  }
}
