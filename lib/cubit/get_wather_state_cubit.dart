import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:weather_app/api/servicee.dart';
import 'package:weather_app/model/wather.dart';

part 'get_wather_state_state.dart';

class GetWatherStateCubit extends Cubit<GetWatherStateState> {
  GetWatherStateCubit() : super(WatherStateInitial());
  Weathermodel? weathermodel;

  getWeather({required String cityName}) async {
    try {
      weathermodel = await newsService(Dio()).getNews(country: cityName);

      emit(WatherStateSucess(weathermodel: weathermodel!));
    } on Exception {
      emit(WatherStatefailur());
    }
  }
}
