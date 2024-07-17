import 'dart:io';

import 'package:demo_app/mission/data/datasource/model/launches_api.model.dart';
import 'package:demo_app/mission/data/datasource/remote.service.dart';

class LaunchesRespository {
  final LaunchesRemoteService _remoteService;

  LaunchesRespository({required LaunchesRemoteService remoteService})
      : _remoteService = remoteService;

  Future<List<LaunchesApimodel?>?> fetchLaunches() async {
    final response = await _remoteService.fetchLaunches();
    if (response != null && response.statusCode == HttpStatus.ok) {
      List<LaunchesApimodel?>? newList = List.empty(growable: true);
      response.data.forEach((element) {
        final result = LaunchesApimodel.fromJson(element);
        newList.add(result);
      });
      return newList;
    } else {
      return null;
    }
  }
}
