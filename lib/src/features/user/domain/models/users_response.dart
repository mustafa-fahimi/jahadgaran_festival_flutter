import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jahadgaran_festival/src/features/user/domain/models/user.dart';

part 'users_response.g.dart';

@JsonSerializable(createToJson: false)
class UsersResponse {
  UsersResponse({
    required this.page,
    required this.total,
    required this.totalPages,
    required this.users,
  });

  factory UsersResponse.fromJson(Map<String, dynamic> json) =>
      _$UsersResponseFromJson(json);
  final int page;

  final int total;

  @JsonKey(name: 'total_pages')
  final int totalPages;

  @JsonKey(name: 'data')
  final List<User> users;

  UsersResponse copyWith({
    int? page,
    int? total,
    int? totalPages,
    List<User>? users,
  }) {
    return UsersResponse(
      page: page ?? this.page,
      total: total ?? this.total,
      totalPages: totalPages ?? this.totalPages,
      users: users ?? this.users,
    );
  }
}
