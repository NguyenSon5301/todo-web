part of 'navigator.dart';

@freezed
class NavigationType with _$NavigationType {
  const factory NavigationType.root() = NavigationTypeRoot;
  const factory NavigationType.home() = NavigationTypeHome;
}
