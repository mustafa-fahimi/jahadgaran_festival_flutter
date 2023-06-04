import 'package:freezed_annotation/freezed_annotation.dart';

part 'jahadi_work_end_points.freezed.dart';

@freezed
class JahadiWorkEndpoints with _$JahadiWorkEndpoints {
  const factory JahadiWorkEndpoints.registerJahadiGroup() =
      _RegisterJahadiGroup;
  const factory JahadiWorkEndpoints.registerIndividual() = _RegisterIndividual;
  const factory JahadiWorkEndpoints.registerGroup() = _RegisterGroup;
  const factory JahadiWorkEndpoints.jahadiGroupSubmittedWork() =
      _JahadiGroupSubmittedWork;
  const factory JahadiWorkEndpoints.individualSubmittedWork() =
      _IndividualSubmittedWork;
  const factory JahadiWorkEndpoints.groupSubmittedWork() = _GroupSubmittedWork;
  const factory JahadiWorkEndpoints.getAtlasCode() = _GetAtlasCode;
  const factory JahadiWorkEndpoints.submittedWorks() = _SubmittedWorks;
}

extension JahadiWorkEndpointsEx on JahadiWorkEndpoints {
  String get toPath => when(
        registerJahadiGroup: () => 'registerJahadiGroup',
        registerIndividual: () => 'registerIndividual',
        registerGroup: () => 'registerGroup',
        jahadiGroupSubmittedWork: () => 'jahadiGroupSubmittedWork',
        individualSubmittedWork: () => 'individualSubmittedWork',
        groupSubmittedWork: () => 'groupSubmittedWork',
        getAtlasCode: () => 'atlasCode',
        submittedWorks: () => 'submittedWorks',
      );
}
