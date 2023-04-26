import 'package:json_annotation/json_annotation.dart';

part 'individual_submitted_work_params.g.dart';

@JsonSerializable(explicitToJson: true)
class IndividualSubmittedWorkParams {
  const IndividualSubmittedWorkParams({
    required this.nationalCode,
    required this.fname,
    required this.lname,
    required this.city,
    required this.verifyCode,
    required this.attachmentType,
    required this.description,
  });

  Map<String, dynamic> toJson() => _$IndividualSubmittedWorkParamsToJson(this);

  @JsonKey(name: 'national_code')
  final String nationalCode;

  final String fname;

  final String lname;

  final String city;

  @JsonKey(name: 'verify_code')
  final String verifyCode;

  @JsonKey(name: 'attachment_type')
  final String attachmentType;

  final String description;
}
