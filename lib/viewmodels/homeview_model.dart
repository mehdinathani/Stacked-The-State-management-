import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stackmanagementclass/app/app.locator.dart';
import 'package:stackmanagementclass/app/app.router.dart';
import 'package:stackmanagementclass/services/counter_service.dart';

class HomeViewModel extends BaseViewModel {
  final navigataionService = locator<NavigationService>();
  final counterservice = locator<CounterService>();

  addValue() {
    counterservice.addCounterValue();
    rebuildUi();
  }

  navigateToHome() {
    navigataionService.navigateToHomeView();
  }

  navigateToProfile() {
    navigataionService.navigateToProfileView();
  }

  int counter = 0;
}
