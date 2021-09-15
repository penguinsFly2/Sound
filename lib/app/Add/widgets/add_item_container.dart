import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class AddItemContainer extends StatelessWidget {
  final IconData? icon;
  final String text;
  const AddItemContainer({Key? key, this.icon, this.text: 'Picture'})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: NeumorphicButton(

          margin: EdgeInsets.only(top: 12),
          onPressed: () {
          },
          style: NeumorphicStyle(
            shape: NeumorphicShape.flat,
            shadowLightColor: Colors.grey[200],
            color: Colors.white,
            boxShape: NeumorphicBoxShape.circle(),

          ),
          padding: const EdgeInsets.all(12.0),
          child: Container(
            padding: EdgeInsets.all(height * 0.06),
            child: Column(
              children: [
                Icon(icon ?? Icons.camera,size: 40,),
                Text(
                  text,
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          )),
    );
  }
}
