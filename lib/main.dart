import 'package:covid_19/bloc/covid_bloc.dart';
import 'package:covid_19/repository/repository_barrel.dart';
import 'package:covid_19/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:http/http.dart' as http;

import 'bloc/covid_bloc_barrel.dart';

void main() async {
  final repository = CovidRepository(
    apiClient: CovidApiClient(
      httpClient: http.Client(),
    ),
  );
  runApp(CovidApp(
    repository: repository,
  ));
}

class CovidApp extends StatelessWidget {
  const CovidApp({
    this.repository,
  }) : assert(repository != null);

  final CovidRepository repository;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Covid-19',
      home: BlocProvider(
        create: (context) => CovidBloc(
          repository: repository,
        )..add(CovidSummaryEvent()),
        child: HomeView(),
      ),
    );
  }
}
