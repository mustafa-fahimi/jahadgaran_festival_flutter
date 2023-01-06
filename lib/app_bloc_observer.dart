import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jahadgaran_festival/src/injection/injectable.dart';
import 'package:talker_flutter/talker_flutter.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    getIt.get<Talker>().logTyped(BlocChangeLog(bloc, change));
  }

  @override
  void onEvent(Bloc<dynamic, dynamic> bloc, Object? event) {
    super.onEvent(bloc, event);
    getIt.get<Talker>().logTyped(BlocEventLog(bloc, event));
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    getIt
        .get<Talker>()
        .handle(error, stackTrace, '🚨 [BLOC] Error in ${bloc.runtimeType}');
    super.onError(bloc, error, stackTrace);
  }
}

class BlocEventLog extends FlutterTalkerLog {
  BlocEventLog(Bloc<dynamic, dynamic> bloc, Object? event)
      : super(_createMessage(bloc, event));

  @override
  AnsiPen get pen => AnsiPen()..xterm(51);

  @override
  Color get color => const Color(0xFF00FFFF);

  @override
  String get title => 'BLOC Event';

  static String _createMessage(
    Bloc<dynamic, dynamic> bloc,
    Object? event,
  ) {
    return '${bloc.runtimeType}: $event';
  }
}

class BlocChangeLog extends FlutterTalkerLog {
  BlocChangeLog(
    BlocBase<dynamic> bloc,
    Change<dynamic> change,
  ) : super(_createMessage(bloc, change));

  @override
  AnsiPen get pen => AnsiPen()..xterm(49);

  @override
  Color get color => const Color(0xFF00FFAF);

  @override
  String get title => 'BLOC State Change';

  static String _createMessage(
    BlocBase<dynamic> bloc,
    Change<dynamic> change,
  ) =>
      '''${bloc.runtimeType}:\nCURRENT state: ${change.currentState}\nNEXT state: ${change.nextState}''';
}
