class CarouselModel {
  final String image;
  CarouselModel(this.image);
}

final List<String> images = [
  'assets/images/harum.hero1.jpeg',
  'assets/images/harum.hero2.jpeg',
  'assets/images/harum.hero3.jpeg',
];

final List<CarouselModel> carousel =
    images.map((image) => CarouselModel(image)).toList();
