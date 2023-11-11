// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:assignment/home/widgets/custom_shape_container.dart';
import 'package:assignment/home/widgets/gradient_containers_with_widgets.dart';
import 'package:assignment/home/widgets/home_args.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'home';
  HomeArgs? args;
  HomeScreen({
    Key? key,
    this.args,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "assets/images/bg.png",
                  ),
                  fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Align(
                    alignment: Alignment.bottomLeft,
                    child: CustomShapeContainer()),
                const SizedBox(
                  height: 5,
                ),
                GradientContainerWithWidgets(
                  args: args,
                )
              ],
            ),
          ),
        ));
  }
}
