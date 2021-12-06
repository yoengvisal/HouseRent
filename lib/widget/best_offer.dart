import 'package:flutter/material.dart';
import 'package:homerent/model/house.dart';
import 'package:homerent/screen/home/widget/circle_icon_buttom.dart';

class BestOffer extends StatelessWidget {
  const BestOffer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final listOffer = House.generateBestOffer();
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Best Offer',
                style: Theme.of(context).textTheme.headline1.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Text(
                'See All',
                style: Theme.of(context).textTheme.headline1.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          ...listOffer
              .map(
                (el) => Container(
                  margin: EdgeInsets.only(bottom: 10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 150,
                            height: 80,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(el.imageUrl),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Text(
                                el.name,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline1
                                    .copyWith(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                el.address,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline1
                                    .copyWith(
                                      fontSize: 12,
                                    ),
                              )
                            ],
                          ),
                        ],
                      ),
                      Positioned(
                          right: 0,
                          child: CircleIconButton(
                            iconUrl: "assets/icons/heart.svg",
                            color: Colors.grey,
                          ))
                    ],
                  ),
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
