import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:chart/model/covid_19.dart';
import 'package:chart/resources/api_provider.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

part 'covid_event.dart';
part 'covid_state.dart';

class CovidBloc extends Bloc<CovidEvent, CovidState> {
  final COVID19Service covidList = COVID19Service(dio: Dio());
  CovidBloc() : super(const CovidState()) {
    on<GetCovidData>(_onGetData);
  }

  FutureOr<void> _onGetData(
      GetCovidData event, Emitter<CovidState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final covid19List = await covidList.getCovid19Data();
      // print('covidList');
      emit(state.copyWith(isLoading: false, covidData: covid19List));
    } catch (error) {
      emit(state.copyWith(isLoading: false));
    }
  }
}
