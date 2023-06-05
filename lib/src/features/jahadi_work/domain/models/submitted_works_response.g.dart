// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submitted_works_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubmittedWorksResponse _$SubmittedWorksResponseFromJson(
        Map<String, dynamic> json) =>
    SubmittedWorksResponse(
      submittedWorks: (json['submittedWorks'] as List<dynamic>)
          .map((e) => SubmittedWork.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

SubmittedWork _$SubmittedWorkFromJson(Map<String, dynamic> json) =>
    SubmittedWork(
      id: json['id'] as int,
      attachmentType: json['attachment_type'] as String,
      filePath: json['file_path'] as String,
      jahadiGroups: json['jahadi_groups'] == null
          ? null
          : JahadiGroupResponse.fromJson(
              json['jahadi_groups'] as Map<String, dynamic>),
      individuals: json['individuals'] == null
          ? null
          : IndividualResponse.fromJson(
              json['individuals'] as Map<String, dynamic>),
      groups: json['groups'] == null
          ? null
          : GroupResponse.fromJson(json['groups'] as Map<String, dynamic>),
      description: json['description'] as String?,
    );
