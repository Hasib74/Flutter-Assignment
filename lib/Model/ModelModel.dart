class BlogModel {


  List<Blogs> blogs;

  BlogModel({this.blogs});

  BlogModel.fromJson(Map<String, dynamic> json) {
    if (json['blogs'] != null) {
      blogs = new List<Blogs>();
      json['blogs'].forEach((v) {
        blogs.add(new Blogs.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.blogs != null) {
      data['blogs'] = this.blogs.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Blogs {
  int id;
  String title;
  String description;
  String coverPhoto;
  List<String> categories;
  Author author;

  Blogs(
      {this.id,
        this.title,
        this.description,
        this.coverPhoto,
        this.categories,
        this.author});

  Blogs.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    coverPhoto = json['cover_photo'];
    categories = json['categories'].cast<String>();
    author =
    json['author'] != null ? new Author.fromJson(json['author']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['description'] = this.description;
    data['cover_photo'] = this.coverPhoto;
    data['categories'] = this.categories;
    if (this.author != null) {
      data['author'] = this.author.toJson();
    }
    return data;
  }
}

class Author {
  int id;
  String name;
  String avatar;
  String profession;

  Author({this.id, this.name, this.avatar, this.profession});

  Author.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    avatar = json['avatar'];
    profession = json['profession'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['avatar'] = this.avatar;
    data['profession'] = this.profession;
    return data;
  }
}