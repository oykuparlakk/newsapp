class Constants {
  static const APIKEY = "fa3a4f27eeed4656bd37c624ea6be4f9";
  static const TOPHEADLINES =
      "https://newsapi.org/v2/everything?q=keyword&apiKey=$APIKEY";

  static String headLiensFor(String country) {
    return 'https://newsapi.org/v2/top-headlines?country=$country&apiKey=$APIKEY';
  }

  static const Map<String, String> Countries = {
    'USA': 'us',
    'China': 'cn',
  };
}
