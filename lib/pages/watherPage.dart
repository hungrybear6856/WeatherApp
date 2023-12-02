// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/model/wather.dart';

class MyApp extends StatelessWidget {
  Weathermodel weathermodel;
  MyApp({
    Key? key,
    required this.weathermodel,
  }) : super(key: key);

  String getWatheranmation(String? weather) {
    if (weather == null) {
      return "assets/searchh.json";
    }
    switch (weather.toLowerCase()) {
      case 'clear':
        return "assets/sunny.json";
      case 'clouds':
        return "assets/cloudy.json";
      case 'rain':
        return "assets/rains.json";
      default:
        return "assets/sunny.json";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30),
            Text(
              weathermodel.cityName,
              style: TextStyle(
                  color: Theme.of(context).textTheme.subtitle1!.color,
                  fontSize: 27,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            Text(
              weathermodel.weatherCondetion,
              style: TextStyle(
                  color: Theme.of(context).textTheme.subtitle1!.color,
                  fontSize: 15,
                  fontWeight: FontWeight.normal),
            ),
            SizedBox(height: 16),
            Lottie.asset(getWatheranmation(weathermodel.weatherCondetion)),
            SizedBox(height: 16),
            Text(
              '${weathermodel.mainTemperature.round()}°',
              style: TextStyle(
                  color: Theme.of(context).textTheme.subtitle1!.color,
                  fontSize: 40,
                  fontWeight: FontWeight.normal),
            ),
            SizedBox(height: 10),
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text("main"),
                      Text('${weathermodel.mainTemperature.round()}°')
                    ],
                  ),
                  VerticalDivider(
                    thickness: 2,
                    width: 30,
                    color: Colors.grey,
                  ),
                  Column(
                    children: [
                      Text("max"),
                      Text('${weathermodel.maxTemperature.round()}°')
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}



/*
Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 50),
          child: Material(
            elevation: 0.2,
            shadowColor: Colors.black,
            child: TextField(
              onSubmitted: (value) async {
                var getWeatherCubit =
                    BlocProvider.of<GetWatherStateCubit>(context);
                getWeatherCubit.getWeather(cityName: value);
                Navigator.pop(context);
                /*
                          try {
                            weatherModel =
                                await newsService(Dio()).getNews(country: value);
                            setState(() {});
                          } catch (error) {
                            if (_scaffoldKey.currentState != null) {
                              _scaffoldKey.currentState!.showSnackBar(
                                SnackBar(
                                  content: Text('wrong city name'),
                                ),
                              );
                            }
                          }
                           */
              },
              cursorColor: Colors.black,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.search),
                label: Text('search'),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
          ),
        ),
      ),
    )



*/