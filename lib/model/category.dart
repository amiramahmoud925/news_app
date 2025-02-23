
class Category {
  final String image;
  final String name;
  final String id;

  const Category({required this.image, required this.name , required this.id });
}

List<Category> categories  = [
  Category(image: "images/meal.jpg", name: "Health" , id:"c1"),
  Category(image: "images/sport.jpg", name: "Sport" , id:"c2"),
  Category(image: "images/fashion.jpg", name: "Fashion" , id:"c3"),
  Category(image: "images/weather.jpg", name: "Weather" , id:"c4"),
  Category(image: "images/travel.jpg", name: "Travel" , id:"c5"),
  Category(image: "images/technology.jpg", name: "Tech" , id:"c6"),
  Category(image: "images/nature.jpg", name: "Nature" , id:"c7"),

];

class CategoryItems{
  final String? id ;
  final String name ;
  final String image ;
  final String description ;
  final String categoryNumber ;

  const CategoryItems ({ required this.id,
    required this.name, required this.image ,
    required this.description , required this.categoryNumber,
  });
}

List<CategoryItems> details =  [
  CategoryItems(
      id:"m1",
      name: "Health",
      image: "images/meal.jpg",
      description: "Fillet Steak round 275gm,topped with bron pepper sauce served with your choice of 2sides",
      categoryNumber: "c1"),
  CategoryItems(
      id:"m2",
      name: "Sport",
      image: "images/sport.jpg",
      description: "Butter Chicken is a rich and creamy Indian dish made with tender, marinated chicken cooked in a luscious tomato-based curry. The dish is flavored with aromatic spices like garam masala, cumin, and coriander, then enriched with butter and cream, giving it a silky texture and a mild, slightly sweet taste.",
      categoryNumber: "c2"),
  CategoryItems(
      id:"m3",
      name: "Fashion",
      image: "images/fashion.jpg",
      description: "Alfredo is a rich and creamy Italian pasta sauce made primarily with butter, heavy cream, and Parmesan cheese. It has a smooth, velvety texture and a mild, cheesy flavor. Often paired with fettuccine pasta, the dish is known as Fettuccine Alfredo, a classic comfort food.",
      categoryNumber: "c3"),

  CategoryItems(
      id:"m4",
      name: "Weather",
      image: "images/weather.jpg",
      description: "Fillet Steak round 275gm,topped with bron pepper sauce served with your choice of 2sides",
      categoryNumber: "c4"),
];


