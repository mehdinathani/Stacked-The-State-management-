import 'package:stacked/stacked.dart';
import 'package:stackmanagementclass/app/app.locator.dart';
import 'package:stackmanagementclass/services/counter_service.dart';

class ProfileViewModel extends BaseViewModel {
  final counterService = locator<CounterService>();
}
