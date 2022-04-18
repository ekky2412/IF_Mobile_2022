import 'base_network.dart';

class CovidDataSource {
  static CovidDataSource instance = CovidDataSource();

  Future<Map<String, dynamic>> loadCountries() {
    return BaseNetwork.get("countries");
  }
}
