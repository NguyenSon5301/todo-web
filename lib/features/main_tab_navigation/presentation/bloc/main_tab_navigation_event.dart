part of 'main_tab_navigation_bloc.dart';

@freezed
class MainTabNavigationEvent with _$MainTabNavigationEvent {
  const factory MainTabNavigationEvent.init() = MainTabNavigationInitEvent;
  const factory MainTabNavigationEvent.nextPage() =
      MainTabNavigationNextPageEvent;
  const factory MainTabNavigationEvent.logout() = MainTabNavigationLogoutEvent;
}
