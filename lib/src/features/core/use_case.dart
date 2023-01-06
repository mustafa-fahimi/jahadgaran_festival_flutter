import 'package:dartz/dartz.dart';
import 'package:jahadgaran_festival/src/features/core/failures/failure.dart';
import 'package:jahadgaran_festival/src/features/core/models/tuple.dart';

/// [F] can subclasses of [Failure]
/// [S] is success
abstract class UseCase<F extends Failure, S, P extends Tuple> {
  Future<Either<F, S>>? call({P? param});
}
