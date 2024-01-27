// model data from API

class Books {
  Details details;
  Details hororCat;
  int id;
  String? date;

  Books(
      {required this.details,
      required this.id,
      required this.hororCat,
      required this.date});

  factory Books.fromJson(Map<String, dynamic> json) => Books(
      details: Details.fromJson(json["details"]),
      hororCat: Details.fromJson(json["hororCat"]),
      id: json["id"],
      date: json["date_time"]);

  Map<String, dynamic> toJson() => {
        "details": details.toJson(),
        "hororCat": details.toJson(),
        "id": id,
        "date_time" : date.toString()
      };
}

class Details {
  String? author;
  String? image;
  String? nama;
  bool? status;

  Details(
      {required this.author,
      required this.image,
      required this.nama,
      required this.status});

  factory Details.fromJson(Map<String, dynamic> json) => Details(
        author: json["Author"],
        image: json["Image"],
        nama: json["Nama"],
        status: json["Status"],
      );

  Map<String, dynamic> toJson() =>
      {"Author": author, "Image": image, "Nama": nama, "Status": status};
}
