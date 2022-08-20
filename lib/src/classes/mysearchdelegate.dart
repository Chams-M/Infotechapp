import 'package:flutter/material.dart';

class MySearchDelegate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) => [
        IconButton(
            onPressed: () {
              if (query.isEmpty) {
                close(context, null); //close searchbar
              } else {
                query = '';
              }
            },
            icon: const Icon(Icons.clear)),
      ];

  @override
  Widget? buildLeading(BuildContext context) => IconButton(
      onPressed: () => close(context, null),
      icon: const Icon(Icons.arrow_back));

  @override
  Widget buildResults(BuildContext context) => Center(
       child:Text(
           query,
           style:const TextStyle(fontSize:64,fontWeight:FontWeight.w700)
        )

  );

   
  

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: replace suggestions with list of courses titles 
    List<String> suggestions = [    
      'maths',
      'physics',
      'IT',
      'python'
    ];
    return ListView.builder(
        itemCount:suggestions.length,
        itemBuilder:(context,index){
         final suggestion=suggestions[index];
            return ListTile(
                   title:Text(suggestion),
                  onTap:(){
                    query=suggestion;
                    showResults(context);
                   },
         );// ListTile
 },
);
}
}                      