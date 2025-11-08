// Creating a new data type or data model to represent the JSON coming from the nasa apod api

class ApodModel {
  final String title;
  final String copyright;
  final String date;
  final String url;
  final String? explanation;

  ApodModel(this.title, this.copyright, this.date, this.url, this.explanation);
}
