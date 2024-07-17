import 'package:demo_app/mission/model/mission.model.dart';
import 'package:demo_app/mission/widgets/mission.widget.dart';
import 'package:flutter/material.dart';

class MissionPage extends StatelessWidget {
  const MissionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SpaceX App"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return missionWidget(
            currentMission: MissionModel(
              missionDate: "12/06/2024",
              missionImageUrl: index % 2 == 0
                  ? "images/image_one.png"
                  : "images/image_two.png",
              missionName: "Mission $index",
              isSuccess: true,
            ),
          );
        },
      ),
    );
  }
}
