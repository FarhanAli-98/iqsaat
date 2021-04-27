class ImageModel {
  String title;
  String imageUrl;
  String description;

  ImageModel({this.title, this.imageUrl, this.description});

  Map<String, dynamic> toJson() =>
      {'title': title, 'imageUrl': imageUrl, 'description': description};
}
