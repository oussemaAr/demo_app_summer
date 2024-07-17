import 'package:demo_app/mission/data/launches.repository.dart';
import 'package:demo_app/mission/domain/launches_domain.model.dart';
import 'package:demo_app/utils/extensions.dart';

class FetchLaunchesUseCase {
  final LaunchesRespository _respository;

  FetchLaunchesUseCase({required LaunchesRespository respository})
      : _respository = respository;

  Future<List<LaunchesDomainModel?>?> fetchLaunches() async {
    final result = await _respository.fetchLaunches();

    if (result != null) {
      final data = result.map((element) {
        return LaunchesDomainModel(
          name: element?.name ?? "",
          launchesData: element?.dateUnix?.convertToReadbleTime() ?? "",
          launchImage: element?.links?.patch?.large ?? "",
          failureDescription: element?.failures?.firstOrNull?.reason ?? "",
          status: element?.success ?? false,
        );
      }).toList();
      return data;
    } else {
      return null;
    }
  }
}
