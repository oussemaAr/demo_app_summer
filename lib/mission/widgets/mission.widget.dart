import 'package:demo_app/mission/model/mission.model.dart';
import 'package:flutter/material.dart';

missionWidget({
  required MissionModel currentMission,
  Function? onMissionClicked,
}) {
  return InkWell(
    onTap: () {
      if (onMissionClicked != null) onMissionClicked();
    },
    child: Card(
      child: ListTile(
        leading: Image.asset(
          currentMission.missionImageUrl,
          width: 68,
          height: 68,
        ),
        title: Text(currentMission.missionName),
        subtitle: Text(currentMission.missionDate),
        trailing:
            currentMission.isSuccess ? Icon(Icons.done) : Icon(Icons.error),
      ),
    ),
  );
}
