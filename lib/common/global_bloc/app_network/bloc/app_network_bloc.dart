import 'dart:async';
import 'dart:developer';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../singleton/singletons.dart';
import '../usecase/check_network_available_usecase.dart';

part 'app_network_bloc.freezed.dart';
part 'app_network_event.dart';
part 'app_network_state.dart';

class AppNetworkBloc extends Bloc<AppNetworkEvent, AppNetworkState> {
  AppNetworkBloc() : super(const AppNetworkState()) {
    on<AppNetworkInitEvent>(_onInit);
    on<AppNetworkChangeStatusEvent>(_onChangeStatus);
    on<AppNetworkCheckNetworkEvent>(_onCheckNetwork);
    add(const AppNetworkEvent.init());
  }

  late final StreamSubscription<ConnectivityResult> _networkListener;
  final _checkInternetUsecase = AppNetworkCheckInternetUsecase();

  @override
  Future<void> close() {
    _networkListener.cancel();
    return super.close();
  }

  Future<void> _onInit(
    AppNetworkInitEvent event,
    Emitter<AppNetworkState> emitter,
  ) async {
    add(AppNetworkEvent.changeStatus(await Connectivity().checkConnectivity()));
    _subscription();
  }

  Future<void> _onCheckNetwork(
    AppNetworkCheckNetworkEvent event,
    Emitter<AppNetworkState> emitter,
  ) async {
    add(AppNetworkEvent.changeStatus(await Connectivity().checkConnectivity()));
  }

  Future<void> _onChangeStatus(
    AppNetworkChangeStatusEvent event,
    Emitter<AppNetworkState> emitter,
  ) async {
    final status = await _checkInternetUsecase.call();
    NetworkStatusSingleton.ins
      ..networkAvailable = status
      ..isWifi = event.newStatus == ConnectivityResult.wifi;
    emitter(state.copyWith(networkResult: event.newStatus));
    log('${DateTime.now()}: ${event.newStatus}');
  }

  void _subscription() {
    _networkListener = Connectivity().onConnectivityChanged.listen((status) {
      add(AppNetworkEvent.changeStatus(status));
    });
  }
}
