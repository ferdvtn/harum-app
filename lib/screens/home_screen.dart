import 'package:flutter/material.dart';
import 'package:harum_app/constants/style_constant.dart';
import 'package:harum_app/widgets/bottom_nav_bar.dart';
import 'package:harum_app/widgets/hero_swiper.dart';
import 'package:harum_app/widgets/news.dart';
import 'package:harum_app/widgets/our_services.dart';
import 'package:harum_app/widgets/popular_destination.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appbar
      appBar: AppBar(
        centerTitle: false,
        elevation: 0,
        title: Image(
          image: const AssetImage('assets/images/harum.logo.png'),
          width: MediaQuery.of(context).size.width * 0.25,
        ),
      ),

      // bottom navbar
      bottomNavigationBar: const BottomNavBar(),

      // body
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            // const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Hi, Ferdian 👋🏻', style: iJumboStyle),
                  Text('See what\'s new for you!', style: iTitleStyle),
                ],
              ),
            ),
            const HeroSwiper(),
            const OurServices(),
            const PopularDestination(),
            const News(),
          ],
        ),
      ),
    );
  }
}
