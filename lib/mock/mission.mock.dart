import 'package:demo_app/mission/model/mission.model.dart';

List<MissionModel> mockMissions = List.generate(
  6,
  (index) {
    return MissionModel(
      missionDate: "12/06/2024",
      missionImageUrl:
          index % 2 == 0 ? "images/image_one.png" : "images/image_two.png",
      missionName: "Mission $index",
      isSuccess: index % 2 == 0,
    );
  },
);
