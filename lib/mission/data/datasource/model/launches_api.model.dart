class LaunchesApimodel {
  Links? links;
  int? dateUnix;
  String? name;
  bool? success;
  List<Failures>? failures;

  LaunchesApimodel({
    this.links,
    this.success,
    this.failures,
    this.name,
    this.dateUnix,
  });

  LaunchesApimodel.fromJson(Map<String, dynamic> json) {
    links = json['links'] != null ? Links.fromJson(json['links']) : null;

    success = json['success'];
    if (json['failures'] != null) {
      failures = <Failures>[];
    }

    name = json['name'] ?? "";
    dateUnix = json['date_unix'];
  }
}

class Fairings {
  bool? reused;
  bool? recoveryAttempt;
  bool? recovered;
  List<Null>? ships;

  Fairings({this.reused, this.recoveryAttempt, this.recovered, this.ships});

  Fairings.fromJson(Map<String, dynamic> json) {
    reused = json['reused'];
    recoveryAttempt = json['recovery_attempt'];
    recovered = json['recovered'];
    if (json['ships'] != null) {
      ships = <Null>[];
      json['ships'].forEach((v) {});
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['reused'] = reused;
    data['recovery_attempt'] = recoveryAttempt;
    data['recovered'] = recovered;

    return data;
  }
}

class Links {
  Patch? patch;
  Reddit? reddit;
  Flickr? flickr;
  Null presskit;
  String? webcast;
  String? youtubeId;
  String? article;
  String? wikipedia;

  Links(
      {this.patch,
      this.reddit,
      this.flickr,
      this.presskit,
      this.webcast,
      this.youtubeId,
      this.article,
      this.wikipedia});

  Links.fromJson(Map<String, dynamic> json) {
    patch = json['patch'] != null ? Patch.fromJson(json['patch']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (patch != null) {
      data['patch'] = patch!.toJson();
    }
    if (reddit != null) {
      data['reddit'] = reddit!.toJson();
    }
    if (flickr != null) {
      data['flickr'] = flickr!.toJson();
    }
    data['presskit'] = presskit;
    data['webcast'] = webcast;
    data['youtube_id'] = youtubeId;
    data['article'] = article;
    data['wikipedia'] = wikipedia;
    return data;
  }
}

class Patch {
  String? small;
  String? large;

  Patch({this.small, this.large});

  Patch.fromJson(Map<String, dynamic> json) {
    small = json['small'];
    large = json['large'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['small'] = small;
    data['large'] = large;
    return data;
  }
}

class Reddit {
  Null campaign;
  Null launch;
  Null media;
  Null recovery;

  Reddit({this.campaign, this.launch, this.media, this.recovery});

  Reddit.fromJson(Map<String, dynamic> json) {
    campaign = json['campaign'];
    launch = json['launch'];
    media = json['media'];
    recovery = json['recovery'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['campaign'] = campaign;
    data['launch'] = launch;
    data['media'] = media;
    data['recovery'] = recovery;
    return data;
  }
}

class Flickr {
  List<Null>? small;
  List<Null>? original;

  Flickr({this.small, this.original});

  Flickr.fromJson(Map<String, dynamic> json);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    return data;
  }
}

class Failures {
  int? time;
  Null altitude;
  String? reason;

  Failures({this.time, this.altitude, this.reason});

  Failures.fromJson(Map<String, dynamic> json) {
    time = json['time'] ?? 0;
    reason = json['reason'] ?? "";
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['time'] = time;
    data['altitude'] = altitude;
    data['reason'] = reason;
    return data;
  }
}

class Cores {
  String? core;
  int? flight;
  bool? gridfins;
  bool? legs;
  bool? reused;
  bool? landingAttempt;
  Null landingSuccess;
  Null landingType;
  Null landpad;

  Cores(
      {this.core,
      this.flight,
      this.gridfins,
      this.legs,
      this.reused,
      this.landingAttempt,
      this.landingSuccess,
      this.landingType,
      this.landpad});

  Cores.fromJson(Map<String, dynamic> json) {
    core = json['core'];
    flight = json['flight'];
    gridfins = json['gridfins'];
    legs = json['legs'];
    reused = json['reused'];
    landingAttempt = json['landing_attempt'];
    landingSuccess = json['landing_success'];
    landingType = json['landing_type'];
    landpad = json['landpad'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['core'] = core;
    data['flight'] = flight;
    data['gridfins'] = gridfins;
    data['legs'] = legs;
    data['reused'] = reused;
    data['landing_attempt'] = landingAttempt;
    data['landing_success'] = landingSuccess;
    data['landing_type'] = landingType;
    data['landpad'] = landpad;
    return data;
  }
}
