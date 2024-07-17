import 'package:demo_app/mission/domain/fetch_data.usecase.dart';
import 'package:get/state_manager.dart';

import 'launches_presentation.model.dart';

class LaunchesContoller extends GetxController {
  final FetchLaunchesUseCase _useCase;

  var launchesList = <LaunchesPresentationModel>[].obs;

  LaunchesContoller({required FetchLaunchesUseCase useCase})
      : _useCase = useCase;

  fetchLaunches() {
    _useCase.fetchLaunches().then((data) {
      if (data != null) {
        final result = data
            .map(
              (element) => LaunchesPresentationModel(
                failureDescription: element?.failureDescription ?? "",
                name: element?.name ?? "",
                launchesData: element?.launchesData ?? "",
                launchImage: element?.launchImage ?? "",
                status: element?.status ?? false,
              ),
            )
            .toList();

        launchesList.value = result;
      }
    }).catchError((error) {
      print("IS ERROR $error");
    });
  }
}
