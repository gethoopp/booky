// model data from API

import 'dart:convert';

class DetailData {
    Details details;
    int id;

    DetailData({
        required this.details,
        required this.id,
    });

    factory DetailData.fromRawJson(String str) => DetailData.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory DetailData.fromJson(Map<String, dynamic> json) => DetailData(
        details: Details.fromJson(json["details"]),
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "details": details.toJson(),
        "id": id,
    };
}

class Details {
    String author;
    String image;
    String nama;

    Details({
        required this.author,
        required this.image,
        required this.nama,
    });

    factory Details.fromRawJson(String str) => Details.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Details.fromJson(Map<String, dynamic> json) => Details(
        author: json["Author"],
        image: json["Image"],
        nama: json["Nama"],
    );

    Map<String, dynamic> toJson() => {
        "Author": author,
        "Image": image,
        "Nama": nama,
    };
}
