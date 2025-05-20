import 'package:connectivity_plus/connectivity_plus.dart';
class AppHelper{

  static Future<bool> hasInternet() async {
    var connectivityResult = await Connectivity().checkConnectivity();
    return connectivityResult != ConnectivityResult.none;
  }
}