import 'package:flutter/material.dart';
import 'package:homerent/model/house.dart';
import 'package:homerent/screen/detail/detail.dart';
import 'package:homerent/screen/home/widget/circle_icon_buttom.dart';

class RecommendHouse extends StatelessWidget {
  const RecommendHouse({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final recommendedList = House.generateRecommended();
    return Container(
      height: 240,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailPage(
                      house: recommendedList[index],
                    );
                  }));
                },
                child: Container(
                  height: 300,
                  width: 230,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              recommendedList[index].imageUrl,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        right: 15,
                        top: 15,
                        child: CircleIconButton(
                          iconUrl: "assets/icons/mark.svg",
                          color: Theme.of(context).accentColor,
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        left: 0,
                        child: Container(
                          color: Colors.white54,
                          padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    recommendedList[index].name,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline1
                                        .copyWith(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    recommendedList[index].address,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline1
                                        .copyWith(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ],
                              ),
                              CircleIconButton(
                                iconUrl: 'assets/icons/mark.svg',
                                color: Theme.of(context).accentColor,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          separatorBuilder: (_, index) => SizedBox(
                width: 20,
              ),
          itemCount: recommendedList.length),
    );
  }
}
