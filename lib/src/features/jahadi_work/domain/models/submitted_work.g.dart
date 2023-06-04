// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submitted_work.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubmittedWork _$SubmittedWorkFromJson(Map<String, dynamic> json) =>
    SubmittedWork(
      id: json['id'] as int,
      attachmentType: json['attachment_type'] as String,
      filePath: json['file_path'] as String,
      jahadiGroups: JahadiGroupResponse.fromJson(
          json['jahadi_groups'] as Map<String, dynamic>),
      individuals: IndividualResponse.fromJson(
          json['individuals'] as Map<String, dynamic>),
      groups: GroupResponse.fromJson(json['groups'] as Map<String, dynamic>),
      description: json['description'] as String?,
    );
