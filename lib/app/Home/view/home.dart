import 'package:flutter/material.dart';
import 'package:sound/app/Home/widget/post_container.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, index) {
                return Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 7),
                  child: Stack(
                    children: [
                      CircleAvatar(
                        maxRadius: 32,
                      ),
                      if (index == 0)
                        Positioned(
                          right: 0,
                          bottom: 0,
                          child: Icon(
                            Icons.add,
                          ),
                        )
                    ],
                  ),
                );
              },
            ),
          ),
          Flexible(
            child: Container(
              child: RefreshIndicator(
                onRefresh: () async {},
                child: PageView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (ctx, index) {
                      return PostContainer();
                    }),
              ),
            ),
          )
        ],
      ),
    );
  }
}
