import 'package:jahadgaran_festival/src/features/jahadi_work/domain/models/group_response.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/models/individual_response.dart';
import 'package:jahadgaran_festival/src/features/jahadi_work/domain/models/jahadi_group_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'submitted_works_response.g.dart';

@JsonSerializable(createToJson: false)
class SubmittedWorksResponse {
  SubmittedWorksResponse({
    required this.submittedWorks,
  });

  factory SubmittedWorksResponse.fromJson(Map<String, dynamic> json) =>
      _$SubmittedWorksResponseFromJson(json);

  final List<SubmittedWork> submittedWorks;
}

@JsonSerializable(createToJson: false)
class SubmittedWork {
  SubmittedWork({
    required this.id,
    required this.attachmentType,
    required this.filePath,
    required this.jahadiGroups,
    required this.individuals,
    required this.groups,
    this.description,
  });

  factory SubmittedWork.fromJson(Map<String, dynamic> json) =>
      _$SubmittedWorkFromJson(json);

  final int id;

  @JsonKey(name: 'attachment_type')
  final String attachmentType;

  final String? description;

  @JsonKey(name: 'file_path')
  final String filePath;

  @JsonKey(name: 'jahadi_groups')
  final JahadiGroupResponse? jahadiGroups;

  final IndividualResponse? individuals;

  final GroupResponse? groups;
}
