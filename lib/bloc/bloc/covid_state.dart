part of 'covid_bloc.dart';

class CovidState extends Equatable {
  const CovidState({this.covidData = const <COVID19>[], this.isLoading = false});
  final List<COVID19> covidData;
  final bool isLoading;

  CovidState copyWith({
    List<COVID19>? covidData,
    bool? isLoading,
  }) =>
      CovidState(
        covidData: covidData ?? this.covidData,
        isLoading: isLoading ?? this.isLoading,
      );

  @override
  List<Object> get props => [covidData, isLoading];
}

//class CovidInitial extends CovidState {}
