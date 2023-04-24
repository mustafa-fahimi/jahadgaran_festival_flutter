import 'package:freezed_annotation/freezed_annotation.dart';

part 'jahadi_work_end_points.freezed.dart';

@freezed
class JahadiWorkEndpoints with _$JahadiWorkEndpoints {
  const factory JahadiWorkEndpoints.registerJahadiGroup() =
      _RegisterJahadiGroup;
  const factory JahadiWorkEndpoints.registerIndividual() = _RegisterIndividual;
  const factory JahadiWorkEndpoints.registerGroup() = _RegisterGroup;
  const factory JahadiWorkEndpoints.submittedWork() = _SubmittedWork;
  const factory JahadiWorkEndpoints.getAtlasCode() = _GetAtlasCode;
}

extension JahadiWorkEndpointsEx on JahadiWorkEndpoints {
  String get toPath => when(
        registerJahadiGroup: () => 'registerJahadiGroup',
        registerIndividual: () => 'registerIndividual',
        registerGroup: () => 'registerGroup',
        submittedWork: () => 'submittedWork',
        getAtlasCode: () => 'atlasCode',
      );
}
