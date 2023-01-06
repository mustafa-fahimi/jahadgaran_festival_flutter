import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_end_points.freezed.dart';

@freezed
class UserEndpoints with _$UserEndpoints {
  const factory UserEndpoints.userList() = _UserList;
}

extension EndpointsEx on UserEndpoints {
  String get toPath => when(
        userList: () => 'api/users',
      );
}
