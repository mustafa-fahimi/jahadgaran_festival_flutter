// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'individual_submitted_work_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IndividualSubmittedWorkParams _$IndividualSubmittedWorkParamsFromJson(
        Map<String, dynamic> json) =>
    IndividualSubmittedWorkParams(
      nationalCode: json['national_code'] as String,
      fname: json['fname'] as String,
      lname: json['lname'] as String,
      city: json['city'] as String,
      verifyCode: json['verify_code'] as String,
      attachmentType: json['attachment_type'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$IndividualSubmittedWorkParamsToJson(
        IndividualSubmittedWorkParams instance) =>
    <String, dynamic>{
      'national_code': instance.nationalCode,
      'fname': instance.fname,
      'lname': instance.lname,
      'city': instance.city,
      'verify_code': instance.verifyCode,
      'attachment_type': instance.attachmentType,
      'description': instance.description,
    };
