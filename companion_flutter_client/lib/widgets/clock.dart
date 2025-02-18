import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Clock extends StatefulWidget {
  const Clock({super.key});

  @override
  ClockState createState() => ClockState();
}

class ClockState extends State<Clock> {
  late Timer timer;
  DateTime time = DateTime.now();

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(
      Duration(seconds: 1),
      (t) {
        if (DateTime.now().minute != time.minute) {
          setState(() {
            time = DateTime.now();
          });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      DateFormat.Hm().format(time),
      style: TextStyle(fontSize: 48.0, fontWeight: FontWeight.w600, height: 1),
    );
  }
}
