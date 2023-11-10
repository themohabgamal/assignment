import 'package:assignment/home/widgets/my_custom_clipper.dart';
import 'package:flutter/material.dart';

class CustomShapeContainer extends StatelessWidget {
  const CustomShapeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyCustomClipper(),
      child: Container(
        width: 200.0,
        height: 100.0,
        color: Colors.blue,
        child: const Center(
          child: Padding(
            padding: EdgeInsets.only(right: 40, top: 20),
            child: Text(
              'Hotles Search',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
