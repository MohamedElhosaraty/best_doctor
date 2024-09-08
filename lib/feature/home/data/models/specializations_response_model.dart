import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class SpecializationsResponseModel {
  @JsonKey(name:  "data")
  List<SpecializationsData?>? specializationDataList;
  SpecializationsResponseModel({
    this.specializationDataList,
  });

  factory SpecializationsResponseModel.fromJson(Map<String, dynamic> json) =>
      _SpecializationsResponseModelFromJson(json);
}

@JsonSerializable()
class SpecializationsData {
  int? id;
  String? name;
  @JsonKey(name: "doctors")
  List<Doctor>? doctorsList;

  SpecializationsData({
    this.id,
    this.name,
    this.doctorsList,
  });

  factory SpecializationsData.fromJson(Map<String, dynamic> json) => _SpecializationsDataFromJson(json);

}

class Doctor {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? photo;
  Gender? gender;
  City? city;
  @JsonKey(name: 'appoint_price')
  int? price;


  Doctor({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.photo,
    this.gender,
  });

  factory Doctor.fromJson(Map<String, dynamic> json) => _DoctorFromJson(json
  );

}

class City {
  int? id;
  String? name;
  Specialization? governrate;

  City({
    this.id,
    this.name,
    this.governrate,
  });

  factory City.fromJson(Map<String, dynamic> json) => City(
    id: json["id"],
    name: json["name"],
    governrate: json["governrate"] == null ? null : Specialization.fromJson(json["governrate"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "governrate": governrate?.toJson(),
  };
}

class Specialization {
  int? id;
  String? name;

  Specialization({
    this.id,
    this.name,
  });

  factory Specialization.fromJson(Map<String, dynamic> json) => Specialization(
    id: json["id"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
  };
}

enum Degree {
  CONSULTANT,
  PROFESSOR,
  SPECIALIST
}

final degreeValues = EnumValues({
  "Consultant": Degree.CONSULTANT,
  "Professor": Degree.PROFESSOR,
  "Specialist": Degree.SPECIALIST
});

enum EndTime {
  THE_200000_PM
}

final endTimeValues = EnumValues({
  "20:00:00 PM": EndTime.THE_200000_PM
});

enum Gender {
  FEMALE,
  MALE
}

final genderValues = EnumValues({
  "female": Gender.FEMALE,
  "male": Gender.MALE
});

enum StartTime {
  THE_140000_PM
}

final startTimeValues = EnumValues({
  "14:00:00 PM": StartTime.THE_140000_PM
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
