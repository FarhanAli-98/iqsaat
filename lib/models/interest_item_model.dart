class InterestItemModel {
  final String text;
  final String image;
  bool isSelected = false;

  InterestItemModel(this.text, this.image, this.isSelected);
}

List<InterestItemModel> interstsList = <InterestItemModel>[
  InterestItemModel("Adventure", "images/adventure.png", false),
  InterestItemModel("Technology", "images/technology.png", false),
  InterestItemModel("Science", "images/science.png", false),
  InterestItemModel("Health & Wellness", "images/health&wellness.png", false),
  InterestItemModel("Health & Fitness", "images/health&fitness.png", false),
  InterestItemModel("Food", "images/food.png", false),
  InterestItemModel("Sports", "images/sports.png", false),
  InterestItemModel("Learning", "images/learning.png", false),
  InterestItemModel("Sports", "images/sports.png", false),
];
