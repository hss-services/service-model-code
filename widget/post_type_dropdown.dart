import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'form_controller.dart';

class DropdownField extends StatelessWidget {
  final FormController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return DropdownButtonFormField<String>(
        decoration: InputDecoration(labelText: 'Post Type'),
        value: controller.service.value.postType,
        items: ['POST', 'REQUEST', 'POST_TENDER', 'REQUEST_TENDER']
            .map((label) => DropdownMenuItem(
                  value: label,
                  child: Text(label),
                ))
            .toList(),
        onChanged: (value) {
          controller.service.update((val) {
            val?.postType = value;
          });
        },
        validator: (value) => controller.validateField('Post Type', value),
      );
    });
  }
}
