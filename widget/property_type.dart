import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'form_controller.dart';

class PropertyTypeDropdownField extends StatelessWidget {
  final FormController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return DropdownButtonFormField<String>(
        decoration: InputDecoration(labelText: 'Property Type'),
        value: controller.service.value.propertyType,
        items: [
          'SELL',
          'BUY',
          'POST_SERVICE',
          'REQUEST_SERVICE',
          'YEARLY_RENT',
          'MONTHLY_RENT',
          'WEEKLY_RENT',
          'DAILY_RENT',
          'HOURLY_RENT',
          'INVESTMENT',
          'INVESTOR',
          'CONTRACTOR',
          'PARTNER'
        ]
            .map((label) => DropdownMenuItem(
                  value: label,
                  child: Text(label),
                ))
            .toList(),
        onChanged: (value) {
          controller.service.update((val) {
            val?.propertyType = value;
          });
        },
        validator: (value) => controller.validateField('Property Type', value),
      );
    });
  }
}
