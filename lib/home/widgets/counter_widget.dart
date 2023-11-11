import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: const Icon(Icons.remove),
          onPressed: () {
            setState(() {
              if (count > 0) {
                count--;
              }
            });
          },
        ),
        Text('$count'),
        IconButton(
          icon: const Icon(Icons.add),
          onPressed: () {
            setState(() {
              count++;
            });
          },
        ),
      ],
    );
  }
}
