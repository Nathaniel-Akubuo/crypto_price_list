import 'package:stacked/stacked_annotations.dart';

import '../services/api_service.dart';
import '../ui/home_view/home_view.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView, initial: true),
  ],
  dependencies: [
    LazySingleton(classType: APIService),
  ],
)
class AppSetup {}
