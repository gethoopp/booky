//api dio

import 'package:booky/api/model/data.dart';
import 'package:dio/dio.dart';

class Services {
  final dio = Dio();

  Future<List<Books?>> getData() async {
    try {
      var resultS = await dio.get("http://192.168.1.21:8080/get");

      if (resultS.statusCode == 200) {
        return (resultS.data as List)
            .map((e) => Books.fromJson(
                e)) // ignore: unnecessary_lambdas, unnecessary_new

            .toList();
      }

      return [];

      // ignore: empty_catches
    } catch (e) {
      throw Exception(e);
    }
  }

  // ignore: non_constant_identifier_names
  /// Put data

  Future<List<Books?>> updatedata(
      int id, String nama, String url, String author, bool curentVal) async {
    // Map<String, dynamic> mapper = {"Nama": "A World Away From You Forever", "Image": "https://i.ibb.co/q96vnLn/Night-blue-sky-and-white-artistic-novel-book-cover.png", "Author": "Eleanor Fiterzalty", "Status": curentVal};
    try {
      var response = await dio.put('http://192.168.1.21:8080/update/$id',
          data: {
            "Nama": nama,
            "Image": url,
            "Author": author,
            "Status": curentVal
          });

      print(response.data);

      return [];
    } catch (e) {
      throw Exception(e);
    }
  }


  Future<List<Books?>> updateDate(
      int id,  String date) async {
    // Map<String, dynamic> mapper = {"Nama": "A World Away From You Forever", "Image": "https://i.ibb.co/q96vnLn/Night-blue-sky-and-white-artistic-novel-book-cover.png", "Author": "Eleanor Fiterzalty", "Status": curentVal};
    try {
      var response = await dio.put('http://192.168.1.21:8080/updateDate/$id',
          data: {
            "date_time": date,  
          });

      print(response.data);

      return [];
    } catch (e) {
      throw Exception(e);
    }
  }
}



void main() {
  var service = Services();
  service.updatedata(
      2,
      "Alchemy",
      "https://i.ibb.co/zWMQb0p/Brown-Elegant-Woman-Novel-Book-Cover-1.png",
      "Patrick Keegan",
      true);
}
