import 'package:demo_app/mission/data/datasource/remote.service.dart';
import 'package:demo_app/mission/data/launches.repository.dart';
import 'package:demo_app/mission/domain/fetch_data.usecase.dart';
import 'package:demo_app/mission/mission.page.dart';
import 'package:demo_app/mission/presentation/launches.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AppBinding(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
        ),
        useMaterial3: true,
      ),
      home: MissionPage(),
    );
  }
}

class AppBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(LaunchesRemoteService());
    Get.put(LaunchesRespository(remoteService: Get.find()));
    Get.put(FetchLaunchesUseCase(respository: Get.find()));
    Get.put(LaunchesContoller(useCase: Get.find()));
  }
}
