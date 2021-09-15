import 'package:flutter/material.dart';
import 'package:sound/Core/widgets/cypher_progress_indicator.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class SelectMusicScreen extends StatelessWidget {
  const SelectMusicScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          WaveWidget(
            waveFrequency: 1,
            backgroundColor: Colors.white,
            config: CustomConfig(
              gradients: [
                [Colors.white, Colors.white],
                [Colors.black, Colors.black],
                [Colors.white, Colors.white],
                [Colors.black, Colors.black],
                [Colors.white, Colors.white],


              ],
              durations: [
                8000,
                5000,
                10000,
                6000,
                8000,
              ],
              heightPercentages: [
                0.1,
                0.2,
                0.35,
                0.5,
                0.6,
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
            color: Colors.black.withOpacity(0.7),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Upload your song for your profile',
                style: TextStyle(color: Colors.white),
              ),

              Container(
                margin:EdgeInsets.symmetric(horizontal: 30,vertical: 30),
                height: 200,
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.upload,size: 50,),
                    Text('Upload')
                    // CypherProgressIndicator()
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
