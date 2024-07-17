import 'package:demo_app/utils/urls.dart';

import 'package:dio/dio.dart';

class LaunchesRemoteService {
  Future<Response?> fetchLaunches() async {
    try {
      return await Dio().get(LAUNCHES_URL);
    } catch (ex) {
      return null;
    }
  }
}
