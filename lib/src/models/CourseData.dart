import 'data.dart';

class CoursesData{
  String author , title , currencySymbol , value , avg_rating , total_given_by;
  

  CoursesData({
    required this.author,required this.title , required this.currencySymbol , required this.value , required this.avg_rating , required this.total_given_by
  });

  factory CoursesData.fromJson(Map<String, dynamic> json) {
    return CoursesData(
      author: json['author'],
      title: json['title'],
      currencySymbol: json['currencySymbol'] ,
      value: json['value'],
      avg_rating: json['avg_rating'],
      total_given_by: json['total_given_by']

    );
  }
}

class Fees 
  {
    String currency,currencySymbol, value;

    Fees({
      required this.currency , required this.currencySymbol , required this.value
    });

  factory Fees.fromJson(Map<String, dynamic> json) {
    return Fees(
      currency: json['currency'],
      currencySymbol: json['currencySymbol'],
      value: json['value'] ,

    );
  }
  }

class Rating {
  String avgRating, totalGivenBy ;
  Rating ({
    required this.avgRating , required this.totalGivenBy
  });
  factory Rating.fromJson(Map<String, dynamic> json) {
    return Rating(
      avgRating: json['avgRating'],
      totalGivenBy: json['totalGivenBy'],

    );
  }

}