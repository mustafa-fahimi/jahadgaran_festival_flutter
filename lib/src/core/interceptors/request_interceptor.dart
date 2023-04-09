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
    options.headers.addAll(
      {
        'Access-Control-Allow-Origin': '*',
        'Access-Control-Allow-Methods': 'GET,PUT,PATCH,POST,DELETE',
        'Access-Control-Allow-Credentials': 'true',
        'Access-Control-Allow-Headers':
            'Origin, X-Requested-With, Content-Type, Accept',
      },
    );

    return super.onRequest(options, handler);
  }
}
