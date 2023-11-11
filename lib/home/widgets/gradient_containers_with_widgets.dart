// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:assignment/home/screens/rooms_and_guests_screen.dart';
import 'package:assignment/home/widgets/date_range_picker.dart';
import 'package:assignment/home/widgets/home_args.dart';

class GradientContainerWithWidgets extends StatelessWidget {
  HomeArgs? args;
  GradientContainerWithWidgets({
    Key? key,
    this.args,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.blue, Colors.lightBlue],
        ),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            width: 200,
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide.none,
                    gapPadding: 12),
                hintText: 'Select city',
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 10.0),
                hintStyle: const TextStyle(
                  color: Colors.blue,
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: const DateRangePicker(),
          ),
          const SizedBox(height: 16.0),
          DropdownButtonFormField<String>(
            decoration: const InputDecoration(
                hintText: 'Select Nationality',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(15)))),
            value: null,
            items: ['Egyptian', 'Italian', 'Palastenian'].map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (String? newValue) {
              // Do something with the new value
            },
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return const RoomsAndGuestsScreen();
                },
              );
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              width: 200.0,
              height: 50.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.circular(12.0), // Adjust the radius as needed
              ),
              child: Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      "${args?.rooms ?? 0} Room, ${args?.adults ?? 0} Adult, ${args?.children ?? 0} Children"),
                  const Icon(Icons.arrow_drop_down)
                ],
              )),
            ),
          ),
          const SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {
              // Handle button press
            },
            child: const Text('Submit'),
          ),
        ],
      ),
    );
  }
}
