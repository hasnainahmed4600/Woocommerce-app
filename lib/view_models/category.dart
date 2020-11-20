class Category {
  int categoryId;
  String categoryName;
  String categoryDesc;
  int parent;
  Img image;

  Category({
    this.categoryId,
    this.categoryName,
    this.categoryDesc,
    this.image,
  });

  Category.fromJson(Map<String, dynamic> json) {
    categoryId = json['id'];
    categoryName = json['name'];
    categoryDesc = json['description'];
    parent = json['parent'];
    image = json['image'] != null ? new Img.fromJson(json['image']) : null;
  }
}

class Img {
  String url;

  Img({
    this.url,
  });

  Img.fromJson(Map<String, dynamic> json) {
    url = json['src'];
  }
}