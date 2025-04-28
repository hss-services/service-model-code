import 'package:get/get.dart';
import 'service_model.dart';

class FormController extends GetxController {
  var service = Service().obs;

  String? validateField(String fieldName, dynamic value) {
    if (value == null || value == '') {
      return '$fieldName is required';
    }
    return null;
  }

  bool validateForm() {
    // Add your validation logic here based on the rules function
    if (service.value.categoryId == 0 || service.value.subCategoryId == 0 || service.value.postType?.isEmpty == true || service.value.propertyType?.isEmpty == true) {
      return false;
    }

    if (service.value.propertyType == 'INVESTMENT') {
      if (service.value.investmentAmount?.isEmpty == true || service.value.daysOfInvestments?.isEmpty == true) return false;
    }

    if (service.value.propertyType == 'SELL') {
      if (service.value.price?.isEmpty == true) return false;
    }

    if (service.value.categoryId == 1 && service.value.postType == 'POST') {
      if ([2, 3, 4, 5].contains(service.value.subCategoryId)) {
        if (service.value.images?.isEmpty == true || service.value.videoLink?.isEmpty == true || service.value.address?.isEmpty == true ||
            service.value.lat?.isEmpty == true || service.value.lng?.isEmpty == true || service.value.userId == 0 || service.value.cityId == 0 ||
            service.value.countryId == 0 || service.value.identityType?.isEmpty == true || service.value.title?.isEmpty == true ||
            service.value.totalArea?.isEmpty == true || service.value.builtArea?.isEmpty == true || service.value.numberOfFloors == 0 ||
            service.value.numberOfRooms == 0 || service.value.numberOfBathrooms == 0 || service.value.isFurnished == 0 ||
            service.value.age?.isEmpty == true || service.value.documents?.isEmpty == true) {
          return false;
        }
      } else if ([6, 7, 8].contains(service.value.subCategoryId)) {
        if (service.value.images?.isEmpty == true || service.value.videoLink?.isEmpty == true || service.value.address?.isEmpty == true ||
            service.value.lat?.isEmpty == true || service.value.lng?.isEmpty == true || service.value.userId == 0 || service.value.cityId == 0 ||
            service.value.countryId == 0 || service.value.identityType?.isEmpty == true || service.value.title?.isEmpty == true ||
            service.value.numberOfFloors == 0 || service.value.numberOfRooms == 0 || service.value.numberOfBathrooms == 0 ||
            service.value.isFurnished == 0 || service.value.age?.isEmpty == true || service.value.otherDetails?.isEmpty == true ||
            service.value.documents?.isEmpty == true || service.value.studioArea?.isEmpty == true || service.value.roomsArea?.isEmpty == true ||
            service.value.apartmentArea?.isEmpty == true) {
          return false;
        }
      } else if ([9, 10, 11].contains(service.value.subCategoryId)) {
        if (service.value.images?.isEmpty == true || service.value.videoLink?.isEmpty == true || service.value.address?.isEmpty == true ||
            service.value.lat?.isEmpty == true || service.value.lng?.isEmpty == true || service.value.userId == 0 || service.value.cityId == 0 ||
            service.value.countryId == 0 || service.value.identityType?.isEmpty == true || service.value.title?.isEmpty == true ||
            service.value.numberOfFloors == 0 || service.value.builtArea?.isEmpty == true || service.value.age?.isEmpty == true ||
            service.value.numberOfUnits == 0 || service.value.documents?.isEmpty == true) {
          return false;
        }
      } else if ([12, 13, 14, 15, 16, 17].contains(service.value.subCategoryId)) {
        if (service.value.images?.isEmpty == true || service.value.videoLink?.isEmpty == true || service.value.address?.isEmpty == true ||
            service.value.lat?.isEmpty == true || service.value.lng?.isEmpty == true || service.value.userId == 0 || service.value.cityId == 0 ||
            service.value.countryId == 0 || service.value.identityType?.isEmpty == true || service.value.totalArea?.isEmpty == true ||
            service.value.builtArea?.isEmpty == true || service.value.age?.isEmpty == true || service.value.numberOfFloors == 0 ||
            service.value.numberOfUnits == 0 || service.value.unitTypes?.isEmpty == true || service.value.numberOfParkings == 0 ||
            service.value.price?.isEmpty == true || service.value.title?.isEmpty == true || service.value.documents?.isEmpty == true) {
          return false;
        }
      } else if ([18, 19, 21, 22, 23].contains(service.value.subCategoryId)) {
        if (service.value.images?.isEmpty == true || service.value.videoLink?.isEmpty == true || service.value.address?.isEmpty == true ||
            service.value.lat?.isEmpty == true || service.value.lng?.isEmpty == true || service.value.userId == 0 || service.value.cityId == 0 ||
            service.value.countryId == 0 || service.value.identityType?.isEmpty == true || service.value.title?.isEmpty == true ||
            service.value.documents?.isEmpty == true) {
          return false;
        }
      } else if ([20, 24, 25, 26].contains(service.value.subCategoryId)) {
        if (service.value.images?.isEmpty == true || service.value.videoLink?.isEmpty == true || service.value.address?.isEmpty == true ||
            service.value.lat?.isEmpty == true || service.value.lng?.isEmpty == true || service.value.userId == 0 || service.value.cityId == 0 ||
            service.value.countryId == 0 || service.value.identityType?.isEmpty == true || service.value.builtArea?.isEmpty == true ||
            service.value.age?.isEmpty == true || service.value.numberOfGardens == 0 || service.value.numberOfUnits == 0 ||
            service.value.unitTypes?.isEmpty == true || service.value.numberOfPools == 0 || service.value.numberOfPlaygrounds == 0 ||
            service.value.title?.isEmpty == true || service.value.documents?.isEmpty == true) {
          return false;
        }
      }
    }

    if (service.value.categoryId == 1 && service.value.postType == 'REQUEST') {
      if (service.value.identityType?.isEmpty == true || service.value.userId == 0 || service.value.cityId == 0 || service.value.countryId == 0 ||
          service.value.costFrom?.isEmpty == true || service.value.costTo?.isEmpty == true) {
        return false;
      }

      if (service.value.subCategoryId == 27) {
        if (service.value.images?.isEmpty == true || service.value.videoLink?.isEmpty == true || service.value.address?.isEmpty == true ||
            service.value.lat?.isEmpty == true || service.value.lng?.isEmpty == true || service.value.isUnderConstruction == 0 ||
            service.value.builtArea?.isEmpty == true || service.value.builtPercentage == 0 || service.value.remainingPercentage == 0 ||
            service.value.daysToConstruct == 0 || service.value.remainingUnbuiltArea?.isEmpty == true || service.value.numberOfFloors == 0 ||
            service.value.numberOfUnits == 0 || service.value.unitTypes?.isEmpty == true || service.value.costOfRemainingConstructions?.isEmpty == true ||
            service.value.documents?.isEmpty == true || service.value.licenceDocuments?.isEmpty == true || service.value.planDocuments?.isEmpty == true) {
          return false;
        }
      }

      if ([2, 3, 4, 5, 6, 7, 8, 12, 15, 16, 25].contains(service.value.subCategoryId)) {
        if (service.value.numberOfRooms == 0 || service.value.numberOfBathrooms == 0 || service.value.numberOfFloors == 0 ||
            service.value.numberOfParkings == 0 || service.value.isFurnished == 0 || service.value.propertyType?.isEmpty == true ||
            service.value.age?.isEmpty == true || service.value.isUnderConstruction == 0) {
          return false;
        }
      }
    }

    if (service.value.categoryId == 28 && service.value.postType == 'POST' && [29, 30, 31].contains(service.value.subCategoryId)) {
      if (service.value.identityType?.isEmpty == true || service.value.images?.isEmpty == true || service.value.videoLink?.isEmpty == true ||
          service.value.address?.isEmpty == true || service.value.lat?.isEmpty == true || service.value.lng?.isEmpty == true ||
          service.value.userId == 0 || service.value.cityId == 0 || service.value.countryId == 0 || service.value.title?.isEmpty == true ||
          service.value.age?.isEmpty == true || service.value.numberOfFloors == 0 || service.value.suitesArea?.isEmpty == true ||
          service.value.apartmentArea?.isEmpty == true || service.value.roomsArea?.isEmpty == true || service.value.numberOfRooms == 0 ||
          service.value.numberOfStudios == 0 || service.value.numberOfBathrooms == 0 || service.value.numberOfRestaurants == 0 ||
          service.value.numberOfPools == 0 || service.value.numberOfGyms == 0 || service.value.airConditions == 0 || service.value.wifi == 0 ||
          service.value.isFurnished == 0 || service.value.documents?.isEmpty == true || service.value.licenceDocuments?.isEmpty == true) {
        return false;
      }
    }

    if (service.value.categoryId == 28 && service.value.postType == 'REQUEST' && [29, 30, 31].contains(service.value.subCategoryId)) {
      if (service.value.userId == 0 || service.value.cityId == 0 || service.value.countryId == 0 || service.value.title?.isEmpty == true ||
          service.value.numberOfBathrooms == 0 || service.value.numberOfRestaurants == 0 || service.value.numberOfPools == 0 ||
          service.value.numberOfGyms == 0 || service.value.airConditions == 0 || service.value.wifi == 0 || service.value.deliveryService == false ||
          service.value.numberOfParkings == false) {
        return false;
      }
    }

    if (service.value.categoryId == 32 && service.value.postType == 'POST' && [33, 34, 35, 36, 37, 38, 39, 40].contains(service.value.subCategoryId)) {
      if (service.value.images?.isEmpty == true || service.value.videoLink?.isEmpty == true || service.value.address?.isEmpty == true ||
          service.value.lat?.isEmpty == true || service.value.lng?.isEmpty == true || service.value.userId == 0 || service.value.cityId == 0 ||
          service.value.countryId == 0 || service.value.title?.isEmpty == true || service.value.villaArea?.isEmpty == true ||
          service.value.totalArea?.isEmpty == true || service.value.apartmentArea?.isEmpty == true || service.value.roomsArea?.isEmpty == true ||
          service.value.numberOfFloors == 0 || service.value.numberOfRooms == 0 || service.value.numberOfStudios == 0 ||
          service.value.numberOfBathrooms == 0 || service.value.numberOfHalls == 0 || service.value.numberOfKitchens == 0 ||
          service.value.numberOfParkings == 0 || service.value.numberOfPools == 0 || service.value.numberOfGyms == 0 ||
          service.value.specialPool == false || service.value.airConditions == 0 || service.value.deliveryService == false ||
          service.value.specialView == false || service.value.wifi == 0 || service.value.isFurnished == 0 || service.value.age?.isEmpty == true ||
          service.value.isUnderConstruction == 0 || service.value.documents?.isEmpty == true || service.value.licenceDocuments?.isEmpty == true) {
        return false;
      }
    }

    if (service.value.categoryId == 32 && service.value.postType == 'REQUEST' && [33, 34, 35, 36, 37, 38, 39, 40].contains(service.value.subCategoryId)) {
      if (service.value.propertyType?.isEmpty == true || service.value.userId == 0 || service.value.cityId == 0 || service.value.countryId == 0 ||
          service.value.identityType?.isEmpty == true || service.value.totalArea?.isEmpty == true || service.value.builtArea?.isEmpty == true ||
          service.value.numberOfRooms == 0 || service.value.numberOfBathrooms == 0 || service.value.numberOfFloors == 0 ||
          service.value.numberOfParkings == 0 || service.value.isFurnished == 0 || service.value.age?.isEmpty == true ||
          service.value.isUnderConstruction == 0 || service.value.costFrom?.isEmpty == true || service.value.costTo?.isEmpty == true) {
        return false;
      }
    }

    if ([47, 49, 51, 53].contains(service.value.categoryId) && service.value.postType == 'POST' && [48, 50, 52, 54].contains(service.value.subCategoryId)) {
      if (service.value.identityType?.isEmpty == true || service.value.countryId == 0 || service.value.cityId == 0 || service.value.lat?.isEmpty == true ||
          service.value.lng?.isEmpty == true || service.value.financingType?.isEmpty == true || service.value.financingPolicy?.isEmpty == true ||
          service.value.financingDaysToAccept == 0 || service.value.financialCapacityDocuments?.isEmpty == true ||
          service.value.licenceDocuments?.isEmpty == true || service.value.documents?.isEmpty == true) {
        return false;
      }
    }

    if ([47, 49, 51, 53].contains(service.value.categoryId) && service.value.postType == 'REQUEST' && [48, 50, 52, 54].contains(service.value.subCategoryId)) {
      if (service.value.otherDetails?.isEmpty == true || service.value.financingAmount?.isEmpty == true ||
          service.value.identityType?.isEmpty == true || service.value.financingPeriod == 0) {
        return false;
      }
    }

    if ([55, 57, 59, 61, 63, 65, 67].contains(service.value.categoryId) && service.value.postType == 'POST' && [56, 58, 60, 62, 64, 66, 68].contains(service.value.subCategoryId)) {
      if (service.value.countryId == 0 || service.value.cityId == 0 || service.value.lat?.isEmpty == true || service.value.lng?.isEmpty == true ||
          service.value.identityType?.isEmpty == true || service.value.licenceDocuments?.isEmpty == true || service.value.documents?.isEmpty == true) {
        return false;
      }
    }

    if ([55, 57, 59, 61, 63, 65, 67].contains(service.value.categoryId) && service.value.postType == 'REQUEST' && [56, 58, 60, 62, 64, 66, 68].contains(service.value.subCategoryId)) {
      if (service.value.countryId == 0 || service.value.cityId == 0 || service.value.lat?.isEmpty == true || service.value.lng?.isEmpty == true) {
        return false;
      }
    }

    if (service.value.categoryId == 69 && service.value.postType == 'POST' && service.value.subCategoryId == 70) {
      if (service.value.images?.isEmpty == true || service.value.videoLink?.isEmpty == true || service.value.identityType?.isEmpty == true ||
          service.value.countryId == 0 || service.value.cityId == 0 || service.value.daysOfAdvertisement == 0) {
        return false;
      }
    }

    if (service.value.categoryId == 69 && service.value.postType == 'REQUEST' && service.value.subCategoryId == 70) {
      if (service.value.numberOfPlatforms == 0 || service.value.daysOfAdvertisement == 0 || service.value.nameOfInfluencer?.isEmpty == true ||
          service.value.advertiserName?.isEmpty == true || service.value.advertisingDetails?.isEmpty == true || service.value.countryId == 0 ||
          service.value.cityId == 0) {
        return false;
      }
    }

    return true;
  }

  void updateImageField(String fieldName, List<String> imagePaths) {
    switch (fieldName) {
      case 'Images':
        service.value.images = imagePaths;
        break;
      case 'Documents':
        service.value.documents = imagePaths;
        break;
      case 'Licence Documents':
        service.value.licenceDocuments = imagePaths;
        break;
      case 'Plan Documents':
        service.value.planDocuments = imagePaths;
        break;
      case 'Financial Capacity Documents':
        service.value.financialCapacityDocuments = imagePaths;
        break;
      case 'CV':
        service.value.cv = imagePaths;
        break;
    }
    service.refresh();
  }

  void removeImage(String fieldName, String imagePath) {
    switch (fieldName) {
      case 'Images':
        service.value.images?.remove(imagePath);
        break;
      case 'Documents':
        service.value.documents?.remove(imagePath);
        break;
      case 'Licence Documents':
        service.value.licenceDocuments?.remove(imagePath);
        break;
      case 'Plan Documents':
        service.value.planDocuments?.remove(imagePath);
        break;
      case 'Financial Capacity Documents':
        service.value.financialCapacityDocuments?.remove(imagePath);
        break;
      case 'CV':
        service.value.cv?.remove(imagePath);
        break;
    }
    service.refresh();
  }
}
