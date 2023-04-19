import 'package:freezed_annotation/freezed_annotation.dart';

part 'jahadi_work_end_points.freezed.dart';

@freezed
class JahadiWorkEndpoints with _$JahadiWorkEndpoints {
  const factory JahadiWorkEndpoints.groupData() = _GroupData;
  const factory JahadiWorkEndpoints.submittedWork() = _SubmittedWork;
}

extension JahadiWorkEndpointsEx on JahadiWorkEndpoints {
  String get toPath => when(
        groupData: () => 'group-data',
        submittedWork: () => 'submitted-work',
      );
}
