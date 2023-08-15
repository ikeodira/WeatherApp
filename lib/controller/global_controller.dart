import 'package:geolocator/geolocator.dart';
import 'package:get/state_manager.dart';
import 'package:weathapp/api/fetch_weather.dart';
import 'package:weathapp/model/weather_data.dart';

class GlobalController extends GetxController {
  //create various variables
  final RxBool _isLoading = true.obs;
  final RxDouble _latitude = 0.0.obs;
  final RxDouble _longitude = 0.0.obs;

  //instance for them to be called
  RxBool checkLoading() => _isLoading;
  RxDouble getLatitude() => _latitude;
  RxDouble getLongitude() => _longitude;

  final weatherData = WeatherData().obs;

  WeatherData getData() {
    return weatherData.value;
  }

  @override
  void onInit() {
    super.onInit();
    if (_isLoading.isTrue) {
      getLocation();
      // getWeatherData();
    }
  }

  getLocation() async {
    bool isServiceEnabled;
    LocationPermission locationPermission;

    isServiceEnabled = await Geolocator.isLocationServiceEnabled();
    // return if service is not enabled
    if (!isServiceEnabled) {
      await Geolocator.openLocationSettings();
      // locationPermission = await Geolocator.requestPermission();
      // return locationPermission;
      // return Future.error("Location not enabled ");
    }

    //Status of permission
    locationPermission = await Geolocator.checkPermission();

    if (locationPermission == LocationPermission.deniedForever) {
      return Future.error("Location permission are denied forever ");
    } else if (locationPermission == LocationPermission.denied) {
      //request permission
      locationPermission = await Geolocator.requestPermission();
      if (locationPermission == LocationPermission.denied) {
        return Future.error("Location permission is denied");
      }
    }

    return await Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.high)
        .then((value) {
      _latitude.value = value.latitude;
      _longitude.value = value.longitude;
      print(_latitude.value);
      print(_longitude.value);
      _isLoading.value = false;

      // return FetchWeatherAPI()
      //     .processData(value.latitude, value.latitude)
      //     .then((value) {
      //   weatherData.value = value;
      //   _isLoading.value = false;
      // });
    });
  }
}
