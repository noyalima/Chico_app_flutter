import 'package:flutter/material.dart';
import 'package:helloworld/core/color.dart';

class VisitListItem extends StatelessWidget {
  final int image;
  const VisitListItem({this.image, key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      margin: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(margin: EdgeInsets.only(left: 8.0), child: Text("09:00")),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 16.0),
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: appVisitItemColor1,
                borderRadius: BorderRadius.circular(5)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Ola ${image + 1}",
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Text(
                    "Ola sub",
                    style: TextStyle(fontSize: 12.0),
                  ),
                  Text(
                    "Ola sub $image",
                    style: TextStyle(fontSize: 12.0),
                  ),
                  Expanded(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ClipOval(
                          child: Image.network(
                              "https://randomuser.me/api/portraits/men/7$image.jpg"),
                        ),
                        ClipOval(
                          child: Image.network(
                              "https://randomuser.me/api/portraits/women/5$image.jpg"),
                        ),
                        ClipOval(
                          child: Image.network(
                              "https://randomuser.me/api/portraits/men/4$image.jpg"),
                        ),
                        ClipOval(
                          child: Image.network(
                              "https://randomuser.me/api/portraits/women/1$image.jpg"),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
