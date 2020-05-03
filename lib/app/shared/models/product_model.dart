// To parse this JSON data, do
//
//     final productModel = productModelFromJson(jsonString);

import 'dart:convert';

List<ProductModel> productModelFromJson(String str) => List<ProductModel>.from(json.decode(str).map((x) => ProductModel.fromMap(x)));

String productModelToJson(List<ProductModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class ProductModel {
    final int id;
    final String title;
    final String picture;
    final double price;
    final bool isFavorite;
    final int discount;
    final List<Category> category;

    ProductModel({
        this.id,
        this.title,
        this.picture,
        this.price,
        this.isFavorite,
        this.discount,
        this.category,
    });

    ProductModel copyWith({
        int id,
        String title,
        String picture,
        double price,
        bool isFavorite,
        int discount,
        List<Category> category,
    }) => 
        ProductModel(
            id: id ?? this.id,
            title: title ?? this.title,
            picture: picture ?? this.picture,
            price: price ?? this.price,
            isFavorite: isFavorite ?? this.isFavorite,
            discount: discount ?? this.discount,
            category: category ?? this.category,
        );

    factory ProductModel.fromMap(Map<String, dynamic> json) => ProductModel(
        id: json["id"] == null ? null : json["id"],
        title: json["title"] == null ? null : json["title"],
        picture: json["picture"] == null ? null : json["picture"],
        price: json["price"] == null ? null : json["price"].toDouble(),
        isFavorite: json["isFavorite"] == null ? null : json["isFavorite"],
        discount: json["discount"] == null ? null : json["discount"],
        category: json["category"] == null ? null : List<Category>.from(json["category"].map((x) => Category.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "id": id == null ? null : id,
        "title": title == null ? null : title,
        "picture": picture == null ? null : picture,
        "price": price == null ? null : price,
        "isFavorite": isFavorite == null ? null : isFavorite,
        "discount": discount == null ? null : discount,
        "category": category == null ? null : List<dynamic>.from(category.map((x) => x.toMap())),
    };
}

class Category {
    final String title;
    final int id;

    Category({
        this.title,
        this.id,
    });

    Category copyWith({
        String title,
        int id,
    }) => 
        Category(
            title: title ?? this.title,
            id: id ?? this.id,
        );

    factory Category.fromMap(Map<String, dynamic> json) => Category(
        title: json["title"] == null ? null : json["title"],
        id: json["id"] == null ? null : json["id"],
    );

    Map<String, dynamic> toMap() => {
        "title": title == null ? null : title,
        "id": id == null ? null : id,
    };
}
