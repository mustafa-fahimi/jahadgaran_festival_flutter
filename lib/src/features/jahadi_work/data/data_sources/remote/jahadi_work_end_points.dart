import 'package:freezed_annotation/freezed_annotation.dart';

part 'jahadi_work_end_points.freezed.dart';

@freezed
class JahadiWorkEndpoints with _$JahadiWorkEndpoints {
  const factory JahadiWorkEndpoints.jahadiData() = _JahadiData;
}

extension JahadiWorkEndpointsEx on JahadiWorkEndpoints {
  String get toPath => when(
        jahadiData: () => 'jahadi',
      );
}
