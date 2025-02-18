import 'package:companion_flutter_client/widgets/clock.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.png"),
            fit: BoxFit.cover,
            filterQuality: FilterQuality.high,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            spacing: 24.0,
            children: [
              Expanded(
                flex: 2,
                child: DefaultTextStyle.merge(
                  style: const TextStyle(color: Color(0xFFEDE9FE)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 5.0,
                    children: [
                      Clock(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Text(
                          DateFormat('yMMMEd').format(DateTime.now()),
                          style: TextStyle(fontSize: 12),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(color: Colors.blue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
