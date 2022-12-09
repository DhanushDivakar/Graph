import 'package:chart/model/covid_19.dart';
import 'package:dio/dio.dart';

class COVID19Service {
  COVID19Service({required this.dio});

  final Dio dio;
  final String baseurl = 'https://api.covidtracking.com';
  final path = '/v1/us/daily.json';

  Future<List<COVID19>> getCovid19Data() async {
   // print('object');
    final response = await dio.get('$baseurl$path');
   print(response.data);
    if (response.statusCode == 200) {
      final covid19Data = response.data
          ?.map<COVID19>((covid) => COVID19.fromJson(covid))
          ?.toList();
      return covid19Data;
    }
    return <COVID19>[];
  }


}
