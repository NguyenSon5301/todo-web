part of 'app_network_bloc.dart';

@freezed
class AppNetworkState with _$AppNetworkState {
  const factory AppNetworkState({
    @Default(ConnectivityResult.none) ConnectivityResult networkResult,

  }) = _AppNetworkState;
}
