import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jahadgaran_festival/src/features/core/failures/failure.dart';

part 'database_failure.freezed.dart';

@freezed
class DatabaseFailure<T> extends Failure with _$DatabaseFailure<T> {
  const factory DatabaseFailure.nullData() = _NullData;
  const factory DatabaseFailure.unknown(e) = _Unknown;
  const factory DatabaseFailure.cache() = _Cache;
}
