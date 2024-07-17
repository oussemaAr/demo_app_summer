import 'package:demo_app/mission/model/mission.model.dart';
import 'package:demo_app/mission/widgets/mission.widget.dart';
import 'package:flutter/material.dart';

class MissionDetails extends StatelessWidget {
  final MissionModel currentMission;
  const MissionDetails({super.key, required this.currentMission});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            missionWidget(
              currentMission: currentMission,
            ),
            Spacer(),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Go Back"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}