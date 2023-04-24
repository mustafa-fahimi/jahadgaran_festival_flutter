import 'package:freezed_annotation/freezed_annotation.dart';

part 'jahadi_work_end_points.freezed.dart';

@freezed
class JahadiWorkEndpoints with _$JahadiWorkEndpoints {
  const factory JahadiWorkEndpoints.groupData() = _GroupData;
  const factory JahadiWorkEndpoints.submittedWork() = _SubmittedWork;
  const factory JahadiWorkEndpoints.getAtlasCode() = _GetAtlasCode;
}

extension JahadiWorkEndpointsEx on JahadiWorkEndpoints {
  String get toPath => when(
        groupData: () => 'group-data',
        submittedWork: () => 'submitted-work',
        getAtlasCode: () => 'atlas-code',
      );
}
