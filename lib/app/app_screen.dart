import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:sound/Core/Style/color_plate.dart';
import 'package:sound/app/Home/view/home.dart';

import 'Add/view/add_screen.dart';

class AppScreen extends StatefulWidget {
  const AppScreen({Key? key}) : super(key: key);

  @override
  _AppScreenState createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  PageController? _controller;

  @override
  void initState() {
    _controller = PageController(
      initialPage: 0,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPlate.offWhite,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.black,
        buttonBackgroundColor: Colors.white,
        color: Colors.white,
        animationDuration: Duration(milliseconds: 300),
        index: 0,
        items: <Widget>[
          Icon(Icons.home, size: 30,),
          Icon(Icons.search, size: 30,),
          Icon(Icons.add, size: 30,),
          Icon(Icons.chat_bubble, size: 30,),
          Icon(Icons.person, size: 30,),
        ],
        onTap: (index) {
          _controller?.animateToPage(index,
              duration: Duration(milliseconds: 300), curve: Curves.easeIn);
        },
      ),
      body: PageView(
        controller: _controller,
        children: [
          HomeScreen(),
          Container(
            color: Colors.blue,
          ),
          AddScreen(),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.pink,
          )
        ],
      ),
    );
  }
}
