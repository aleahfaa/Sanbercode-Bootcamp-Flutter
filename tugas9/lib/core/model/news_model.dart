class NewsModel {
  final String title;
  final String urlImg;
  final String category;

  NewsModel({
    required this.title,
    required this.urlImg,
    required this.category,
  });
}

List<NewsModel> news = [
  NewsModel(
    title: 'Insurtech Startup PasarPolis gets \$54 Million - Series B',
    urlImg: 'assets/img/recentnews-1.png',
    category: 'TECHNOLOGY',
  ),
  NewsModel(
    title: 'The IPO Paraade Continues as Wish Files, Bumble Targets',
    urlImg: 'assets/img/recentnews-2.png',
    category: 'TECHNOLOGY',
  ),
  NewsModel(
    title: 'Hypatos gets \$11.8M for a Deep Learning Approach',
    urlImg: 'assets/img/news-1.png',
    category: 'TECHNOLOGY',
  ),
  NewsModel(
    title: 'Insurtech Startup PasarPolis gets \$54 Million - Series B',
    urlImg: 'assets/img/recentnews-1.png',
    category: 'TECHNOLOGY',
  ),
  NewsModel(
    title: 'The IPO Paraade Continues as Wish Files, Bumble Targets',
    urlImg: 'assets/img/recentnews-2.png',
    category: 'TECHNOLOGY',
  ),
  NewsModel(
    title: 'Hypatos gets \$11.8M for a Deep Learning Approach',
    urlImg: 'assets/img/news-1.png',
    category: 'TECHNOLOGY',
  ),
];
