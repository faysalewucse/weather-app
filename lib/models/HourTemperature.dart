import 'package:weather_app_steadfastit/models/Condition.dart';

class HourTemperature {
  int timeEpoch;
  String time;
  double tempC;
  double tempF;
  double isDay;
  Condition condition;
  double windMph;
  double windKph;
  double windDegree;
  String windDir;
  double pressureMb;
  double pressureIn;
  double precipMm;
  double precipIn;
  double snowCm;
  double humidity;
  double cloud;
  double feelslikeC;
  double feelslikeF;
  double windchillC;
  double windchillF;
  double heatindexC;
  double heatindexF;
  double dewpointC;
  double dewpointF;
  // double willItRain;
  double chanceOfRain;
  // double willItSnow;
  double chanceOfSnow;
  double visKm;
  double visMiles;
  double gustMph;
  double gustKph;
  // double uv;

  HourTemperature({
    required this.timeEpoch,
    required this.time,
    required this.tempC,
    required this.tempF,
    required this.isDay,
    required this.condition,
    required this.windMph,
    required this.windKph,
    required this.windDegree,
    required this.windDir,
    required this.pressureMb,
    required this.pressureIn,
    required this.precipMm,
    required this.precipIn,
    required this.snowCm,
    required this.humidity,
    required this.cloud,
    required this.feelslikeC,
    required this.feelslikeF,
    required this.windchillC,
    required this.windchillF,
    required this.heatindexC,
    required this.heatindexF,
    required this.dewpointC,
    required this.dewpointF,
    // required this.willItRain,
    required this.chanceOfRain,
    // required this.willItSnow,
    required this.chanceOfSnow,
    required this.visKm,
    required this.visMiles,
    required this.gustMph,
    required this.gustKph,
    // required this.uv,
  });


  factory HourTemperature.fromJson(Map<String, dynamic> json) => HourTemperature(
    timeEpoch: json['time_epoch'],
    time: json['time'],
    tempC: json['temp_c'].toDouble(),
    tempF: json['temp_f'].toDouble(),
    isDay: json['is_day'].toDouble(),
    condition: Condition.fromJson(json['condition']),
    windMph: json['wind_mph'].toDouble(),
    windKph: json['wind_kph'].toDouble(),
    windDegree: json['wind_degree'].toDouble(),
    windDir: json['wind_dir'],
    pressureMb: json['pressure_mb'].toDouble(),
    pressureIn: json['pressure_in'].toDouble(),
    precipMm: json['precip_mm'].toDouble(),
    precipIn: json['precip_in'].toDouble(),
    snowCm: json['snow_cm'].toDouble(),
    humidity: json['humidity'].toDouble(),
    cloud: json['cloud'].toDouble(),
    feelslikeC: json['feelslike_c'].toDouble(),
    feelslikeF: json['feelslike_f'].toDouble(),
    windchillC: json['windchill_c'].toDouble(),
    windchillF: json['windchill_f'].toDouble(),
    heatindexC: json['heatindex_c'].toDouble(),
    heatindexF: json['heatindex_f'].toDouble(),
    dewpointC: json['dewpoint_c'].toDouble(),
    dewpointF: json['dewpoint_f'].toDouble(),
    // willItRain: json['will_it_rain'].toDouble(),
    chanceOfRain: json['chance_of_rain'].toDouble(),
    // willItSnow: json['will_it_snow'].toDouble,
    chanceOfSnow: json['chance_of_snow'].toDouble(),
    visKm: json['vis_km'].toDouble(),
    visMiles: json['vis_miles'].toDouble(),
    gustMph: json['gust_mph'].toDouble(),
    gustKph: json['gust_kph'].toDouble(),
    // uv: json['uv'].toDouble(),
  );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['time_epoch'] = timeEpoch;
    data['time'] = time;
    data['temp_c'] = tempC;
    data['temp_f'] = tempF;
    data['is_day'] = isDay;
    data['condition'] = condition.toJson();
    data['wind_mph'] = windMph;
    data['wind_kph'] = windKph;
    data['wind_degree'] = windDegree;
    data['wind_dir'] = windDir;
    data['pressure_mb'] = pressureMb;
    data['pressure_in'] = pressureIn;
    data['precip_mm'] = precipMm;
    data['precip_in'] = precipIn;
    data['snow_cm'] = snowCm;
    data['humidity'] = humidity;
    data['cloud'] = cloud;
    data['feelslike_c'] = feelslikeC;
    data['feelslike_f'] = feelslikeF;
    data['windchill_c'] = windchillC;
    data['windchill_f'] = windchillF;
    data['heatindex_c'] = heatindexC;
    data['heatindex_f'] = heatindexF;
    data['dewpoint_c'] = dewpointC;
    data['dewpoint_f'] = dewpointF;
    // data['will_it_rain'] = willItRain;
    data['chance_of_rain'] = chanceOfRain;
    // data['will_it_snow'] = willItSnow;
    data['chance_of_snow'] = chanceOfSnow;
    data['vis_km'] = visKm;
    data['vis_miles'] = visMiles;
    data['gust_mph'] = gustMph;
    data['gust_kph'] = gustKph;
    // data['uv'] = uv;
    return data;
  }
}
