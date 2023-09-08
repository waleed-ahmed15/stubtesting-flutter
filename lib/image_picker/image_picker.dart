import 'platform_impl/stub_image_picker.dart'
    if (dart.library.io) 'platform_impl/image_picker_mob.dart'
    if (dart.library.html) 'platform_impl/image_picker_web.dart'; // Assuming you want a different implementation for web.

class MyImagePicker {
  ImagePickerImpl imagePickerImpl = ImagePickerImpl();

  void imagePickerF() {
    print('called');
    imagePickerImpl.imagePickerFunc();
  }
}
