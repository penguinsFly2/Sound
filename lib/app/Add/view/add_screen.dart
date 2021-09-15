import 'package:flutter/material.dart';
import 'package:sound/app/Add/widgets/add_item_container.dart';

class AddScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         AddItemContainer(),
         AddItemContainer(),
         AddItemContainer(),
        ],
      ),
    );
  }
}
