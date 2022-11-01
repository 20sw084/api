class dummyData {
  int? id;
  String? title;
  String? description;
  int? price;
  double? discountPercentage;
  double? rating;
  int? stock;
  String? brand;
  String? category;
  String? thumbnail;
//   "id": 4,
//   "title": "OPPOF19",
//   "description": "OPPO F19 is officially announced on April 2021.",
//   "price": 280,
//   "discountPercentage": 17.91,
//   "rating": 4.3,
//   "stock": 123,
//   "brand": "OPPO",
//   "category": "smartphones",
//   "thumbnail": "https://dummyjson.com/image/i/products/4/thumbnail.jpg",
  fromJSON(Map<String, dynamic> json) {
    id = json["id"];
    title = json["title"];
    description = json["description"];
    price = json["price"];
    discountPercentage = json["discountPercentage"];
    rating = json["rating"];
    stock = json["stock"];
    brand = json["brand"];
    category = json["category"];
    thumbnail = json["thumbnail"];
  }

  toJSON() => {
        "id": id,
        "title": title,
        "description": description,
        "price": price,
        "discountPercentage": discountPercentage,
        "rating": rating,
        "stock": stock,
        "brand": brand,
        "category": category,
        "thumbnail": thumbnail,
      };
}
