import 'package:assignment/home/screens/home_screen.dart';
import 'package:assignment/home/widgets/home_args.dart';
import 'package:flutter/material.dart';

class RoomsAndGuestsScreen extends StatefulWidget {
  static const String routeName = 'rooms';

  const RoomsAndGuestsScreen({super.key});

  @override
  State<RoomsAndGuestsScreen> createState() => _RoomsAndGuestsScreenState();
}

class _RoomsAndGuestsScreenState extends State<RoomsAndGuestsScreen> {
  bool toggle = false;
  int rooms = 0;
  int adults = 0;
  int children = 0;
  List<String> chlidrens = [];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.9,
      color: const Color.fromARGB(255, 226, 226, 226),
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          // First Container
          Container(
            padding: const EdgeInsets.all(5),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Rooms'),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.remove),
                      onPressed: () {
                        setState(() {
                          if (rooms > 0) {
                            rooms--;
                          }
                        });
                      },
                    ),
                    Text('$rooms'),
                    IconButton(
                      icon: const Icon(Icons.add),
                      onPressed: () {
                        setState(() {
                          rooms++;
                        });
                      },
                    ),
                  ],
                )
              ],
            ),
          ),

          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.all(5),
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Adults'),
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.remove),
                          onPressed: () {
                            setState(() {
                              if (adults > 0) {
                                adults--;
                              }
                            });
                          },
                        ),
                        Text('$adults'),
                        IconButton(
                          icon: const Icon(Icons.add),
                          onPressed: () {
                            setState(() {
                              adults++;
                            });
                          },
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Children'),
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.remove),
                          onPressed: () {
                            setState(() {
                              if (children > 0) {
                                children--;
                              }
                            });
                          },
                        ),
                        Text('$children'),
                        IconButton(
                          icon: const Icon(Icons.add),
                          onPressed: () {
                            setState(() {
                              children++;
                              chlidrens.add("$children");
                            });
                          },
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  width: 200,
                  height: 100,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: chlidrens.length,
                    itemBuilder: (context, index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Age of child ${index + 1}"),
                          const Text("14 years"),
                        ],
                      );
                    },
                  ),
                ), // Age text dependent on count
              ],
            ),
          ),

          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.all(5),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Pet-friendly'),
                    Text('Only show stays that allow pets'),
                  ],
                ),
                Switch(
                  value: toggle, // Initial value of the toggle switch
                  onChanged: (bool value) {
                    setState(() {
                      toggle = !toggle;
                    });
                  },
                ),
              ],
            ),
          ),

          // Apply Button
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 20.0),
            child: ElevatedButton(
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(const EdgeInsets.all(10)),
                  backgroundColor: MaterialStateProperty.all(Colors.blue)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(
                        args: HomeArgs(
                            rooms: rooms, adults: adults, children: children)),
                  ),
                );
              },
              child: const Text(
                'Apply',
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
