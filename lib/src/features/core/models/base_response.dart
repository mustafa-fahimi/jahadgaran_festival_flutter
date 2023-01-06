import 'package:json_annotation/json_annotation.dart';

part 'base_response.g.dart';

@JsonSerializable(explicitToJson: true)
class BaseResponse {
  BaseResponse({
    required this.result,
  });

  factory BaseResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseFromJson(json);

  dynamic result;

  Map<String, dynamic> toJson() => _$BaseResponseToJson(this);
}
