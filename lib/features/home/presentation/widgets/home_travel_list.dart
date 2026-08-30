import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel/features/home/data/models/travel_cards_list_model.dart';

class HomeTravelList extends StatefulWidget {
  const HomeTravelList({super.key});

  @override
  State<HomeTravelList> createState() => _HomeTravelListState();
}

class _HomeTravelListState extends State<HomeTravelList> {
  List<TravelCardsListModel> travelCards = [
    TravelCardsListModel(
      id: 1,
      imagePath: 'assets/images/tokyo_image.png',
      placeName: 'Mount Fuji',
      cityName: 'Tokyo',
      countryName: 'Japan',
      cardRaiting: 4.8,
      isFavorite: false,
    ),
    TravelCardsListModel(
      id: 2,
      imagePath: 'assets/images/andes_image.png',
      placeName: 'Andes Mountain',
      cityName: 'South',
      countryName: 'America',
      cardRaiting: 4.5,
      isFavorite: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final travelCard = travelCards[index];

          return GestureDetector(
            onTap: () {},
            child: Container(
              child: Stack(
                children: [
                  Image.asset(travelCard.imagePath),
                  Positioned(
                    top: 14,
                    right: 17,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0x661D1D1D),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            travelCard.isFavorite = !travelCard.isFavorite;
                          });
                        },
                        icon: travelCard.isFavorite
                            ? Icon(
                                Icons.favorite,
                                size: 30,
                                color: Colors.white,
                              )
                            : Icon(
                                Icons.favorite_border,
                                size: 30,
                                color: Colors.white,
                              ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 22,
                    bottom: 25,
                    child: ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(15),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 0, sigmaY: 10),
                        child: Container(
                          width: 220,
                          padding: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 11,
                          ),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x1AFFFFFF),
                                spreadRadius: 0,
                                blurRadius: 9,
                              ),
                            ],
                          ),
                          height: 75,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                  text: '${travelCard.placeName}, ',
                                  style: TextStyle(
                                    fontWeight: .w500,
                                    fontFamily: 'Roboto',
                                    fontSize: 16,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: '${travelCard.cityName}',
                                      style: TextStyle(
                                        color: Color(0xFFCAC8C8),
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 13),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/images/vector/place_vector.svg',
                                  ),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    child: Text(
                                      '${travelCard.cityName}, ${travelCard.countryName}',
                                      style: TextStyle(
                                        color: Color(0xFFCAC8C8),
                                        fontFamily: 'Roboto',
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                        'assets/images/vector/raiting_vector.svg',
                                      ),
                                      const SizedBox(width: 5),
                                      Text(
                                        travelCard.cardRaiting.toString(),
                                        style: TextStyle(
                                          color: Color(0xFFCAC8C8),
                                          fontFamily: 'Roboto',
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => SizedBox(width: 22),
        itemCount: travelCards.length,
      ),
    );
  }
}
