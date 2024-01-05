// import 'package:fl_chart/fl_chart.dart';
import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
// import '..//custom_progress_chart.dart';
// import 'package:flutter_charts/custom_graph/experiment.dart';
// import 'package:flutter_charts/custom_graph/score.dart';

import 'score.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final rnd = Random();
  final dayCount = 7;

  late List<Score> _scores;
  @override
  void initState() {
    final scores = List<Score>.generate(dayCount, (index) {
      final d =   DateTime.now().add(Duration(days: -dayCount+index));
      final v = rnd.nextDouble() * 30;
      return Score(time: d, value: v);
    });

    setState(() {
      _scores =scores;
    });
    for (var element in _scores) {

      (element.toString());}
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  const SafeArea(

      child: Scaffold(
        // body: CustomProgressChart(scores: _scores,),
        body: Column(
          children: [
          ],
        )
      ),
    );
  }
}
