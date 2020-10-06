/// coord : {"lon":35,"lat":77}
/// weather : [{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04n"}]
/// base : "stations"
/// main : {"temp":274.13,"feels_like":266.57,"temp_min":274.13,"temp_max":274.13,"pressure":1029,"humidity":89,"sea_level":1029,"grnd_level":1029}
/// visibility : 10000
/// wind : {"speed":7.83,"deg":148}
/// clouds : {"all":100}
/// dt : 1601920169
/// sys : {"sunrise":1601872746,"sunset":1601907440}
/// timezone : 7200
/// id : 0
/// name : ""
/// cod : 200

class WeatherResponseDTO {
  Coord _coord;
  List<Weather> _weather;
  String _base;
  Main _main;
  int _visibility;
  Wind _wind;
  Clouds _clouds;
  int _dt;
  Sys _sys;
  int _timezone;
  int _id;
  String _name;
  int _cod;

  Coord get coord => _coord;
  List<Weather> get weather => _weather;
  String get base => _base;
  Main get main => _main;
  int get visibility => _visibility;
  Wind get wind => _wind;
  Clouds get clouds => _clouds;
  int get dt => _dt;
  Sys get sys => _sys;
  int get timezone => _timezone;
  int get id => _id;
  String get name => _name;
  int get cod => _cod;

  WeatherResponseDTO({
      Coord coord, 
      List<Weather> weather, 
      String base, 
      Main main, 
      int visibility, 
      Wind wind, 
      Clouds clouds, 
      int dt, 
      Sys sys, 
      int timezone, 
      int id, 
      String name, 
      int cod}){
    _coord = coord;
    _weather = weather;
    _base = base;
    _main = main;
    _visibility = visibility;
    _wind = wind;
    _clouds = clouds;
    _dt = dt;
    _sys = sys;
    _timezone = timezone;
    _id = id;
    _name = name;
    _cod = cod;
}

  WeatherResponseDTO.fromJson(dynamic json) {
    _coord = json["coord"] != null ? Coord.fromJson(json["coord"]) : null;
    if (json["weather"] != null) {
      _weather = [];
      json["weather"].forEach((v) {
        _weather.add(Weather.fromJson(v));
      });
    }
    _base = json["base"];
    _main = json["main"] != null ? Main.fromJson(json["main"]) : null;
    _visibility = json["visibility"];
    _wind = json["wind"] != null ? Wind.fromJson(json["wind"]) : null;
    _clouds = json["clouds"] != null ? Clouds.fromJson(json["clouds"]) : null;
    _dt = json["dt"];
    _sys = json["sys"] != null ? Sys.fromJson(json["sys"]) : null;
    _timezone = json["timezone"];
    _id = json["id"];
    _name = json["name"];
    _cod = json["cod"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_coord != null) {
      map["coord"] = _coord.toJson();
    }
    if (_weather != null) {
      map["weather"] = _weather.map((v) => v.toJson()).toList();
    }
    map["base"] = _base;
    if (_main != null) {
      map["main"] = _main.toJson();
    }
    map["visibility"] = _visibility;
    if (_wind != null) {
      map["wind"] = _wind.toJson();
    }
    if (_clouds != null) {
      map["clouds"] = _clouds.toJson();
    }
    map["dt"] = _dt;
    if (_sys != null) {
      map["sys"] = _sys.toJson();
    }
    map["timezone"] = _timezone;
    map["id"] = _id;
    map["name"] = _name;
    map["cod"] = _cod;
    return map;
  }

}

/// sunrise : 1601872746
/// sunset : 1601907440

class Sys {
  int _sunrise;
  int _sunset;

  int get sunrise => _sunrise;
  int get sunset => _sunset;

  Sys({
      int sunrise, 
      int sunset}){
    _sunrise = sunrise;
    _sunset = sunset;
}

  Sys.fromJson(dynamic json) {
    _sunrise = json["sunrise"];
    _sunset = json["sunset"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["sunrise"] = _sunrise;
    map["sunset"] = _sunset;
    return map;
  }

}

/// all : 100

class Clouds {
  int _all;

  int get all => _all;

  Clouds({
      int all}){
    _all = all;
}

  Clouds.fromJson(dynamic json) {
    _all = json["all"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["all"] = _all;
    return map;
  }

}

/// speed : 7.83
/// deg : 148

class Wind {
  double _speed;
  int _deg;

  double get speed => _speed;
  int get deg => _deg;

  Wind({
      double speed, 
      int deg}){
    _speed = speed;
    _deg = deg;
}

  Wind.fromJson(dynamic json) {
    _speed = json["speed"];
    _deg = json["deg"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["speed"] = _speed;
    map["deg"] = _deg;
    return map;
  }

}

/// temp : 274.13
/// feels_like : 266.57
/// temp_min : 274.13
/// temp_max : 274.13
/// pressure : 1029
/// humidity : 89
/// sea_level : 1029
/// grnd_level : 1029

class Main {
  double _temp;
  double _feelsLike;
  double _tempMin;
  double _tempMax;
  int _pressure;
  int _humidity;
  int _seaLevel;
  int _grndLevel;

  double get temp => _temp;
  double get feelsLike => _feelsLike;
  double get tempMin => _tempMin;
  double get tempMax => _tempMax;
  int get pressure => _pressure;
  int get humidity => _humidity;
  int get seaLevel => _seaLevel;
  int get grndLevel => _grndLevel;

  Main({
      double temp, 
      double feelsLike, 
      double tempMin, 
      double tempMax, 
      int pressure, 
      int humidity, 
      int seaLevel, 
      int grndLevel}){
    _temp = temp;
    _feelsLike = feelsLike;
    _tempMin = tempMin;
    _tempMax = tempMax;
    _pressure = pressure;
    _humidity = humidity;
    _seaLevel = seaLevel;
    _grndLevel = grndLevel;
}

  Main.fromJson(dynamic json) {
    _temp = json["temp"];
    _feelsLike = json["feelsLike"];
    _tempMin = json["tempMin"];
    _tempMax = json["tempMax"];
    _pressure = json["pressure"];
    _humidity = json["humidity"];
    _seaLevel = json["seaLevel"];
    _grndLevel = json["grndLevel"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["temp"] = _temp;
    map["feelsLike"] = _feelsLike;
    map["tempMin"] = _tempMin;
    map["tempMax"] = _tempMax;
    map["pressure"] = _pressure;
    map["humidity"] = _humidity;
    map["seaLevel"] = _seaLevel;
    map["grndLevel"] = _grndLevel;
    return map;
  }

}

/// id : 804
/// main : "Clouds"
/// description : "overcast clouds"
/// icon : "04n"

class Weather {
  int _id;
  String _main;
  String _description;
  String _icon;

  int get id => _id;
  String get main => _main;
  String get description => _description;
  String get icon => _icon;

  Weather({
      int id, 
      String main, 
      String description, 
      String icon}){
    _id = id;
    _main = main;
    _description = description;
    _icon = icon;
}

  Weather.fromJson(dynamic json) {
    _id = json["id"];
    _main = json["main"];
    _description = json["description"];
    _icon = json["icon"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = _id;
    map["main"] = _main;
    map["description"] = _description;
    map["icon"] = _icon;
    return map;
  }

}

/// lon : 35
/// lat : 77

class Coord {
  int _lon;
  int _lat;

  int get lon => _lon;
  int get lat => _lat;

  Coord({
      int lon, 
      int lat}){
    _lon = lon;
    _lat = lat;
}

  Coord.fromJson(dynamic json) {
    _lon = json["lon"];
    _lat = json["lat"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["lon"] = _lon;
    map["lat"] = _lat;
    return map;
  }

}