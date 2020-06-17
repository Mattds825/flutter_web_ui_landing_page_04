import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class PageContents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height - 90.0,
      child: Stack(
        children: [
          SearchBoxContainer(),
          SideTextContainer(),
          CarNameDescripton(),
          CarDescriptionTexts(),
        ],
      ),
    );
  }
}

class CarDescriptionTexts extends StatelessWidget {
  const CarDescriptionTexts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 100,
      bottom: 180,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 220.0,
            child: Text(
              'The facelift once again clearly underlines its dynamic appearance. ',
              style: TextStyle(
                fontSize: 11.0,
                fontWeight: FontWeight.w600,
                color: Colors.black,
                letterSpacing: 1.0,
              ),
            ),
          ),
          SizedBox(width: 40.0,),
          Container(
            width: 400.0,
            child: Text(
              'The AMG radiator grills with double lamella and the characteristic AMG front skirt in A-Wing design characterise the striking front grill',
              style: TextStyle(
                fontSize: 11.0,
                fontWeight: FontWeight.w600,
                color: Colors.black,
                letterSpacing: 1.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CarNameDescripton extends StatelessWidget {
  const CarNameDescripton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 80,
      left: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'mercedes-amg.'.toUpperCase(),
            style: TextStyle(
              fontSize: 36.0,
              fontWeight: FontWeight.w800,
              color: Colors.black,
              letterSpacing: 1.2,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            width: 160.0,
            child: Text(
              'The Amg performance vehicle of the CLA',
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w200,
                color: Colors.black,
                letterSpacing: 1.2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SearchBoxContainer extends StatelessWidget {
  const SearchBoxContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 90,
      top: 0,
      child: Material(
        elevation: 8.0,
        color: Color(0xffFF5875),
        borderRadius: BorderRadius.circular(15.0),
        child: Container(
          width: 520,
          height: 880,
          child: Stack(
            children: [
              Positioned(
                right: 10,
                top: 100,
                child: SideText(text: 'Car Search'),
              ),
              Positioned(
                left: 100,
                top: 100,
                child: ConfigurationWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ConfigurationWidget extends StatelessWidget {
  const ConfigurationWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleOptionsWidget(
          title: 'cars',
          optionTitle: 'New & Used Cars',
        ),
        SizedBox(
          height: 30.0,
        ),
        TitleOptionsWidget(title: 'model', optionTitle: 'Mercedez benz'),
        SizedBox(
          height: 30.0,
        ),
        TitleOptionsWidget(title: 'type', optionTitle: 'amg cla coupe'),
        SizedBox(
          height: 30.0,
        ),
        TitleOptionsWidget(title: 'price', optionTitle: 'Any'),
        SizedBox(
          height: 30.0,
        ),
        TitleOptionsWidget(title: 'distance', optionTitle: '100 miles'),
        SizedBox(
          height: 30.0,
        ),
        TitleOptionsWidget(title: 'zip code', optionTitle: 'Zip Code'),
        SizedBox(
          height: 70.0,
        ),
        Row(
          children: [
            Text(
              'search'.toUpperCase(),
              style: TextStyle(
                fontSize: 36.0,
                fontWeight: FontWeight.w800,
                color: Colors.black,
                letterSpacing: 1.2,
              ),
            ),
            SizedBox(
              width: 80.0,
            ),
            Icon(Icons.chevron_right),
          ],
        ),
      ],
    );
  }
}

class TitleOptionsWidget extends StatelessWidget {
  final String title;
  final String optionTitle;

  const TitleOptionsWidget({Key key, this.title, this.optionTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title.toUpperCase(),
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w700,
            color: Colors.black,
            letterSpacing: 1.2,
          ),
        ),
        SizedBox(
          height: 25.0,
        ),
        Column(
          children: [
            Container(
              width: 250,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    optionTitle.toUpperCase(),
                    style: TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      letterSpacing: 1.2,
                    ),
                  ),
                  Icon(Icons.keyboard_arrow_down),
                ],
              ),
            ),
            SizedBox(
              height: 6.0,
            ),
            Image.asset('assets/line.png')
          ],
        )
      ],
    );
  }
}

class SideTextContainer extends StatelessWidget {
  const SideTextContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      bottom: 0,
      child: Material(
        borderRadius: BorderRadius.circular(15.0),
        color: Color(0xffC3D6CA).withOpacity(0.8),
        child: Stack(
          children: [
            Container(
              height: 730.0,
              width: 200.0,
            ),
            Positioned(
              left: -40,
              top: 100,
              child: SideText(
                text: 'Specs & Reviews',
              ),
            ),
            Positioned(
              left: -40,
              top: 300,
              child: SideText(
                text: 'Service Center',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SideText extends StatelessWidget {
  final String text;

  const SideText({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: pi / 2,
      child: Container(
        width: 140,
        height: 20,
        child: Text(
          text.toUpperCase(),
          style: TextStyle(
            fontSize: 11.0,
            fontWeight: FontWeight.w700,
            color: Colors.black,
            letterSpacing: 1.2,
          ),
        ),
      ),
    );
  }
}
