import 'package:json_annotation/json_annotation.dart';

part 'get_group_data_response.g.dart';

@JsonSerializable(createToJson: false)
class GetGroupDataResponse {
  const GetGroupDataResponse({
    this.id = -1,
    this.groupName = '',
    this.groupRegisterationNumber = '',
    this.groupRegisterDate = '',
    this.groupNature = '',
    this.groupState = '',
    this.groupCity = '',
    this.groupSupervisorFullname = '',
    this.groupSupervisorPhone = '',
    this.groupSupervisorNationalCode = '',
  });

  factory GetGroupDataResponse.fromJson(Map<String, dynamic> json) =>
      _$GetGroupDataResponseFromJson(json);

  final int id;

  @JsonKey(name: 'group_name')
  final String groupName;

  @JsonKey(name: 'group_registeration_number')
  final String groupRegisterationNumber;

  @JsonKey(name: 'group_register_date')
  final String groupRegisterDate;

  @JsonKey(name: 'group_nature')
  final String groupNature;

  @JsonKey(name: 'group_state')
  final String groupState;

  @JsonKey(name: 'group_city')
  final String groupCity;

  @JsonKey(name: 'group_supervisor_fullname')
  final String groupSupervisorFullname;

  @JsonKey(name: 'group_supervisor_phone')
  final String groupSupervisorPhone;

  @JsonKey(name: 'group_supervisor_national_code')
  final String groupSupervisorNationalCode;
}
