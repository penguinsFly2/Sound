import 'package:flutter/material.dart';

class EditorScreen extends StatefulWidget {
  const EditorScreen({Key? key}) : super(key: key);

  @override
  _EditorScreenState createState() => _EditorScreenState();
}

class _EditorScreenState extends State<EditorScreen> {
  ScrollController? controller;
  int seconds = 120;

  int get pixels => (seconds * 20) - 10;

  @override
  void initState() {
    controller = ScrollController()
      ..addListener(() {
        double starting =
            (controller!.position.pixels.toInt() * seconds) / pixels;
        double ending = starting + 15;

        print("Starting at:${starting.toInt()}, ending At ${ending.toInt()}");
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Column(
          children: [
            Text(
              'Select 15 Seconds of your sound!',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Container(
              height: 100,
              alignment: Alignment.center,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 50),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 3),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    height: 40,
                    width: double.infinity,
                    child: ListView.builder(
                      itemCount: seconds,
                      controller: controller,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 10,
                          color: Colors.white,
                          height: double.infinity,
                          margin: EdgeInsets.fromLTRB(
                            index == 0 ? 50 : 5,
                            0,
                            index == seconds - 1 ? 50 : 5,
                            0,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
