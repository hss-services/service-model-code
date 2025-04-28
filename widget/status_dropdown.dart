import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'form_controller.dart';

class StatusDropdownField extends StatelessWidget {
  final FormController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return DropdownButtonFormField<String>(
        decoration: InputDecoration(labelText: 'Status'),
        value: controller.service.value.status,
        items: [
          'PENDING',
          'REJECTED',
          'APPROVED',
        ]
            .map((label) => DropdownMenuItem(
                  value: label,
                  child: Text(label),
                ))
            .toList(),
        onChanged: (value) {
          controller.service.update((val) {
            val?.status = value;
          });
        },
        validator: (value) => controller.validateField('Status', value),
      );
    });
  }
}
