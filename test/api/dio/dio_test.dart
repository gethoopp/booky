import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

class Album {
  final int userId;
  final int id;
  final String title;

  const Album({required this.userId, required this.id, required this.title});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      userId: json['userId'] as int,
      id: json['id'] as int,
      title: json['title'] as String,
    );
  }
}

class Servicess {
  final dio = Dio();

  Future<Album> getData() async {
    try {
      var resultS =
          await dio.get('https://jsonplaceholder.typicode.com/albums/1');

      if (resultS.statusCode == 200) {
        return Album.fromJson(resultS.data as Map<String, dynamic>);
      }

      throw Exception('Failed to fetch data');
    } catch (e) {
      throw Exception(e);
    }
  }
}

void main() {
  test('testing network', () async {
    final dioS = Dio();
    final dioAdapter = DioAdapter(dio: dioS);
    dioS.httpClientAdapter = dioAdapter;

    dioAdapter.onGet(
      'https://jsonplaceholder.typicode.com/albums/1',
      (request) => request.reply(200, {"userId": 1, "id": 2, "title": "mock"}),
    );

    final response = await Servicess().getData();
    expect(response, isA<Album>());
  });
}
