//api dio


import 'package:dio/dio.dart';

class Services {
  final dio = Dio();

 final baseUrl = "localhost:8000/all";

  void getData()async{
    try {
    var result = dio.get(baseUrl);

    
    await result;

      
    // ignore: empty_catches
    } catch (e) {
      
    }
  }
}