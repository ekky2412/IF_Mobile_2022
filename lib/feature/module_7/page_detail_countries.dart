import 'package:flutter/material.dart';

import 'countries_model.dart';
import 'covid_data_source.dart';

class PageDetailCountries extends StatefulWidget {
  const PageDetailCountries({Key? key}) : super(key: key);

  @override
  _PageDetailCountriesState createState() => _PageDetailCountriesState();
}

class _PageDetailCountriesState extends State<PageDetailCountries> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Countries Detail"),
      ),
      body: _buildDetailCountriesBody(),
    );
  }

  Widget _buildDetailCountriesBody() {
    return Container(
      child: FutureBuilder(
        future: CovidDataSource.instance.loadCountries(),
        builder: (
          BuildContext context,
          AsyncSnapshot<dynamic> snapshot,
        ) {
          if (snapshot.hasError) {
            return _buildErrorSection();
          }
          if (snapshot.hasData) {
            CountriesModel countriesModel =
                CountriesModel.fromJson(snapshot.data);
            return _buildSuccessSection(countriesModel);
          }
          return _buildLoadingSection();
        },
      ),
    );
  }

  Widget _buildErrorSection() {
    return Text("Error");
  }

  Widget _buildEmptySection() {
    return Text("Empty");
  }

  Widget _buildLoadingSection() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _buildSuccessSection(CountriesModel data) {
    return ListView.builder(
      itemCount: data.countries?.length,
      itemBuilder: (BuildContext context, int index) {
        return _buildItemCountries("${data.countries?[index].name}");
      },
    );
  }

  Widget _buildItemCountries(String value) {
    return Text(value);
  }
}
