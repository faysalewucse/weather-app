import 'package:geolocator/geolocator.dart';
import 'package:weather_app_steadfastit/api/error_handler.dart';

class Location {
  Future<Position?> getCurrentLocation() async {
    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission != LocationPermission.whileInUse &&
          permission != LocationPermission.always) {
        return null;
      }
    }

    if (permission == LocationPermission.whileInUse ||
        permission == LocationPermission.always) {
      try {
        return await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high,
        );
      } catch (err) {
        showApiErrorMessage(err);
        return null;
      }
    }
    return null;
  }
}
