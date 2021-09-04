import 'package:geolocator/geolocator.dart';

class Location {
  double? lat;
  double? long;

  Future<void> getcurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      lat = position.latitude;
      long = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
