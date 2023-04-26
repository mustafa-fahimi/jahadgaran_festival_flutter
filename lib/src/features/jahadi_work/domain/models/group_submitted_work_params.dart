import 'package:json_annotation/json_annotation.dart';

part 'group_submitted_work_params.g.dart';

@JsonSerializable(explicitToJson: true)
class GroupSubmittedWorkParams {
  const GroupSubmittedWorkParams({
    required this.groupSupervisorNationalCode,
    required this.groupName,
    required this.establishedYear,
    required this.groupLicenseNumber,
    required this.groupInstitution,
    required this.groupCity,
    required this.groupSupervisorFname,
    required this.groupSupervisorLname,
    required this.verifyCode,
    required this.attachmentType,
    required this.description,
  });

  Map<String, dynamic> toJson() => _$GroupSubmittedWorkParamsToJson(this);

  @JsonKey(name: 'group_supervisor_national_code')
  final String groupSupervisorNationalCode;

  @JsonKey(name: 'group_name')
  final String groupName;

  @JsonKey(name: 'established_year')
  final int establishedYear;

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

  @JsonKey(name: 'verify_code')
  final String verifyCode;

  @JsonKey(name: 'attachment_type')
  final String attachmentType;

  final String description;
}
