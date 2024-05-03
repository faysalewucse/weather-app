import 'package:weather_app_steadfastit/models/Condition.dart';

class Day {
  double maxtempC;
  double maxtempF;
  double mintempC;
  double mintempF;
  double avgtempC;
  double avgtempF;
  double maxwindMph;
  double maxwindKph;
  double totalprecipMm;
  double totalprecipIn;
  double totalsnowCm;
  double avgvisKm;
  double avgvisMiles;
  double avghumidity;
  double dailyWillItRain;
  double dailyChanceOfRain;
  double dailyWillItSnow;
  double dailyChanceOfSnow;
  Condition condition;
  double uv;

  Day({
    required this.maxtempC,
    required this.maxtempF,
    required this.mintempC,
    required this.mintempF,
    required this.avgtempC,
    required this.avgtempF,
    required this.maxwindMph,
    required this.maxwindKph,
    required this.totalprecipMm,
    required this.totalprecipIn,
    required this.totalsnowCm,
    required this.avgvisKm,
    required this.avgvisMiles,
    required this.avghumidity,
    required this.dailyWillItRain,
    required this.dailyChanceOfRain,
    required this.dailyWillItSnow,
    required this.dailyChanceOfSnow,
    required this.condition,
    required this.uv,
  });

  factory Day.fromJson(Map<String, dynamic> json) {
    return Day(
      maxtempC: json['maxtemp_c'].toDouble(),
      maxtempF: json['maxtemp_f'].toDouble(),
      mintempC: json['mintemp_c'].toDouble(),
      mintempF: json['mintemp_f'].toDouble(),
      avgtempC: json['avgtemp_c'].toDouble(),
      avgtempF: json['avgtemp_f'].toDouble(),
      maxwindMph: json['maxwind_mph'].toDouble(),
      maxwindKph: json['maxwind_kph'].toDouble(),
      totalprecipMm: json['totalprecip_mm'].toDouble(),
      totalprecipIn: json['totalprecip_in'].toDouble(),
      totalsnowCm: json['totalsnow_cm'].toDouble(),
      avgvisKm: json['avgvis_km'].toDouble(),
      avgvisMiles: json['avgvis_miles'].toDouble(),
      avghumidity: json['avghumidity'].toDouble(),
      dailyWillItRain: json['daily_will_it_rain'].toDouble(),
      dailyChanceOfRain: json['daily_chance_of_rain'].toDouble(),
      dailyWillItSnow: json['daily_will_it_snow'].toDouble(),
      dailyChanceOfSnow: json['daily_chance_of_snow'].toDouble(),
      condition: Condition.fromJson(json['condition']),
      uv: json['uv'].toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'maxtemp_c': maxtempC,
      'maxtemp_f': maxtempF,
      'mintemp_c': mintempC,
      'mintemp_f': mintempF,
      'avgtemp_c': avgtempC,
      'avgtemp_f': avgtempF,
      'maxwind_mph': maxwindMph,
      'maxwind_kph': maxwindKph,
      'totalprecip_mm': totalprecipMm,
      'totalprecip_in': totalprecipIn,
      'totalsnow_cm': totalsnowCm,
      'avgvis_km': avgvisKm,
      'avgvis_miles': avgvisMiles,
      'avghumidity': avghumidity,
      'daily_will_it_rain': dailyWillItRain,
      'daily_chance_of_rain': dailyChanceOfRain,
      'daily_will_it_snow': dailyWillItSnow,
      'daily_chance_of_snow': dailyChanceOfSnow,
      'condition': condition.toJson(),
      'uv': uv,
    };
  }
}
