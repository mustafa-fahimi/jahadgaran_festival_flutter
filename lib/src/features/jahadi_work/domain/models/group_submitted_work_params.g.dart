// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_submitted_work_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupSubmittedWorkParams _$GroupSubmittedWorkParamsFromJson(
        Map<String, dynamic> json) =>
    GroupSubmittedWorkParams(
      groupSupervisorNationalCode:
          json['group_supervisor_national_code'] as String,
      groupName: json['group_name'] as String,
      establishedYear: json['established_year'] as int,
      groupLicenseNumber: json['group_license_number'] as String?,
      groupInstitution: json['group_institution'] as String,
      groupCity: json['group_city'] as String,
      groupSupervisorFname: json['group_supervisor_fname'] as String,
      groupSupervisorLname: json['group_supervisor_lname'] as String,
      verifyCode: json['verify_code'] as String,
      attachmentType: json['attachment_type'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$GroupSubmittedWorkParamsToJson(
        GroupSubmittedWorkParams instance) =>
    <String, dynamic>{
      'group_supervisor_national_code': instance.groupSupervisorNationalCode,
      'group_name': instance.groupName,
      'established_year': instance.establishedYear,
      'group_license_number': instance.groupLicenseNumber,
      'group_institution': instance.groupInstitution,
      'group_city': instance.groupCity,
      'group_supervisor_fname': instance.groupSupervisorFname,
      'group_supervisor_lname': instance.groupSupervisorLname,
      'verify_code': instance.verifyCode,
      'attachment_type': instance.attachmentType,
      'description': instance.description,
    };
