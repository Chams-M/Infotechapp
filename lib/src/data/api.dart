//fetching data 

import 'dart:convert';
import 'package:ajath_infotech_app/src/models/data.dart';
import 'package:ajath_infotech_app/src/models/fielddata.dart';
import '../models/CourseData.dart';
import '../models/data.dart';
import 'package:http/http.dart' as http;



Future getData(name) async {
  final response = await http.get(Uri.parse(
      'https://app.fakejson.com/q/xdqGGa4e?token=MmSjTp1p8t-exolhzJqYlg'));
  Map<String, dynamic> map =json.decode(response.body);
  if(name =="courses")
  {
  List<dynamic> data = map["popular_courses"]["data"];
  String coursestotal = map ["popular_courses"]["total"];
  Field coursesField = Field(data: data, total: coursestotal);
  List<CoursesData> courses = [];
  for (var c in data) {
    CoursesData course = CoursesData(author: c['author'], title: c['title'], currencySymbol: c['fees']['currencySymbol'], value: c['fees']['value'], avg_rating: c['rating']['avg_rating'], total_given_by: c['rating']['total_given_by']);
    courses.add(course);
  }


  print(courses);
  if (response.statusCode == 200) {
    print("load courses succeeded");
   
  } 
   return courses;
   }

   else if (name == "categories")  {
    List<dynamic> data = map["categoies"]["data"];
    String categoriestotal = map ["categoies"]["total"];
    List<Data> categories = [];
    for (var i in data) {
    Data category = Data(image: i['image'], name: i['name']);
    categories.add(category);
    }
     if (response.statusCode == 200) {
      print("load categories succeeded");
     
  } 
    return categories;
  }
   else if (name == "tutors") {

    List<dynamic> data = map["tutors"]["data"];
    String tutorstotal = map ["tutors"]["total"];
    List<Data> tutors = [];
    for (var t in data) {
    Data tutor = Data(image: t['image'], name: t['name']);
    tutors.add(tutor);
  }
  if (response.statusCode == 200) {
    print("load tutors succeeded");
    
  } 
    return tutors;
  }
   }