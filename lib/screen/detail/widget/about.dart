import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "About",
            style: Theme.of(context).textTheme.headline1.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "This a luxury house in cambodia include a best views in mountain in center city.",
            style: Theme.of(context).textTheme.headline1.copyWith(
                  fontSize: 14,
                ),
          ),
        ],
      ),
    );
  }
}
