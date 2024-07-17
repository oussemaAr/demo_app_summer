import 'package:demo_app/mission/presentation/launches_presentation.model.dart';
import 'package:flutter/material.dart';

missionWidget({
  required LaunchesPresentationModel currentMission,
  Function? onMissionClicked,
}) {
  return InkWell(
    onTap: () {
      if (onMissionClicked != null) onMissionClicked();
    },
    child: Card(
      child: ListTile(
        leading: Image.network(
          currentMission.launchImage,
          width: 68,
          height: 68,
        ),
        title: Text(currentMission.name),
        subtitle: Text(currentMission.launchesData),
        trailing: currentMission.status ? Icon(Icons.done) : Icon(Icons.error),
      ),
    ),
  );
}
