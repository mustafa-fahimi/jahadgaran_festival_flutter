// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jahadi_group_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JahadiGroupResponse _$JahadiGroupResponseFromJson(Map<String, dynamic> json) =>
    JahadiGroupResponse(
      id: json['id'] as int? ?? -1,
      groupName: json['group_name'] as String? ?? '',
      groupRegisterationNumber:
          json['group_registeration_number'] as String? ?? '',
      groupRegisterDate: json['group_register_date'] as String? ?? '',
      groupNature: json['group_nature'] as String? ?? '',
      groupState: json['group_state'] as String? ?? '',
      groupCity: json['group_city'] as String? ?? '',
      groupSupervisorFullname:
          json['group_supervisor_fullname'] as String? ?? '',
      groupSupervisorPhone: json['group_supervisor_phone'] as String? ?? '',
      groupSupervisorNationalCode:
          json['group_supervisor_national_code'] as String? ?? '',
      registeredPhoneNumber: json['phone_number'] as String? ?? '',
    );
