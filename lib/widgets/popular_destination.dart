import 'package:flutter/material.dart';
import 'package:harum_app/constants/color_constant.dart';
import 'package:harum_app/constants/style_constant.dart';
import 'package:harum_app/models/popular_place_model.dart';

class PopularDestination extends StatelessWidget {
  const PopularDestination({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text('Popular destination ✈️', style: iTitleStyle),
          ),
          const SizedBox(height: 15),
          Container(
            color: iBorderColor,
            padding: const EdgeInsets.all(0),
            height: 160,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: popularPlaces.length,
              itemBuilder: (context, index) {
                return Container(
                  width: 100,
                  margin:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 1),
                  child: Card(
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: GestureDetector(
                      onTap: () {
                        // ...
                      },
                      child: Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  topRight: Radius.circular(5)),
                              child: Image.asset(
                                popularPlaces[index].image,
                                fit: BoxFit.cover,
                                width: double.infinity,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  popularPlaces[index].city,
                                  textAlign: TextAlign.center,
                                  style: iTitleCardStyle,
                                ),
                                Text(
                                  popularPlaces[index].country.toUpperCase(),
                                  textAlign: TextAlign.center,
                                  style: iSubtitleCardStyle,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
