class MissionModel {
  final String missionName;
  final String missionDate;
  final String missionImageUrl;
  final bool isSuccess;

  MissionModel({
    required this.missionDate,
    required this.missionImageUrl,
    required this.missionName,
    required this.isSuccess,
  });
}
