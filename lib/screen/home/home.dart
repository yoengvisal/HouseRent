import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:homerent/widget/Categories.dart';
import 'package:homerent/widget/best_offer.dart';
import 'package:homerent/widget/custom_bottom_bar.dart';
import 'package:homerent/widget/recommend_house.dart';
import 'package:homerent/widget/search_text.dart';
import 'package:homerent/widget/welcome_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: SvgPicture.asset('assets/icons/menu.svg'),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/avatar.jpeg'),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WelcomeText(),
            SearchText(),
            Categories(),
            RecommendHouse(),
            BestOffer(),

          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
