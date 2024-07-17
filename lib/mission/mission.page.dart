import 'package:demo_app/mission/presentation/launches.controller.dart';
import 'package:demo_app/mission/widgets/mission.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MissionPage extends StatelessWidget {
  const MissionPage({super.key});

  @override
  Widget build(BuildContext context) {
    var contoller = Get.find<LaunchesContoller>();
    contoller.fetchLaunches();
    return Scaffold(
        appBar: AppBar(
          title: Text("SpaceX App"),
        ),
        body: Obx(
          () => contoller.isLoading.value == true
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  itemCount: contoller.launchesList.length,
                  itemBuilder: (context, index) {
                    final currentMission = contoller.launchesList[index];
                    return missionWidget(
                      currentMission: currentMission,
                    );
                  },
                ),
        ));
  }
}
