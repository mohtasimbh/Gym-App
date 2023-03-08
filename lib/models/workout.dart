import 'package:state_block/models/exercise.dart';

class Workout {
  final String? title;
  final List<Exercises> exercises;
  const Workout({required this.exercises, required this.title});
  factory Workout.fromJson(Map<String, dynamic> json) {
    List<Exercises> exercises = [];
    int index = 0;
    int startTime = 0;
    for (var ex in (json['exercises'] as Iterable)) {
      exercises.add(Exercises.fromJson(json, index, startTime));
      index++;
      startTime += exercises.last.prelude! + exercises.last.duration!;
    }
    return Workout(exercises: exercises, title: json["title"] as String);
  }
  Map<String, dynamic> toJson() => {'title': title, 'exercises': 'exercises'};
}
