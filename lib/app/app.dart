import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stackmanagementclass/screens/home_view.dart';
import 'package:stackmanagementclass/screens/profile_view.dart';
import 'package:stackmanagementclass/services/counter_service.dart';

@StackedApp(routes: [
  MaterialRoute(page: HomeView, initial: true),
  MaterialRoute(page: ProfileView),
], dependencies: [
  Singleton(classType: NavigationService),
  LazySingleton(classType: CounterService),
])
class App {}
