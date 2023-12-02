// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'get_wather_state_cubit.dart';

@immutable
class GetWatherStateState {}

class WatherStateInitial extends GetWatherStateState {}

class WatherStateSucess extends GetWatherStateState {
  Weathermodel weathermodel;
  WatherStateSucess({
    required this.weathermodel,
  });
  
}

class WatherStatefailur extends GetWatherStateState {}
