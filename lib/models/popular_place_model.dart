class PopularPlaceModel {
  final String city;
  final String country;
  final String image;
  PopularPlaceModel(this.city, this.country, this.image);
}

final List<Map<String, String>> data = [
  {
    'city': 'kalimantan',
    'country': 'indonesia',
    'image': 'assets/images/popular1.jpeg',
  },
  {
    'city': 'amazon',
    'country': 'brazil',
    'image': 'assets/images/popular2.jpeg',
  },
  {
    'city': 'roma',
    'country': 'italy',
    'image': 'assets/images/popular3.jpeg',
  },
  {
    'city': 'cape',
    'country': 'south africa',
    'image': 'assets/images/popular4.jpeg',
  },
  {
    'city': 'papua',
    'country': 'indonesia',
    'image': 'assets/images/popular5.jpeg',
  },
];

final List<PopularPlaceModel> popularPlaces = data
    .map((dt) => PopularPlaceModel(dt['city']!, dt['country']!, dt['image']!))
    .toList();
