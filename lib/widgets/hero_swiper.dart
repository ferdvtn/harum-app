import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:harum_app/constants/color_constant.dart';
import 'package:harum_app/models/carousel_model.dart';

class HeroSwiper extends StatefulWidget {
  const HeroSwiper({Key? key}) : super(key: key);

  @override
  State<HeroSwiper> createState() => _HeroSwiperState();
}

class _HeroSwiperState extends State<HeroSwiper> {
  var _swiperIndex = 0;
  List<T> _swiperMap<T>(List<CarouselModel> list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      height: 190,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Stack(
          children: [
            Swiper(
              onIndexChanged: (value) {
                setState(() {
                  _swiperIndex = value;
                });
              },
              itemCount: carousel.length,
              autoplay: true,
              layout: SwiperLayout.DEFAULT,
              itemBuilder: (context, index) {
                return Image(
                  image: AssetImage(carousel[index].image),
                  fit: BoxFit.cover,
                );
              },
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ..._swiperMap<Widget>(
                      carousel,
                      (index, _) {
                        return Container(
                          // alignment: Alignment.centerLeft,
                          height: 6,
                          width: 6,
                          margin: const EdgeInsets.only(right: 8),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _swiperIndex == index
                                  ? iGreenColor
                                  : iGreyColor),
                        );
                      },
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
