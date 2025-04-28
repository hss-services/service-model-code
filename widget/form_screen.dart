import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'form_controller.dart';
import 'service_model.dart';

class FormScreen extends StatelessWidget {
  final FormController controller = Get.put(FormController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Validation'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Obx(() {
          return Form(
            child: ListView(
              children: [
                TextFormField(
                  decoration: InputDecoration(labelText: 'Category ID'),
                  onChanged: (value) => controller.service.update((val) {
                    val?.categoryId = int.parse(value);
                  }),
                  validator: (value) => controller.validateField('Category ID', value),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Sub Category ID'),
                  onChanged: (value) => controller.service.update((val) {
                    val?.subCategoryId = int.parse(value);
                  }),
                  validator: (value) => controller.validateField('Sub Category ID', value),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Post Type'),
                  onChanged: (value) => controller.service.update((val) {
                    val?.postType = value;
                  }),
                  validator: (value) => controller.validateField('Post Type', value),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Property Type'),
                  onChanged: (value) => controller.service.update((val) {
                    val?.propertyType = value;
                  }),
                  validator: (value) => controller.validateField('Property Type', value),
                ),
                if (controller.service.value.propertyType == 'INVESTMENT') ...[
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Investment Amount'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.investmentAmount = value;
                    }),
                    validator: (value) => controller.validateField('Investment Amount', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Days of Investment'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.daysOfInvestments = value;
                    }),
                    validator: (value) => controller.validateField('Days of Investment', value),
                  ),
                ],
                if (controller.service.value.propertyType == 'SELL') ...[
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Price'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.price = value;
                    }),
                    validator: (value) => controller.validateField('Price', value),
                  ),
                ],
                if (controller.service.value.categoryId == 1 && controller.service.value.postType == 'POST') ...[
                  if ([2, 3, 4, 5].contains(controller.service.value.subCategoryId)) ...[
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Images'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.images?.add(value);
                      }),
                      validator: (value) => controller.validateField('Images', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Video Link'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.videoLink = value;
                      }),
                      validator: (value) => controller.validateField('Video Link', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Address'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.address = value;
                      }),
                      validator: (value) => controller.validateField('Address', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Latitude'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.lat = value;
                      }),
                      validator: (value) => controller.validateField('Latitude', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Longitude'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.lng = value;
                      }),
                      validator: (value) => controller.validateField('Longitude', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'User ID'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.userId = int.parse(value);
                      }),
                      validator: (value) => controller.validateField('User ID', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'City ID'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.cityId = int.parse(value);
                      }),
                      validator: (value) => controller.validateField('City ID', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Country ID'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.countryId = int.parse(value);
                      }),
                      validator: (value) => controller.validateField('Country ID', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Identity Type'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.identityType = value;
                      }),
                      validator: (value) => controller.validateField('Identity Type', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Title'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.title = value;
                      }),
                      validator: (value) => controller.validateField('Title', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Total Area'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.totalArea = value;
                      }),
                      validator: (value) => controller.validateField('Total Area', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Built Area'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.builtArea = value;
                      }),
                      validator: (value) => controller.validateField('Built Area', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Number of Floors'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.numberOfFloors = int.parse(value);
                      }),
                      validator: (value) => controller.validateField('Number of Floors', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Number of Rooms'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.numberOfRooms = int.parse(value);
                      }),
                      validator: (value) => controller.validateField('Number of Rooms', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Number of Bathrooms'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.numberOfBathrooms = int.parse(value);
                      }),
                      validator: (value) => controller.validateField('Number of Bathrooms', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Is Furnished'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.isFurnished = int.parse(value);
                      }),
                      validator: (value) => controller.validateField('Is Furnished', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Age'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.age = value;
                      }),
                      validator: (value) => controller.validateField('Age', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Documents'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.documents?.add(value);
                      }),
                      validator: (value) => controller.validateField('Documents', value),
                    ),
                  ],
                  if ([6, 7, 8].contains(controller.service.value.subCategoryId)) ...[
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Images'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.images?.add(value);
                      }),
                      validator: (value) => controller.validateField('Images', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Video Link'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.videoLink = value;
                      }),
                      validator: (value) => controller.validateField('Video Link', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Address'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.address = value;
                      }),
                      validator: (value) => controller.validateField('Address', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Latitude'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.lat = value;
                      }),
                      validator: (value) => controller.validateField('Latitude', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Longitude'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.lng = value;
                      }),
                      validator: (value) => controller.validateField('Longitude', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'User ID'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.userId = int.parse(value);
                      }),
                      validator: (value) => controller.validateField('User ID', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'City ID'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.cityId = int.parse(value);
                      }),
                      validator: (value) => controller.validateField('City ID', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Country ID'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.countryId = int.parse(value);
                      }),
                      validator: (value) => controller.validateField('Country ID', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Identity Type'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.identityType = value;
                      }),
                      validator: (value) => controller.validateField('Identity Type', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Title'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.title = value;
                      }),
                      validator: (value) => controller.validateField('Title', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Number of Floors'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.numberOfFloors = int.parse(value);
                      }),
                      validator: (value) => controller.validateField('Number of Floors', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Number of Rooms'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.numberOfRooms = int.parse(value);
                      }),
                      validator: (value) => controller.validateField('Number of Rooms', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Number of Bathrooms'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.numberOfBathrooms = int.parse(value);
                      }),
                      validator: (value) => controller.validateField('Number of Bathrooms', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Is Furnished'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.isFurnished = int.parse(value);
                      }),
                      validator: (value) => controller.validateField('Is Furnished', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Age'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.age = value;
                      }),
                      validator: (value) => controller.validateField('Age', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Other Details'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.otherDetails = value;
                      }),
                      validator: (value) => controller.validateField('Other Details', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Documents'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.documents?.add(value);
                      }),
                      validator: (value) => controller.validateField('Documents', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Studio Area'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.studioArea = value;
                      }),
                      validator: (value) => controller.validateField('Studio Area', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Rooms Area'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.roomsArea = value;
                      }),
                      validator: (value) => controller.validateField('Rooms Area', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Apartment Area'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.apartmentArea = value;
                      }),
                      validator: (value) => controller.validateField('Apartment Area', value),
                    ),
                  ],
                  if ([9, 10, 11].contains(controller.service.value.subCategoryId)) ...[
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Images'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.images?.add(value);
                      }),
                      validator: (value) => controller.validateField('Images', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Video Link'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.videoLink = value;
                      }),
                      validator: (value) => controller.validateField('Video Link', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Address'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.address = value;
                      }),
                      validator: (value) => controller.validateField('Address', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Latitude'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.lat = value;
                      }),
                      validator: (value) => controller.validateField('Latitude', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Longitude'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.lng = value;
                      }),
                      validator: (value) => controller.validateField('Longitude', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'User ID'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.userId = int.parse(value);
                      }),
                      validator: (value) => controller.validateField('User ID', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'City ID'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.cityId = int.parse(value);
                      }),
                      validator: (value) => controller.validateField('City ID', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Country ID'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.countryId = int.parse(value);
                      }),
                      validator: (value) => controller.validateField('Country ID', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Identity Type'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.identityType = value;
                      }),
                      validator: (value) => controller.validateField('Identity Type', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Title'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.title = value;
                      }),
                      validator: (value) => controller.validateField('Title', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Number of Floors'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.numberOfFloors = int.parse(value);
                      }),
                      validator: (value) => controller.validateField('Number of Floors', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Built Area'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.builtArea = value;
                      }),
                      validator: (value) => controller.validateField('Built Area', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Age'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.age = value;
                      }),
                      validator: (value) => controller.validateField('Age', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Number of Units'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.numberOfUnits = int.parse(value);
                      }),
                      validator: (value) => controller.validateField('Number of Units', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Documents'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.documents?.add(value);
                      }),
                      validator: (value) => controller.validateField('Documents', value),
                    ),
                  ],
                  if ([12, 13, 14, 15, 16, 17].contains(controller.service.value.subCategoryId)) ...[
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Images'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.images?.add(value);
                      }),
                      validator: (value) => controller.validateField('Images', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Video Link'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.videoLink = value;
                      }),
                      validator: (value) => controller.validateField('Video Link', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Address'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.address = value;
                      }),
                      validator: (value) => controller.validateField('Address', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Latitude'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.lat = value;
                      }),
                      validator: (value) => controller.validateField('Latitude', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Longitude'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.lng = value;
                      }),
                      validator: (value) => controller.validateField('Longitude', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'User ID'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.userId = int.parse(value);
                      }),
                      validator: (value) => controller.validateField('User ID', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'City ID'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.cityId = int.parse(value);
                      }),
                      validator: (value) => controller.validateField('City ID', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Country ID'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.countryId = int.parse(value);
                      }),
                      validator: (value) => controller.validateField('Country ID', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Identity Type'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.identityType = value;
                      }),
                      validator: (value) => controller.validateField('Identity Type', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Total Area'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.totalArea = value;
                      }),
                      validator: (value) => controller.validateField('Total Area', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Built Area'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.builtArea = value;
                      }),
                      validator: (value) => controller.validateField('Built Area', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Age'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.age = value;
                      }),
                      validator: (value) => controller.validateField('Age', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Number of Floors'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.numberOfFloors = int.parse(value);
                      }),
                      validator: (value) => controller.validateField('Number of Floors', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Number of Units'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.numberOfUnits = int.parse(value);
                      }),
                      validator: (value) => controller.validateField('Number of Units', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Unit Types'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.unitTypes = value;
                      }),
                      validator: (value) => controller.validateField('Unit Types', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Number of Parkings'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.numberOfParkings = int.parse(value);
                      }),
                      validator: (value) => controller.validateField('Number of Parkings', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Price'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.price = value;
                      }),
                      validator: (value) => controller.validateField('Price', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Title'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.title = value;
                      }),
                      validator: (value) => controller.validateField('Title', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Documents'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.documents?.add(value);
                      }),
                      validator: (value) => controller.validateField('Documents', value),
                    ),
                  ],
                  if ([18, 19, 21, 22, 23].contains(controller.service.value.subCategoryId)) ...[
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Images'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.images?.add(value);
                      }),
                      validator: (value) => controller.validateField('Images', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Video Link'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.videoLink = value;
                      }),
                      validator: (value) => controller.validateField('Video Link', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Address'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.address = value;
                      }),
                      validator: (value) => controller.validateField('Address', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Latitude'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.lat = value;
                      }),
                      validator: (value) => controller.validateField('Latitude', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Longitude'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.lng = value;
                      }),
                      validator: (value) => controller.validateField('Longitude', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'User ID'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.userId = int.parse(value);
                      }),
                      validator: (value) => controller.validateField('User ID', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'City ID'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.cityId = int.parse(value);
                      }),
                      validator: (value) => controller.validateField('City ID', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Country ID'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.countryId = int.parse(value);
                      }),
                      validator: (value) => controller.validateField('Country ID', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Identity Type'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.identityType = value;
                      }),
                      validator: (value) => controller.validateField('Identity Type', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Title'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.title = value;
                      }),
                      validator: (value) => controller.validateField('Title', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Documents'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.documents?.add(value);
                      }),
                      validator: (value) => controller.validateField('Documents', value),
                    ),
                  ],
                  if ([20, 24, 25, 26].contains(controller.service.value.subCategoryId)) ...[
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Images'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.images?.add(value);
                      }),
                      validator: (value) => controller.validateField('Images', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Video Link'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.videoLink = value;
                      }),
                      validator: (value) => controller.validateField('Video Link', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Address'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.address = value;
                      }),
                      validator: (value) => controller.validateField('Address', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Latitude'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.lat = value;
                      }),
                      validator: (value) => controller.validateField('Latitude', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Longitude'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.lng = value;
                      }),
                      validator: (value) => controller.validateField('Longitude', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'User ID'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.userId = int.parse(value);
                      }),
                      validator: (value) => controller.validateField('User ID', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'City ID'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.cityId = int.parse(value);
                      }),
                      validator: (value) => controller.validateField('City ID', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Country ID'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.countryId = int.parse(value);
                      }),
                      validator: (value) => controller.validateField('Country ID', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Identity Type'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.identityType = value;
                      }),
                      validator: (value) => controller.validateField('Identity Type', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Built Area'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.builtArea = value;
                      }),
                      validator: (value) => controller.validateField('Built Area', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Age'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.age = value;
                      }),
                      validator: (value) => controller.validateField('Age', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Number of Gardens'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.numberOfGardens = int.parse(value);
                      }),
                      validator: (value) => controller.validateField('Number of Gardens', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Number of Units'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.numberOfUnits = int.parse(value);
                      }),
                      validator: (value) => controller.validateField('Number of Units', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Unit Types'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.unitTypes = value;
                      }),
                      validator: (value) => controller.validateField('Unit Types', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Number of Pools'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.numberOfPools = int.parse(value);
                      }),
                      validator: (value) => controller.validateField('Number of Pools', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Number of Playgrounds'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.numberOfPlaygrounds = int.parse(value);
                      }),
                      validator: (value) => controller.validateField('Number of Playgrounds', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Title'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.title = value;
                      }),
                      validator: (value) => controller.validateField('Title', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Documents'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.documents?.add(value);
                      }),
                      validator: (value) => controller.validateField('Documents', value),
                    ),
                  ],
                ],
                if (controller.service.value.categoryId == 1 && controller.service.value.postType == 'REQUEST') ...[
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Identity Type'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.identityType = value;
                    }),
                    validator: (value) => controller.validateField('Identity Type', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'User ID'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.userId = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('User ID', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'City ID'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.cityId = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('City ID', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Country ID'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.countryId = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('Country ID', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Cost From'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.costFrom = value;
                    }),
                    validator: (value) => controller.validateField('Cost From', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Cost To'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.costTo = value;
                    }),
                    validator: (value) => controller.validateField('Cost To', value),
                  ),
                  if (controller.service.value.subCategoryId == 27) ...[
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Images'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.images?.add(value);
                      }),
                      validator: (value) => controller.validateField('Images', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Video Link'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.videoLink = value;
                      }),
                      validator: (value) => controller.validateField('Video Link', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Address'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.address = value;
                      }),
                      validator: (value) => controller.validateField('Address', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Latitude'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.lat = value;
                      }),
                      validator: (value) => controller.validateField('Latitude', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Longitude'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.lng = value;
                      }),
                      validator: (value) => controller.validateField('Longitude', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Is Under Construction'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.isUnderConstruction = int.parse(value);
                      }),
                      validator: (value) => controller.validateField('Is Under Construction', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Built Area'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.builtArea = value;
                      }),
                      validator: (value) => controller.validateField('Built Area', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Built Percentage'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.builtPercentage = int.parse(value);
                      }),
                      validator: (value) => controller.validateField('Built Percentage', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Remaining Percentage'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.remainingPercentage = int.parse(value);
                      }),
                      validator: (value) => controller.validateField('Remaining Percentage', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Days to Construct'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.daysToConstruct = int.parse(value);
                      }),
                      validator: (value) => controller.validateField('Days to Construct', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Remaining Unbuilt Area'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.remainingUnbuiltArea = value;
                      }),
                      validator: (value) => controller.validateField('Remaining Unbuilt Area', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Number of Floors'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.numberOfFloors = int.parse(value);
                      }),
                      validator: (value) => controller.validateField('Number of Floors', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Number of Units'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.numberOfUnits = int.parse(value);
                      }),
                      validator: (value) => controller.validateField('Number of Units', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Unit Types'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.unitTypes = value;
                      }),
                      validator: (value) => controller.validateField('Unit Types', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Cost of Remaining Constructions'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.costOfRemainingConstructions = value;
                      }),
                      validator: (value) => controller.validateField('Cost of Remaining Constructions', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Documents'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.documents?.add(value);
                      }),
                      validator: (value) => controller.validateField('Documents', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Licence Documents'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.licenceDocuments?.add(value);
                      }),
                      validator: (value) => controller.validateField('Licence Documents', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Plan Documents'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.planDocuments?.add(value);
                      }),
                      validator: (value) => controller.validateField('Plan Documents', value),
                    ),
                  ],
                  if ([2, 3, 4, 5, 6, 7, 8, 12, 15, 16, 25].contains(controller.service.value.subCategoryId)) ...[
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Number of Rooms'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.numberOfRooms = int.parse(value);
                      }),
                      validator: (value) => controller.validateField('Number of Rooms', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Number of Bathrooms'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.numberOfBathrooms = int.parse(value);
                      }),
                      validator: (value) => controller.validateField('Number of Bathrooms', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Number of Floors'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.numberOfFloors = int.parse(value);
                      }),
                      validator: (value) => controller.validateField('Number of Floors', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Number of Parkings'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.numberOfParkings = int.parse(value);
                      }),
                      validator: (value) => controller.validateField('Number of Parkings', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Is Furnished'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.isFurnished = int.parse(value);
                      }),
                      validator: (value) => controller.validateField('Is Furnished', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Property Type'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.propertyType = value;
                      }),
                      validator: (value) => controller.validateField('Property Type', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Age'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.age = value;
                      }),
                      validator: (value) => controller.validateField('Age', value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Is Under Construction'),
                      onChanged: (value) => controller.service.update((val) {
                        val?.isUnderConstruction = int.parse(value);
                      }),
                      validator: (value) => controller.validateField('Is Under Construction', value),
                    ),
                  ],
                ],
                if (controller.service.value.categoryId == 28 && controller.service.value.postType == 'POST' && [29, 30, 31].contains(controller.service.value.subCategoryId)) ...[
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Identity Type'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.identityType = value;
                    }),
                    validator: (value) => controller.validateField('Identity Type', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Images'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.images?.add(value);
                    }),
                    validator: (value) => controller.validateField('Images', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Video Link'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.videoLink = value;
                    }),
                    validator: (value) => controller.validateField('Video Link', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Address'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.address = value;
                    }),
                    validator: (value) => controller.validateField('Address', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Latitude'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.lat = value;
                    }),
                    validator: (value) => controller.validateField('Latitude', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Longitude'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.lng = value;
                    }),
                    validator: (value) => controller.validateField('Longitude', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'User ID'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.userId = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('User ID', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'City ID'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.cityId = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('City ID', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Country ID'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.countryId = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('Country ID', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Title'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.title = value;
                    }),
                    validator: (value) => controller.validateField('Title', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Age'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.age = value;
                    }),
                    validator: (value) => controller.validateField('Age', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Number of Floors'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.numberOfFloors = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('Number of Floors', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Suites Area'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.suitesArea = value;
                    }),
                    validator: (value) => controller.validateField('Suites Area', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Apartment Area'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.apartmentArea = value;
                    }),
                    validator: (value) => controller.validateField('Apartment Area', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Rooms Area'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.roomsArea = value;
                    }),
                    validator: (value) => controller.validateField('Rooms Area', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Number of Rooms'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.numberOfRooms = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('Number of Rooms', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Number of Studios'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.numberOfStudios = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('Number of Studios', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Number of Bathrooms'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.numberOfBathrooms = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('Number of Bathrooms', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Number of Restaurants'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.numberOfRestaurants = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('Number of Restaurants', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Number of Pools'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.numberOfPools = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('Number of Pools', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Number of Gyms'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.numberOfGyms = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('Number of Gyms', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Air Conditions'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.airConditions = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('Air Conditions', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Wifi'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.wifi = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('Wifi', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Is Furnished'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.isFurnished = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('Is Furnished', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Documents'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.documents?.add(value);
                    }),
                    validator: (value) => controller.validateField('Documents', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Licence Documents'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.licenceDocuments?.add(value);
                    }),
                    validator: (value) => controller.validateField('Licence Documents', value),
                  ),
                ],
                if (controller.service.value.categoryId == 28 && controller.service.value.postType == 'REQUEST' && [29, 30, 31].contains(controller.service.value.subCategoryId)) ...[
                  TextFormField(
                    decoration: InputDecoration(labelText: 'User ID'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.userId = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('User ID', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'City ID'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.cityId = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('City ID', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Country ID'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.countryId = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('Country ID', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Title'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.title = value;
                    }),
                    validator: (value) => controller.validateField('Title', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Number of Bathrooms'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.numberOfBathrooms = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('Number of Bathrooms', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Number of Restaurants'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.numberOfRestaurants = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('Number of Restaurants', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Number of Pools'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.numberOfPools = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('Number of Pools', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Number of Gyms'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.numberOfGyms = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('Number of Gyms', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Air Conditions'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.airConditions = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('Air Conditions', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Wifi'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.wifi = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('Wifi', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Delivery Service'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.deliveryService = value.toLowerCase() == 'true';
                    }),
                    validator: (value) => controller.validateField('Delivery Service', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Number of Parkings'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.numberOfParkings = value.toLowerCase() == 'true';
                    }),
                    validator: (value) => controller.validateField('Number of Parkings', value),
                  ),
                ],
                if (controller.service.value.categoryId == 32 && controller.service.value.postType == 'POST' && [33, 34, 35, 36, 37, 38, 39, 40].contains(controller.service.value.subCategoryId)) ...[
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Images'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.images?.add(value);
                    }),
                    validator: (value) => controller.validateField('Images', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Video Link'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.videoLink = value;
                    }),
                    validator: (value) => controller.validateField('Video Link', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Address'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.address = value;
                    }),
                    validator: (value) => controller.validateField('Address', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Latitude'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.lat = value;
                    }),
                    validator: (value) => controller.validateField('Latitude', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Longitude'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.lng = value;
                    }),
                    validator: (value) => controller.validateField('Longitude', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'User ID'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.userId = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('User ID', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'City ID'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.cityId = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('City ID', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Country ID'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.countryId = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('Country ID', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Title'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.title = value;
                    }),
                    validator: (value) => controller.validateField('Title', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Villa Area'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.villaArea = value;
                    }),
                    validator: (value) => controller.validateField('Villa Area', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Total Area'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.totalArea = value;
                    }),
                    validator: (value) => controller.validateField('Total Area', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Apartment Area'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.apartmentArea = value;
                    }),
                    validator: (value) => controller.validateField('Apartment Area', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Rooms Area'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.roomsArea = value;
                    }),
                    validator: (value) => controller.validateField('Rooms Area', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Number of Floors'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.numberOfFloors = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('Number of Floors', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Number of Rooms'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.numberOfRooms = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('Number of Rooms', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Number of Studios'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.numberOfStudios = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('Number of Studios', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Number of Bathrooms'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.numberOfBathrooms = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('Number of Bathrooms', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Number of Halls'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.numberOfHalls = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('Number of Halls', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Number of Kitchens'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.numberOfKitchens = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('Number of Kitchens', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Number of Parkings'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.numberOfParkings = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('Number of Parkings', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Number of Pools'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.numberOfPools = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('Number of Pools', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Number of Gyms'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.numberOfGyms = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('Number of Gyms', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Special Pool'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.specialPool = value.toLowerCase() == 'true';
                    }),
                    validator: (value) => controller.validateField('Special Pool', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Air Conditions'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.airConditions = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('Air Conditions', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Delivery Service'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.deliveryService = value.toLowerCase() == 'true';
                    }),
                    validator: (value) => controller.validateField('Delivery Service', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Special View'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.specialView = value.toLowerCase() == 'true';
                    }),
                    validator: (value) => controller.validateField('Special View', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Wifi'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.wifi = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('Wifi', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Is Furnished'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.isFurnished = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('Is Furnished', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Age'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.age = value;
                    }),
                    validator: (value) => controller.validateField('Age', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Is Under Construction'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.isUnderConstruction = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('Is Under Construction', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Documents'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.documents?.add(value);
                    }),
                    validator: (value) => controller.validateField('Documents', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Licence Documents'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.licenceDocuments?.add(value);
                    }),
                    validator: (value) => controller.validateField('Licence Documents', value),
                  ),
                ],
                if (controller.service.value.categoryId == 32 && controller.service.value.postType == 'REQUEST' && [33, 34, 35, 36, 37, 38, 39, 40].contains(controller.service.value.subCategoryId)) ...[
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Property Type'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.propertyType = value;
                    }),
                    validator: (value) => controller.validateField('Property Type', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'User ID'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.userId = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('User ID', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'City ID'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.cityId = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('City ID', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Country ID'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.countryId = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('Country ID', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Identity Type'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.identityType = value;
                    }),
                    validator: (value) => controller.validateField('Identity Type', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Total Area'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.totalArea = value;
                    }),
                    validator: (value) => controller.validateField('Total Area', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Built Area'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.builtArea = value;
                    }),
                    validator: (value) => controller.validateField('Built Area', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Number of Rooms'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.numberOfRooms = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('Number of Rooms', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Number of Bathrooms'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.numberOfBathrooms = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('Number of Bathrooms', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Number of Floors'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.numberOfFloors = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('Number of Floors', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Number of Parkings'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.numberOfParkings = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('Number of Parkings', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Is Furnished'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.isFurnished = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('Is Furnished', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Age'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.age = value;
                    }),
                    validator: (value) => controller.validateField('Age', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Is Under Construction'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.isUnderConstruction = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('Is Under Construction', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Cost From'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.costFrom = value;
                    }),
                    validator: (value) => controller.validateField('Cost From', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Cost To'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.costTo = value;
                    }),
                    validator: (value) => controller.validateField('Cost To', value),
                  ),
                ],
                if ([47, 49, 51, 53].contains(controller.service.value.categoryId) && controller.service.value.postType == 'POST' && [48, 50, 52, 54].contains(controller.service.value.subCategoryId)) ...[
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Identity Type'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.identityType = value;
                    }),
                    validator: (value) => controller.validateField('Identity Type', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Country ID'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.countryId = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('Country ID', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'City ID'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.cityId = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('City ID', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Latitude'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.lat = value;
                    }),
                    validator: (value) => controller.validateField('Latitude', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Longitude'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.lng = value;
                    }),
                    validator: (value) => controller.validateField('Longitude', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Financing Type'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.financingType = value;
                    }),
                    validator: (value) => controller.validateField('Financing Type', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Financing Policy'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.financingPolicy = value;
                    }),
                    validator: (value) => controller.validateField('Financing Policy', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Financing Days to Accept'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.financingDaysToAccept = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('Financing Days to Accept', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Financial Capacity Documents'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.financialCapacityDocuments?.add(value);
                    }),
                    validator: (value) => controller.validateField('Financial Capacity Documents', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Licence Documents'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.licenceDocuments?.add(value);
                    }),
                    validator: (value) => controller.validateField('Licence Documents', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Documents'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.documents?.add(value);
                    }),
                    validator: (value) => controller.validateField('Documents', value),
                  ),
                ],
                if ([47, 49, 51, 53].contains(controller.service.value.categoryId) && controller.service.value.postType == 'REQUEST' && [48, 50, 52, 54].contains(controller.service.value.subCategoryId)) ...[
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Other Details'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.otherDetails = value;
                    }),
                    validator: (value) => controller.validateField('Other Details', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Financing Amount'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.financingAmount = value;
                    }),
                    validator: (value) => controller.validateField('Financing Amount', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Identity Type'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.identityType = value;
                    }),
                    validator: (value) => controller.validateField('Identity Type', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Financing Period'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.financingPeriod = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('Financing Period', value),
                  ),
                ],
                if ([55, 57, 59, 61, 63, 65, 67].contains(controller.service.value.categoryId) && controller.service.value.postType == 'POST' && [56, 58, 60, 62, 64, 66, 68].contains(controller.service.value.subCategoryId)) ...[
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Country ID'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.countryId = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('Country ID', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'City ID'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.cityId = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('City ID', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Latitude'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.lat = value;
                    }),
                    validator: (value) => controller.validateField('Latitude', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Longitude'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.lng = value;
                    }),
                    validator: (value) => controller.validateField('Longitude', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Identity Type'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.identityType = value;
                    }),
                    validator: (value) => controller.validateField('Identity Type', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Licence Documents'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.licenceDocuments?.add(value);
                    }),
                    validator: (value) => controller.validateField('Licence Documents', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Documents'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.documents?.add(value);
                    }),
                    validator: (value) => controller.validateField('Documents', value),
                  ),
                ],
                if ([55, 57, 59, 61, 63, 65, 67].contains(controller.service.value.categoryId) && controller.service.value.postType == 'REQUEST' && [56, 58, 60, 62, 64, 66, 68].contains(controller.service.value.subCategoryId)) ...[
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Country ID'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.countryId = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('Country ID', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'City ID'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.cityId = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('City ID', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Latitude'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.lat = value;
                    }),
                    validator: (value) => controller.validateField('Latitude', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Longitude'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.lng = value;
                    }),
                    validator: (value) => controller.validateField('Longitude', value),
                  ),
                ],
                if (controller.service.value.categoryId == 69 && controller.service.value.postType == 'POST' && controller.service.value.subCategoryId == 70) ...[
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Images'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.images?.add(value);
                    }),
                    validator: (value) => controller.validateField('Images', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Video Link'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.videoLink = value;
                    }),
                    validator: (value) => controller.validateField('Video Link', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Identity Type'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.identityType = value;
                    }),
                    validator: (value) => controller.validateField('Identity Type', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Country ID'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.countryId = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('Country ID', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'City ID'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.cityId = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('City ID', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Days of Advertisement'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.daysOfAdvertisement = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('Days of Advertisement', value),
                  ),
                ],
                if (controller.service.value.categoryId == 69 && controller.service.value.postType == 'REQUEST' && controller.service.value.subCategoryId == 70) ...[
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Number of Platforms'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.numberOfPlatforms = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('Number of Platforms', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Days of Advertisement'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.daysOfAdvertisement = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('Days of Advertisement', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Name of Influencer'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.nameOfInfluencer = value;
                    }),
                    validator: (value) => controller.validateField('Name of Influencer', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Advertiser Name'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.advertiserName = value;
                    }),
                    validator: (value) => controller.validateField('Advertiser Name', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Advertising Details'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.advertisingDetails = value;
                    }),
                    validator: (value) => controller.validateField('Advertising Details', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Country ID'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.countryId = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('Country ID', value),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'City ID'),
                    onChanged: (value) => controller.service.update((val) {
                      val?.cityId = int.parse(value);
                    }),
                    validator: (value) => controller.validateField('City ID', value),
                  ),
                ],
                ElevatedButton(
                  onPressed: () {
                    if (controller.validateForm()) {
                      // Form is valid, proceed with submission
                      print('Form is valid');
                    } else {
                      // Form is invalid, show error messages
                      print('Form is invalid');
                    }
                  },
                  child: Text('Submit'),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
