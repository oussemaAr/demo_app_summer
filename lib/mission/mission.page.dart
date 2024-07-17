import 'package:demo_app/mission/model/mission.model.dart';
import 'package:demo_app/mission/widgets/mission.widget.dart';
import 'package:demo_app/mock/mission.mock.dart';
import 'package:flutter/material.dart';

class MissionPage extends StatefulWidget {
  const MissionPage({super.key});

  @override
  State<MissionPage> createState() => _MissionPageState();
}

class _MissionPageState extends State<MissionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SpaceX App"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            mockMissions.add(
              MissionModel(
                missionDate: "missionDate",
                missionImageUrl: "images/image_one.png",
                missionName: "missionName",
                isSuccess: true,
              ),
            );
          });
        },
      ),
      body: ListView.builder(
        itemCount: mockMissions.length,
        itemBuilder: (context, index) {
          return missionWidget(
            currentMission: mockMissions[index],
          );
        },
      ),
    );
  }
}
