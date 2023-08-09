part of 'app_network_bloc.dart';

@freezed
class AppNetworkEvent with _$AppNetworkEvent {
  const factory AppNetworkEvent.init() = AppNetworkInitEvent;
  const factory AppNetworkEvent.changeStatus(ConnectivityResult newStatus) =
      AppNetworkChangeStatusEvent;
  const factory AppNetworkEvent.checkNetwork() = AppNetworkCheckNetworkEvent;
}
