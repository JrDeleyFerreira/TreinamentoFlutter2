// ignore_for_file: override_on_non_overriding_member

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'states_bloc_flutterando.dart';

class SearchCepBloCFlutterando extends Bloc<String, Stream> {
  final Dio dio;

  SearchCepBloCFlutterando(this.dio) : super(SearchCepSuccess({}) as Stream);

  @override
  Stream<ISearchCepState> mapEventToState(String cep) async* {
    yield const SearchCepLoading();
    try {
      final response = await dio.get("url/json/");
      yield SearchCepSuccess(response.data);
    } catch (e) {
      yield const SearchCepError("Deu m* galera");
    }
  }
}
