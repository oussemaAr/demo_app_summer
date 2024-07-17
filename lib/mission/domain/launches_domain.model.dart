class LaunchesDomainModel {
  final String name;
  final String launchesData;
  final String launchImage;
  final bool status;
  final String failureDescription;

  LaunchesDomainModel({
    required this.name,
    required this.launchesData,
    required this.launchImage,
    required this.status,
    required this.failureDescription,
  });
}
