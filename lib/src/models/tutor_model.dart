

import 'package:ajath_infotech_app/src/models/data.dart';
class Tutors{



  final List<Data> data ;
  final num total ;
  const Tutors({
    required this.data,
    required this.total,
  });
  
  static Tutors fromJson(json)=>Tutors(data: json['tutors']['data'], total: json['tutors']['total']);
     
              
}
