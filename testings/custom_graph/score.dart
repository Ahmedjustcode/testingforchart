
import 'package:hive_flutter/hive_flutter.dart';
part 'score.g.dart';
@HiveType(typeId: 0)
class Score{

  @HiveField(0)
  double value;
  @HiveField(1)
  DateTime time;
  Score({required this.time,required this.value});
}