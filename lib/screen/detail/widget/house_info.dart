import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HouseInfo extends StatelessWidget {
  const HouseInfo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            children: [
              MenuInfo(
                imageUrl: 'assets/icons/bedroom.svg',
                content: '5 Bedroom\n3 Master Bedroom',
              ),
              MenuInfo(
                imageUrl: 'assets/icons/bathroom.svg',
                content: '5 Bathroom\n3 Toilet',
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              MenuInfo(
                imageUrl: 'assets/icons/kitchen.svg',
                content: '2 Bedroom\n120 sqft',
              ),
              MenuInfo(
                imageUrl: 'assets/icons/parking.svg',
                content: '2 Bathroom\n120 sqft',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MenuInfo extends StatelessWidget {
  final String imageUrl;
  final String content;
  const MenuInfo({Key key, this.imageUrl, this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: Row(
          children: [
            SvgPicture.asset(imageUrl),
            SizedBox(
              height: 20,
            ),
            Text(
              content,
              style: Theme.of(context).textTheme.headline1.copyWith(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
