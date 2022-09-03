import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onClose(BlocBase bloc) {
    print('${bloc.runtimeType} Closed');
    super.onClose(bloc);
  }

  @override
  void onCreate(BlocBase bloc) {
    print('${bloc.runtimeType} Created');
    super.onCreate(bloc);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    print('${bloc.runtimeType} Error: $error $stackTrace');
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    print('${bloc.runtimeType} Event: $event');
    super.onEvent(bloc, event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    // print('${bloc.runtimeType} Transition: $transition');
    super.onTransition(bloc, transition);
  }
}
