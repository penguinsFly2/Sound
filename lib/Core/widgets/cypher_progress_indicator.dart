import 'package:flutter/material.dart';

class CypherProgressIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 60,
          height: 60,
          child: CircularProgressIndicator(
            color: Colors.black,
          ),
        ),
        Text(
          'CYPHER',
          style: TextStyle(fontSize: 10),
        )
      ],
    );
  }
}
