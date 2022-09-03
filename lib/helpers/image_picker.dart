import 'dart:io';

import 'package:image_picker/image_picker.dart' as imp;

class ImagePicker {
  static Future<List<File>> pickImages({bool multiple = true}) async {
    /*FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.image,
      allowMultiple: multiple,
      withData: true,
    );

    return result?.files.map((e) => File(e.path!)).toList() ?? [];*/

    final result = await imp.ImagePicker().pickMultiImage();
    return result?.map((e) => File(e.path)).toList() ?? [];
  }

  static Future<File?> pickImageFromCamera() async {
    final _picker = imp.ImagePicker();
    final result = await _picker.pickImage(source: imp.ImageSource.camera);

    return result != null ? File(result.path) : null;
  }
}
