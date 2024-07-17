import 'package:demo_app/mission/presentation/launches.controller.dart';
import 'package:demo_app/mission/widgets/mission.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MissionPage extends StatefulWidget {
  const MissionPage({super.key});

  @override
  State<MissionPage> createState() => _MissionPageState();
}

class _MissionPageState extends State<MissionPage> {
  @override
  Widget build(BuildContext context) {
    var contoller = Get.find<LaunchesContoller>();
    contoller.fetchLaunches();
    return Scaffold(
        appBar: AppBar(
          title: Text("SpaceX App"),
        ),
        body: Obx(
          () => ListView.builder(
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
