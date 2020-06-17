import 'package:flutter/material.dart';
import 'coponents/car_image.dart';
import 'coponents/page_contents.dart';
import 'coponents/top_bar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Row(
              children: [
                Container(
                  width: 320.0,
                  height: MediaQuery.of(context).size.height,
                  color: Colors.white,
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 30.0, top: 30.0),
                      child: Icon(Icons.lightbulb_outline),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Color(0xffCFECDA),
                    child: Column(
                      children: [
                        TopBar(),
                        PageContents(),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: CarImage(),
            ),
            Positioned(
              left: 100,
              bottom: 0,
              child: Container(
                height: 90,
                width: 380,
                color: Color(0xffFF5875),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'BUY NOW | \$58.113',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 1.0,
                            color: Colors.black,
                          ),
                        ),
                        Icon(Icons.chevron_right),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
