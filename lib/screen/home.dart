import 'package:covid_19/bloc/covid_bloc_barrel.dart';
import 'package:covid_19/dto/covid_dto.dart';
import 'package:covid_19/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget nextView;

    return Scaffold(
      appBar: AppBar(
        title: Text('Covid-19'),
      ),
      body: BlocBuilder<CovidBloc, CovidState>(
        builder: (context, state) {
          state.when(
            loading: () {
              nextView = Center(child: CircularProgressIndicator());
            },
            content: (summary) {
              List<Country> countries = summary.countries;
              countries
                  .sort((a, b) => b.totalConfirmed.compareTo(a.totalConfirmed));
              nextView = ListView(
                shrinkWrap: true,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Data Source'),
                      FlatButton(
                        child: Text(
                          'Johns Hopkins CSSE',
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        onPressed: () async => launchURL(
                            'https://systems.jhu.edu/research/public-health/ncov/'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  _GlobalDataView(
                    global: summary.global,
                    date: DateFormat('MMM dd, hh:mm a')
                        .format(DateTime.parse(summary.date)),
                  ),
                  const SizedBox(height: 16.0),
                  _CountriesDataView(countries: countries),
                ],
              );
            },
            error: () {
              nextView = Center(
                  child: Text('Something went wrong, please try again!'));
            },
          );
          return nextView;
        },
      ),
    );
  }
}

class _GlobalDataView extends StatelessWidget {
  const _GlobalDataView({
    @required this.global,
    @required this.date,
  }) : assert(global != null);

  final Global global;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Last updated: ',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  date,
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const Divider(),
            ListTile(
              title: Text('Coronavirus Cases'),
              trailing: Text(
                getFormattedNumber(global.totalConfirmed),
                style: TextStyle(fontSize: 24.0),
              ),
            ),
            ListTile(
              title: Text('Deaths'),
              trailing: Text(
                getFormattedNumber(global.totalDeaths),
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.red,
                ),
              ),
            ),
            ListTile(
              title: Text('Recovered'),
              trailing: Text(
                getFormattedNumber(global.totalRecovered),
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.green,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CountriesDataView extends StatelessWidget {
  const _CountriesDataView({
    @required this.countries,
  }) : assert(countries != null);

  final List<Country> countries;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      itemBuilder: (context, index) {
        final country = countries[index];
        return Card(
          child: ListTile(
            contentPadding: const EdgeInsets.all(16.0),
            title: Center(
              child: Text(
                country.country,
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            subtitle: Column(
              children: <Widget>[
                const SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          'Total Cases',
                          style: TextStyle(fontSize: 12.0),
                        ),
                        Text(
                          getFormattedNumber(country.totalConfirmed),
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          'Total Death',
                          style: TextStyle(fontSize: 12.0),
                        ),
                        Text(
                          getFormattedNumber(country.totalDeaths),
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          'New Cases',
                          style: TextStyle(fontSize: 12.0),
                        ),
                        Text(
                          getFormattedNumber(country.newConfirmed),
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.amber,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          'New Deaths',
                          style: TextStyle(fontSize: 12.0),
                        ),
                        Text(
                          getFormattedNumber(country.newDeaths),
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.purple,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return const Divider();
      },
      itemCount: countries.length,
    );
  }
}
