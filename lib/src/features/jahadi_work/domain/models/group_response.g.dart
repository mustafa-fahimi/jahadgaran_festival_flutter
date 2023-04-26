// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupResponse _$GroupResponseFromJson(Map<String, dynamic> json) =>
    GroupResponse(
      id: json['id'] as int,
      groupName: json['group_name'] as String,
      establishedYear: json['established_year'] as int?,
      groupLicenseNumber: json['group_license_number'] as String?,
      groupInstitution: json['group_institution'] as String,
      groupCity: json['group_city'] as String,
      groupSupervisorFname: json['group_supervisor_fname'] as String,
      groupSupervisorLname: json['group_supervisor_lname'] as String,
      groupSupervisorNationalCode:
          json['group_supervisor_national_code'] as String,
      phoneNumber: json['phone_number'] as String,
    );
