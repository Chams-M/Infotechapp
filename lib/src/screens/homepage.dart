
import 'package:flutter/material.dart';
import '../data/api.dart';
import '../widgets/category_card.dart';
import '../widgets/tutor_card.dart';
import '../widgets/course_card.dart';
import '../widgets/section.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        const Section(
          title: 'Popular Courses',
          total: 13,                                  //TODO: fetch total courses
        ),
        SizedBox(
          height: 320,
          child: FutureBuilder(
              future: getData('courses'),
              builder: (context, AsyncSnapshot snapshot) {
                if (!snapshot.hasData) {
                  return CircularProgressIndicator();
                } else {
                  return ListView.separated(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.all(12),
                      itemCount: snapshot.data.length,
                      separatorBuilder: (context, index) => const SizedBox(
                          width: 12), // for seperation between cards
                      itemBuilder: ( 
                        (context, index) {
                        
                          return CourseCard(snapshot.data,index);
                          }
                      )
                  );
                }
              }),
        ),
        const Section(
          title: 'Category',
          total: 13,                                   //TODO: fetch total categories
        ),
         SizedBox(
          height: 150,
          child: FutureBuilder(
              future: getData('categories'),
              builder: (context, AsyncSnapshot snapshot) {
                if (!snapshot.hasData) {
                  return CircularProgressIndicator();
                } else {
                  return ListView.separated(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.all(12),
                      itemCount: snapshot.data.length,
                      separatorBuilder: (context, index) => const SizedBox(
                          width: 12), // for seperation between cards
                      itemBuilder: ( 
                        (context, index) {
                
                          return CategoryCard(snapshot.data,index);
                          }
                      )
                  );
                }
              }),
        ),
        const Section(
          title: 'Top Tutors',
          total: 10,                               //TODO: fetch total tutors
        ),
        SizedBox(
          height: 150,
          child: FutureBuilder(
              future: getData('tutors'),
              builder: (context, AsyncSnapshot snapshot) {
                if (!snapshot.hasData) {
                  return CircularProgressIndicator();
                } else {
                  return ListView.separated(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.all(12),
                      itemCount: snapshot.data.length,
                      separatorBuilder: (context, index) => const SizedBox(
                          width: 12), // for seperation between cards
                      itemBuilder: ( 
                        (context, index) {
                         /* print(index);
                          print(snapshot.data[index].image);
                          print(snapshot.data[index].name); // for testing the display of images */
                          return TutorCard(snapshot.data,index);}
                      )
                  );
                }
              }),
        ),
      ]),
    );
  }
}



