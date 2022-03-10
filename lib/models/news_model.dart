class NewsModel {
  final String title;
  final String description;
  final String image;
  NewsModel(this.title, this.description, this.image);
}

final List<Map<String, String>> data = [
  {
    'title': 'Vlog desa papua',
    'description':
        'Dolor sit amet, consectetur adipiscing elit. Donec tincidunt venenatis vestibulum.',
    'image': 'assets/images/news1.jpeg',
  },
  {
    'title': 'Sumbangan kota cape',
    'description':
        'Tincidunt venenatis vestibulum. Donec semper dui semper iaculis semper. Cras iaculis.',
    'image': 'assets/images/news2.jpeg',
  },
  {
    'title': 'Vlog hutan kalimantan',
    'description':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit.  Donec semper dui semper iaculis semper. Cras iaculis.',
    'image': 'assets/images/news3.jpeg',
  },
  {
    'title': 'Travel sungai amazon',
    'description':
        'Donec tincidunt venenatis vestibulum. Donec semper dui semper iaculis semper. Cras iaculis.',
    'image': 'assets/images/news4.jpeg',
  },
];

final List<NewsModel> news = data
    .map((dt) => NewsModel(dt['title']!, dt['description']!, dt['image']!))
    .toList();
