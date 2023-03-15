import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:jahadgaran_festival/src/core/core.dart';

@injectable
class RequestInterceptor extends Interceptor {
  RequestInterceptor(this.env);

  final Env env;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    options.baseUrl = env.baseUrl;

    return super.onRequest(options, handler);
  }
}
