import 'package:json_annotation/json_annotation.dart';

part 'group_response.g.dart';

@JsonSerializable(createToJson: false)
class GroupResponse {
  GroupResponse({
    required this.id,
    required this.groupName,
    required this.groupInstitution,
    required this.groupCity,
    required this.groupSupervisorFname,
    required this.groupSupervisorLname,
    required this.groupSupervisorNationalCode,
    required this.phoneNumber,
    this.establishedYear,
    this.groupLicenseNumber,
  });

  factory GroupResponse.fromJson(Map<String, dynamic> json) =>
      _$GroupResponseFromJson(json);

  final int id;

  @JsonKey(name: 'group_name')
  final String groupName;

  @JsonKey(name: 'established_year')
  final int? establishedYear;

  @JsonKey(name: 'group_license_number')
  final String? groupLicenseNumber;

  @JsonKey(name: 'group_institution')
  final String groupInstitution;

  @JsonKey(name: 'group_city')
  final String groupCity;

  @JsonKey(name: 'group_supervisor_fname')
  final String groupSupervisorFname;

  @JsonKey(name: 'group_supervisor_lname')
  final String groupSupervisorLname;

  @JsonKey(name: 'group_supervisor_national_code')
  final String groupSupervisorNationalCode;

  @JsonKey(name: 'phone_number')
  final String phoneNumber;
}
