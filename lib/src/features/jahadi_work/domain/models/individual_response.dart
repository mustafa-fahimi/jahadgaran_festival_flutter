import 'package:json_annotation/json_annotation.dart';

part 'individual_response.g.dart';

@JsonSerializable(createToJson: false)
class IndividualResponse {
  IndividualResponse({
    required this.id,
    required this.fname,
    required this.lname,
    required this.city,
    required this.nationalCode,
    required this.phoneNumber,
  });

  factory IndividualResponse.fromJson(Map<String, dynamic> json) =>
      _$IndividualResponseFromJson(json);

  final int id;

  final String fname;

  final String lname;

  final String city;

  @JsonKey(name: 'national_code')
  final String nationalCode;

  @JsonKey(name: 'phone_number')
  final String phoneNumber;
}
