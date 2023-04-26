import 'package:json_annotation/json_annotation.dart';

part 'jahadi_group_submitted_work_params.g.dart';

@JsonSerializable(explicitToJson: true)
class JahadiGroupSubmittedWorkParams {
  const JahadiGroupSubmittedWorkParams({
    required this.nationalCode,
    required this.verifyCode,
    required this.attachmentType,
    required this.description,
  });

  Map<String, dynamic> toJson() => _$JahadiGroupSubmittedWorkParamsToJson(this);

  @JsonKey(name: 'national_code')
  final String nationalCode;

  @JsonKey(name: 'verify_code')
  final String verifyCode;

  @JsonKey(name: 'attachment_type')
  final String attachmentType;

  final String description;
}
