import 'package:dio/dio.dart';
import 'package:weather_app/model/wather.dart';

class newsService {
  final Dio dio;

  newsService(this.dio);

  Future<Weathermodel> getNews({required String country}) async {
    Response response = await dio.get(
        "https://api.openweathermap.org/data/2.5/weather?q=$country&appid=9fba2362e0dbbc00c8c33e1a7ddb44f1");

    Weathermodel wathermodell = Weathermodel.fromjson(response.data);

    return wathermodell;
  }
}
