import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 100.0),
            child: FirstRow(),
          ),
          SecondRow(),
          ThirdRow(),
        ],
      ),
    );
  }
}

class ThirdRow extends StatelessWidget {
  const ThirdRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 100.0),
          child: Row(
            children: [
              Icon(Icons.search),
              SizedBox(width: 40.0,),
              Icon(Icons.lock),
            ],
          ),
        )
      ],
    );
  }
}

class SecondRow extends StatelessWidget {
  const SecondRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          'Blog',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 11.0,
            letterSpacing: 1.0,
          ),
        ),
        SizedBox(width: 60.0,),
        Text(
          'About Us',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 11.0,
            letterSpacing: 1.0,
          ),
        ),
        SizedBox(width: 60.0,),
        Text(
          'Contact',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 11.0,
            letterSpacing: 1.0,
          ),
        ),
      ],
    );
  }
}

class FirstRow extends StatelessWidget {
  const FirstRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextIconRow(title: 'buy'),
        SizedBox(
          width: 30.0,
        ),
        TextIconRow(title: 'Sell & Trade'),
        SizedBox(
          width: 30.0,
        ),
        TextIconRow(title: 'services & repair'),
      ],
    );
  }
}

class TextIconRow extends StatelessWidget {
  final String title;

  const TextIconRow({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title.toUpperCase(),
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 12.0,
            letterSpacing: 1.2,
          ),
        ),
        SizedBox(
          width: 6.0,
        ),
        Icon(Icons.keyboard_arrow_down),
      ],
    );
  }
}
