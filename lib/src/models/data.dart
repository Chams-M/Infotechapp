class Data {
  final String name;
  final String image;

  const Data({
    
    required this.image,
    required this.name,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
     
      image: json['image'],
       name: json['name'],
    );
  }
}