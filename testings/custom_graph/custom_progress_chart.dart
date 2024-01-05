
import 'package:flutter/material.dart';

import 'score.dart';
import 'chart_painter.dart';

const weekDays = ['','mon','tue','wed','thur','fri','sat','sun'];

class CustomProgressChart extends StatefulWidget {
   const  CustomProgressChart({super.key, required this.scores});

  final List<Score> scores;

  @override
  State<CustomProgressChart> createState() => _CustomProgressChartState();
}

class _CustomProgressChartState extends State<CustomProgressChart> {
  double min = double.maxFinite;
  double max = 0;
  final List<String> _x = [];
  final List<double> _y = [];

  @override
  void initState() {
    for (var element in widget.scores) {
      min = element.value < min ?  element.value : min;
      max = element.value > max ? element.value : max;
      // _y.add(element.value);
      // _x.add('${weekDays[element.time.weekday]}\n${element.time.day}');
    }
    widget.scores.map((e) {
      _y.add(e.value);
      _x.add('${weekDays[e.time.weekday]}\n${e.time.day}');
    }).toList();
    setState(() {

    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        CustomPaint(
          painter: ChartPainter(_x,_y,min,max),
          child: const SizedBox(
            // margin: const EdgeInsets.only(top: 50),
            height: 150,
            width: double.infinity,
          ),
        ),
      ],
    );
  }
}
