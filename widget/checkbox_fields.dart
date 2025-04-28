import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'form_controller.dart';

class CheckBoxForm extends StatelessWidget {
  final FormController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() {
          return CheckboxListTile(
            title: Text('Is Furnished'),
            value: controller.service.value.isFurnished == 1,
            onChanged: (value) {
              controller.service.update((val) {
                val?.isFurnished = value ? 1 : 0;
              });
            },
          );
        }),
        Obx(() {
          return CheckboxListTile(
            title: Text('Delivery Service'),
            value: controller.service.value.deliveryService == true,
            onChanged: (value) {
              controller.service.update((val) {
                val?.deliveryService = value;
              });
            },
          );
        }),
        Obx(() {
          return CheckboxListTile(
            title: Text('Special Pool'),
            value: controller.service.value.specialPool == true,
            onChanged: (value) {
              controller.service.update((val) {
                val?.specialPool = value;
              });
            },
          );
        }),
        Obx(() {
          return CheckboxListTile(
            title: Text('Special View'),
            value: controller.service.value.specialView == true,
            onChanged: (value) {
              controller.service.update((val) {
                val?.specialView = value;
              });
            },
          );
        }),
        Obx(() {
          return CheckboxListTile(
            title: Text('Wifi'),
            value: controller.service.value.wifi == 1,
            onChanged: (value) {
              controller.service.update((val) {
                val?.wifi = value ? 1 : 0;
              });
            },
          );
        }),
        Obx(() {
          return CheckboxListTile(
            title: Text('Air Conditions'),
            value: controller.service.value.airConditions == 1,
            onChanged: (value) {
              controller.service.update((val) {
                val?.airConditions = value ? 1 : 0;
              });
            },
          );
        }),
        Obx(() {
          return CheckboxListTile(
            title: Text('Is Under Construction'),
            value: controller.service.value.isUnderConstruction == 1,
            onChanged: (value) {
              controller.service.update((val) {
                val?.isUnderConstruction = value ? 1 : 0;
              });
            },
          );
        }),
        Obx(() {
          return CheckboxListTile(
            title: Text('Is Ready to Move In'),
            value: controller.service.value.isReadyToMoveIn == 1,
            onChanged: (value) {
              controller.service.update((val) {
                val?.isReadyToMoveIn = value ? 1 : 0;
              });
            },
          );
        }),
        Obx(() {
          return CheckboxListTile(
            title: Text('Is Featured'),
            value: controller.service.value.isFeatured == 1,
            onChanged: (value) {
              controller.service.update((val) {
                val?.isFeatured = value ? 1 : 0;
              });
            },
          );
        }),
      ],
    );
  }
}
