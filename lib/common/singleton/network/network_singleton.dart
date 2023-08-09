class NetworkStatusSingleton {
  NetworkStatusSingleton._();
  static final _ins = NetworkStatusSingleton._();
  static NetworkStatusSingleton get ins => _ins;
  bool networkAvailable = false;
  bool isWifi = false;
}
