import 'package:booky/api/dio/dio.dart';
import 'package:booky/api/model/data.dart';

class Provider {
  final _provide = Services();

  Future<List<Books?>> getResult() async{
    return await _provide.getData();
  }


}


