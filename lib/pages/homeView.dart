import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/cubit/get_wather_state_cubit.dart';
import 'package:weather_app/pages/watherPage.dart';

import 'search.dart';

class homeview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather App'),
        leading: IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) {
                return search();
              },
            ));
          },
        ),
      ),
      body: BlocBuilder<GetWatherStateCubit, GetWatherStateState>(
        builder: (context, state) {
          if (state is WatherStateInitial) {
            return NewWidget();
          } else if (state is WatherStateSucess) {
            return MyApp(
              weathermodel: state.weathermodel,
            );
          } else {
            return Text('get wather filur');
          }
        },
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Lottie.asset("assets/searchh.json")),
    );
  }
}
