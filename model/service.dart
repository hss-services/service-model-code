class Service {
  String? title;
  String? description;
  String? projectType;
  List<String>? images;
  String? videoLink;
  String? address;
  String? lat;
  String? lng;
  List<String>? documents;
  List<String>? licenceDocuments;
  List<String>? planDocuments;
  String? postType;
  String? identityType;
  String? identityTypeElse;
  String? propertyType;
  String? status;
  String? age;
  int? numberOfRooms;
  int? numberOfBathrooms;
  int? numberOfFloors;
  int? numberOfUnits;
  String? unitTypes;
  int? numberOfStudios;
  int? numberOfElevators;
  int? numberOfHalls;
  int? numberOfGardens;
  int? numberOfPools;
  int? numberOfKitchens;
  int? numberOfRestaurants;
  int? numberOfPlaygrounds;
  int? numberOfSpa;
  int? numberOfGyms;
  int? numberOfVillas;
  int? numberOfParkings;
  int? daysToConstruct;
  int? builtPercentage;
  int? remainingPercentage;
  int? isFurnished;
  int? wifi;
  String? termOfService;
  int? airConditions;
  int? isUnderConstruction;
  int? isReadyToMoveIn;
  String? roomsArea;
  String? suitesArea;
  String? apartmentArea;
  String? villaArea;
  String? studioArea;
  String? totalArea;
  String? builtArea;
  String? remainingUnbuiltArea;
  String? detailsOfRemainingConstructions;
  String? costOfRemainingConstructions;
  String? price;
  String? costFrom;
  String? costTo;
  String? investmentAmount;
  String? daysOfInvestments;
  String? financingType;
  String? financingPolicy;
  String? financingAmount;
  int? financingPeriod;
  String? financingInterestRate;
  String? financingBeneficiary;
  int? financingDaysToAccept;
  String? financingDocumentsRequired;
  String? otherDetails;
  String? minTenderAmount;
  String? maxTenderAmount;
  String? financialCapacityAmount;
  List<String>? financialCapacityDocuments;
  String? cv;
  String? tenderDetails;
  int? tenderExecutionDays;
  int? tenderCompleteDays;
  int? numberOfPlatforms;
  int? daysOfAdvertisement;
  String? nameOfInfluencer;
  String? advertiserName;
  String? advertisingDetails;
  int? deliveryService;
  int? specialPool;
  int? specialView;
  String? tenderStartDate;
  String? tenderEndDate;
  int? categorySubscriptionId;
  int? categoryId;
  int? subCategoryId;
  int? cityId;
  int? countryId;
  int? userId;
  int? isFeatured;
  int? active;

  Service({
    this.title,
    this.description,
    this.projectType,
    this.images,
    this.videoLink,
    this.address,
    this.lat,
    this.lng,
    this.documents,
    this.licenceDocuments,
    this.planDocuments,
    this.postType,
    this.identityType,
    this.identityTypeElse,
    this.propertyType,
    this.status,
    this.age,
    this.numberOfRooms,
    this.numberOfBathrooms,
    this.numberOfFloors,
    this.numberOfUnits,
    this.unitTypes,
    this.numberOfStudios,
    this.numberOfElevators,
    this.numberOfHalls,
    this.numberOfGardens,
    this.numberOfPools,
    this.numberOfKitchens,
    this.numberOfRestaurants,
    this.numberOfPlaygrounds,
    this.numberOfSpa,
    this.numberOfGyms,
    this.numberOfVillas,
    this.numberOfParkings,
    this.daysToConstruct,
    this.builtPercentage,
    this.remainingPercentage,
    this.isFurnished,
    this.wifi,
    this.termOfService,
    this.airConditions,
    this.isUnderConstruction,
    this.isReadyToMoveIn,
    this.roomsArea,
    this.suitesArea,
    this.apartmentArea,
    this.villaArea,
    this.studioArea,
    this.totalArea,
    this.builtArea,
    this.remainingUnbuiltArea,
    this.detailsOfRemainingConstructions,
    this.costOfRemainingConstructions,
    this.price,
    this.costFrom,
    this.costTo,
    this.investmentAmount,
    this.daysOfInvestments,
    this.financingType,
    this.financingPolicy,
    this.financingAmount,
    this.financingPeriod,
    this.financingInterestRate,
    this.financingBeneficiary,
    this.financingDaysToAccept,
    this.financingDocumentsRequired,
    this.otherDetails,
    this.minTenderAmount,
    this.maxTenderAmount,
    this.financialCapacityAmount,
    this.financialCapacityDocuments,
    this.cv,
    this.tenderDetails,
    this.tenderExecutionDays,
    this.tenderCompleteDays,
    this.numberOfPlatforms,
    this.daysOfAdvertisement,
    this.nameOfInfluencer,
    this.advertiserName,
    this.advertisingDetails,
    this.deliveryService,
    this.specialPool,
    this.specialView,
    this.tenderStartDate,
    this.tenderEndDate,
    this.categorySubscriptionId,
    this.categoryId,
    this.subCategoryId,
    this.cityId,
    this.countryId,
    this.userId,
    this.isFeatured,
    this.active,
  });

  factory Service.fromJson(Map<String, dynamic> json) {
    return Service(
      title: json['title'],
      description: json['description'],
      projectType: json['project_type'],
      images: List<String>.from(json['images'] ?? []),
      videoLink: json['video_link'],
      address: json['address'],
      lat: json['lat'],
      lng: json['lng'],
      documents: List<String>.from(json['documents'] ?? []),
      licenceDocuments: List<String>.from(json['licence_documents'] ?? []),
      planDocuments: List<String>.from(json['plan_documents'] ?? []),
      postType: json['post_type'],
      identityType: json['identity_type'],
      identityTypeElse: json['identity_type_else'],
      propertyType: json['property_type'],
      status: json['status'],
      age: json['age'],
      numberOfRooms: json['number_of_rooms'],
      numberOfBathrooms: json['number_of_bathrooms'],
      numberOfFloors: json['number_of_floors'],
      numberOfUnits: json['number_of_units'],
      unitTypes: json['unit_types'],
      numberOfStudios: json['number_of_studios'],
      numberOfElevators: json['number_of_elevators'],
      numberOfHalls: json['number_of_halls'],
      numberOfGardens: json['number_of_gardens'],
      numberOfPools: json['number_of_pools'],
      numberOfKitchens: json['number_of_kitchens'],
      numberOfRestaurants: json['number_of_resturants'],
      numberOfPlaygrounds: json['number_of_playgrounds'],
      numberOfSpa: json['number_of_spa'],
      numberOfGyms: json['number_of_gyms'],
      numberOfVillas: json['number_of_villas'],
      numberOfParkings: json['number_of_parkings'],
      daysToConstruct: json['days_to_construct'],
      builtPercentage: json['built_percentage'],
      remainingPercentage: json['remaining_percentage'],
      isFurnished: json['is_furnished'],
      wifi: json['wifi'],
      termOfService: json['term_of_service'],
      airConditions: json['aircondtions'],
      isUnderConstruction: json['is_under_construction'],
      isReadyToMoveIn: json['is_ready_to_move_in'],
      roomsArea: json['rooms_area'],
      suitesArea: json['suites_area'],
      apartmentArea: json['apartment_area'],
      villaArea: json['villa_area'],
      studioArea: json['studio_area'],
      totalArea: json['total_area'],
      builtArea: json['built_area'],
      remainingUnbuiltArea: json['remaining_unbuilt_area'],
      detailsOfRemainingConstructions: json['details_of_remaining_constructions'],
      costOfRemainingConstructions: json['cost_of_remaining_constructions'],
      price: json['price'],
      costFrom: json['cost_from'],
      costTo: json['cost_to'],
      investmentAmount: json['investment_amount'],
      daysOfInvestments: json['days_of_investments'],
      financingType: json['financing_type'],
      financingPolicy: json['financing_policy'],
      financingAmount: json['financing_amount'],
      financingPeriod: json['financing_period'],
      financingInterestRate: json['financing_interest_rate'],
      financingBeneficiary: json['financing_beneficiary'],
      financingDaysToAccept: json['financing_days_to_accept'],
      financingDocumentsRequired: json['financing_documents_required'],
      otherDetails: json['other_details'],
      minTenderAmount: json['min_tender_amount'],
      maxTenderAmount: json['max_tender_amount'],
      financialCapacityAmount: json['financial_capacity_amount'],
      financialCapacityDocuments: List<String>.from(json['financial_capacity_documents'] ?? []),
      cv: json['cv'],
      tenderDetails: json['tender_details'],
      tenderExecutionDays: json['tender_execution_days'],
      tenderCompleteDays: json['tender_complete_days'],
      numberOfPlatforms: json['number_of_platforms'],
      daysOfAdvertisement: json['days_of_advertisement'],
      nameOfInfluencer: json['name_of_influencer'],
      advertiserName: json['advertiser_name'],
      advertisingDetails: json['advertising_details'],
      deliveryService: json['delivery_service'],
      specialPool: json['special_pool'],
      specialView: json['special_view'],
      tenderStartDate: json['tender_start_date'],
      tenderEndDate: json['tender_end_date'],
      categorySubscriptionId: json['category_subscription_id'],
      categoryId: json['category_id'],
      subCategoryId: json['sub_category_id'],
      cityId: json['city_id'],
      countryId: json['country_id'],
      userId: json['user_id'],
      isFeatured: json['is_featured'],
      active: json['active'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'project_type': projectType,
      'images': images,
      'video_link': videoLink,
      'address': address,
      'lat': lat,
      'lng': lng,
      'documents': documents,
      'licence_documents': licenceDocuments,
      'plan_documents': planDocuments,
      'post_type': postType,
      'identity_type': identityType,
      'identity_type_else': identityTypeElse,
      'property_type': propertyType,
      'status': status,
      'age': age,
      'number_of_rooms': numberOfRooms,
      'number_of_bathrooms': numberOfBathrooms,
      'number_of_floors': numberOfFloors,
      'number_of_units': numberOfUnits,
      'unit_types': unitTypes,
      'number_of_studios': numberOfStudios,
      'number_of_elevators': numberOfElevators,
      'number_of_halls': numberOfHalls,
      'number_of_gardens': numberOfGardens,
      'number_of_pools': numberOfPools,
      'number_of_kitchens': numberOfKitchens,
      'number_of_resturants': numberOfRestaurants,
      'number_of_playgrounds': numberOfPlaygrounds,
      'number_of_spa': numberOfSpa,
      'number_of_gyms': numberOfGyms,
      'number_of_villas': numberOfVillas,
      'number_of_parkings': numberOfParkings,
      'days_to_construct': daysToConstruct,
      'built_percentage': builtPercentage,
      'remaining_percentage': remainingPercentage,
      'is_furnished': isFurnished,
      'wifi': wifi,
      'term_of_service': termOfService,
      'aircondtions': airConditions,
      'is_under_construction': isUnderConstruction,
      'is_ready_to_move_in': isReadyToMoveIn,
      'rooms_area': roomsArea,
      'suites_area': suitesArea,
      'apartment_area': apartmentArea,
      'villa_area': villaArea,
      'studio_area': studioArea,
      'total_area': totalArea,
      'built_area': builtArea,
      'remaining_unbuilt_area': remainingUnbuiltArea,
      'details_of_remaining_constructions': detailsOfRemainingConstructions,
      'cost_of_remaining_constructions': costOfRemainingConstructions,
      'price': price,
      'cost_from': costFrom,
      'cost_to': costTo,
      'investment_amount': investmentAmount,
      'days_of_investments': daysOfInvestments,
      'financing_type': financingType,
      'financing_policy': financingPolicy,
      'financing_amount': financingAmount,
      'financing_period': financingPeriod,
      'financing_interest_rate': financingInterestRate,
      'financing_beneficiary': financingBeneficiary,
      'financing_days_to_accept': financingDaysToAccept,
      'financing_documents_required': financingDocumentsRequired,
      'other_details': otherDetails,
      'min_tender_amount': minTenderAmount,
      'max_tender_amount': maxTenderAmount,
      'financial_capacity_amount': financialCapacityAmount,
      'financial_capacity_documents': financialCapacityDocuments,
      'cv': cv,
      'tender_details': tenderDetails,
      'tender_execution_days': tenderExecutionDays,
      'tender_complete_days': tenderCompleteDays,
      'number_of_platforms': numberOfPlatforms,
      'days_of_advertisement': daysOfAdvertisement,
      'name_of_influencer': nameOfInfluencer,
      'advertiser_name': advertiserName,
      'advertising_details': advertisingDetails,
      'delivery_service': deliveryService,
      'special_pool': specialPool,
      'special_view': specialView,
      'tender_start_date': tenderStartDate,
      'tender_end_date': tenderEndDate,
      'category_subscription_id': categorySubscriptionId,
      'category_id': categoryId,
      'sub_category_id': subCategoryId,
      'city_id': cityId,
      'country_id': countryId,
      'user_id': userId,
      'is_featured': isFeatured,
      'active': active,
    };
  }
}
