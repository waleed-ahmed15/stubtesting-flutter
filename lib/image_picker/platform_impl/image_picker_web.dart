import 'package:stubtesting/image_picker/platform_impl/base_image_picker.dart';
import 'package:image_picker_web/image_picker_web.dart';

class ImagePickerImpl extends BaseImagePicker {
  @override
  void imagePickerFunc() async {
    print('imagePickerFunc() for web');
    final fromPicker = await ImagePickerWeb.getImageAsWidget();
    

  }
}
