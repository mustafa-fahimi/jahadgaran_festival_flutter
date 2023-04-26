// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jahadi_group_submitted_work_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JahadiGroupSubmittedWorkParams _$JahadiGroupSubmittedWorkParamsFromJson(
        Map<String, dynamic> json) =>
    JahadiGroupSubmittedWorkParams(
      nationalCode: json['national_code'] as String,
      verifyCode: json['verify_code'] as String,
      attachmentType: json['attachment_type'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$JahadiGroupSubmittedWorkParamsToJson(
        JahadiGroupSubmittedWorkParams instance) =>
    <String, dynamic>{
      'national_code': instance.nationalCode,
      'verify_code': instance.verifyCode,
      'attachment_type': instance.attachmentType,
      'description': instance.description,
    };
