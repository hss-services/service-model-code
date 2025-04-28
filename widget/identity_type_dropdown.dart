import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'form_controller.dart';

class IdentityTypeDropdownField extends StatelessWidget {
  final FormController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return DropdownButtonFormField<String>(
        decoration: InputDecoration(labelText: 'Identity Type'),
        value: controller.service.value.identityType,
        items: ['OWNER', 'SELLER', 'INVESTOR', 'PARTNER', 'BROKER', 'AGENT', 'ELSE']
            .map((label) => DropdownMenuItem(
                  value: label,
                  child: Text(label),
                ))
            .toList(),
        onChanged: (value) {
          controller.service.update((val) {
            val?.identityType = value;
          });
        },
        validator: (value) => controller.validateField('Identity Type', value),
      );
    });
  }
}
