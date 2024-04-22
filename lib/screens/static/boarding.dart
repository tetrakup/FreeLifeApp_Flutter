import 'package:flutter/material.dart';
import 'package:preload_page_view/preload_page_view.dart';

import '../../widgets/page/boarding_item.dart';

class BoardingScreen extends StatefulWidget {
  const BoardingScreen({super.key});

  @override
  State<BoardingScreen> createState() => _BoardingScreenState();
}

class _BoardingScreenState extends State<BoardingScreen> {
int page = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: PreloadPageView(
          onPageChanged: (value) {
            setState(() {
              page = value;
            });
          },
          //scrollDirection: Axis.vertical,
          children: const [
            BoardingItem(
              image: "",
              title: "1 falan",
              description: "reklamreklamreklamreklamreklamreklamreklamreklam falan",
            ),
            BoardingItem(
              image: "",
              title: "2 falan",
              description: "reklamreklamreklamreklamreklamreklamreklamreklam falan",
            ),
            BoardingItem(
              image: "",
              title: "3 falan",
              description: "reklamreklamreklamreklamreklamreklamreklamreklam falan",
            ),
          ],
        ),)
    ,bottomNavigationBar: Container(height: 70,
    //child: Text(page.toString()),),
    );
  }
}
