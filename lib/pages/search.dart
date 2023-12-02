 
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/get_wather_state_cubit.dart';

class search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
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
    );
  }
}
