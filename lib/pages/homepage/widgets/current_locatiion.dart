import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app_steadfastit/helper/gaps.dart';
import 'package:weather_app_steadfastit/helper/image_assets.dart';

class CurrentLocation extends StatefulWidget {
  const CurrentLocation({Key? key}) : super(key: key);

  @override
  State<CurrentLocation> createState() => _CurrentLocationState();
}

class _CurrentLocationState extends State<CurrentLocation> {
  Future<void> checkLocationPermission() async {
    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission != LocationPermission.whileInUse &&
          permission != LocationPermission.always) {
        return;
      }
    }

    if (permission == LocationPermission.whileInUse ||
        permission == LocationPermission.always) {
      getCurrentLocation();
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    checkLocationPermission();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Dhaka",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        VERTICAL_GAP_12,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              PngAssets.LOCATION_1,
              height: 16,
              width: 16,
            ),
            HORIZONTAL_GAP_8,
            Text(
              "Current Location",
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ],
        ),
      ],
    );
  }

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
      print('Latitude: ${position.latitude}, Longitude: ${position.longitude}');
    } catch (e) {
      print('Error getting location: $e');
    }
  }

}
