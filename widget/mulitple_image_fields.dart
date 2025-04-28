import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'form_controller.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class MultipleImageFields extends StatelessWidget {
  final FormController controller = Get.find();
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage(String fieldName) async {
    final pickedFile = await _picker.pickMultiImage();
    if (pickedFile != null) {
      List<String> imagePaths = pickedFile.map((file) => file.path).toList();
      controller.updateImageField(fieldName, imagePaths);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildImageField('Images', controller.service.value.images),
        _buildImageField('Documents', controller.service.value.documents),
        _buildImageField('Licence Documents', controller.service.value.licenceDocuments),
        _buildImageField('Plan Documents', controller.service.value.planDocuments),
        _buildImageField('Financial Capacity Documents', controller.service.value.financialCapacityDocuments),
        _buildImageField('CV', controller.service.value.cv),
      ],
    );
  }

  Widget _buildImageField(String label, List<String>? images) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        Wrap(
          children: List<Widget>.generate(
            images?.length ?? 0,
            (index) => Padding(
              padding: const EdgeInsets.all(4.0),
              child: Stack(
                children: [
                  Image.file(File(images![index])),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: IconButton(
                      icon: Icon(Icons.remove_circle),
                      onPressed: () {
                        controller.removeImage(label, images![index]);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () => _pickImage(label),
          child: Text('Upload $label'),
        ),
      ],
    );
  }
}
