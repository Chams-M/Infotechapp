import 'data.dart';

class Field {
  List<dynamic> data ;
  String total ;

  Field({
    required this.data,required this.total
  });

  factory Field.fromJson(Map<String, dynamic> json) {
    return Field(
      data: json['data'],
      total: json['total'],
    );
  }
}