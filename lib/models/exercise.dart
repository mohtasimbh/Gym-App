class Exercises {
  Exercises(
      {required this.title,
      required this.prelude,
      required this.duration,
      this.index,
      this.startTime});

  final String? title;
  final int? prelude;
  final int? duration;
  final int? index;
  final int? startTime;

  factory Exercises.fromJson(
          Map<String, dynamic> json, int index, int startTime) =>
      Exercises(
        title: json["title"],
        prelude: json["prelude"],
        duration: json["duration"],
        index: index,
        startTime: startTime
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "prelude": prelude,
        "duration": duration,
      };
}
