import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:sound/Core/Style/sound_icons.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class PostContainer extends StatelessWidget {
  const PostContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        WaveWidget(
          waveFrequency: 1,
          backgroundColor: Colors.black,
          config: CustomConfig(
            gradients: [
              [Colors.red, Colors.red],
              [Colors.black, Colors.black],
              [Colors.red, Colors.red],
              [Colors.black, Colors.black],
            ],
            durations: [
              8000,
              5000,
              10000,
              6000,
            ],
            heightPercentages: [
              0.1,
              0.2,
              0.35,
              0.5,
            ],
            blur: MaskFilter.blur(BlurStyle.solid, 10),
            gradientBegin: Alignment.bottomCenter,
            gradientEnd: Alignment.topRight,
          ),
          waveAmplitude: 20,
          size: Size(
            double.infinity,
            double.infinity,
          ),
        ),
        Container(
          color: Colors.black.withOpacity(0.6),
        ),
        Center(
          child: CircularPercentIndicator(
            arcType: ArcType.FULL,
            backgroundColor: Colors.white,
            progressColor: Colors.white,
            radius: 300 / 2,
            center: IconButton(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              color: Colors.white,
              iconSize: 300 / 8,
              icon: Icon(Icons.play_arrow_rounded),
              onPressed: () {},
            ),
            percent: 0.5,
          ),
        ),
        Container(
          child: Column(
            children: [
              Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                    alignment: Alignment.topLeft,
                    child: Row(
                      children: [
                        CircleAvatar(),
                        SizedBox(width: 14),
                        Text(
                          'NAME',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  )),
              Container(
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Flexible(
                            child: Container(
                              height: 100,
                              margin: EdgeInsets.only(top: 10),
                              padding: EdgeInsets.all(20),
                              child: Text(
                                'orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since',
                                softWrap: true,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                            child: Column(
                              children: [
                                Icon(
                                  Sound.heart_empty,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Icon(
                                  Sound.comment_empty,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Icon(
                                  Icons.more_horiz,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    // Container(
                    //   padding: EdgeInsets.symmetric(horizontal: 20),
                    //   margin: EdgeInsets.only(bottom: 20),
                    //   child: Row(
                    //     children: [
                    //       Icon(
                    //         Icons.play_arrow,
                    //         color: Colors.white,
                    //       ),
                    //       Slider(value: 0.4, onChanged: (_) {})
                    //     ],
                    //   ),
                    // )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );

    // return Container(
    //   child: Column(
    //     children: [
    //       Container(
    //         padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
    //         child: Row(
    //           children: [

    //             Spacer(),
    //             Icon(Icons.more_vert),
    //           ],
    //         ),
    //       ),
    //       Flexible(
    //         child: Container(
    //           child: Stack(
    //             children: [
    //               Container(
    //                 color: Colors.black,
    //               ),
    //               Align(
    //                 alignment: Alignment.bottomCenter,
    // child:
    //               ),
    //             ],
    //           ),
    //         ),
    //       ),
    //       Container(
    //         padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20),
    //         margin: EdgeInsets.only(bottom: 20),
    //         child: Row(
    //           children: [
    //             Icon(Icons.favorite),
    //             SizedBox(width: 14),
    //             Icon(Icons.chat_bubble),
    //             Spacer(),
    //             Icon(Icons.save)
    //           ],
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}
