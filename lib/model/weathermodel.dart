class WeatherModel {
    String cod;
    int message;
    int cnt;
    List<ListElement> list;
    City city;

    WeatherModel({
        required this.cod,
        required this.message,
        required this.cnt,
        required this.list,
        required this.city,
    });

}

class City {
    int id;
    String name;
    Coord coord;
    String country;
    int population;
    int timezone;
    int sunrise;
    int sunset;

    City({
        required this.id,
        required this.name,
        required this.coord,
        required this.country,
        required this.population,
        required this.timezone,
        required this.sunrise,
        required this.sunset,
    });

}

class Coord {
    double lat;
    double lon;

    Coord({
        required this.lat,
        required this.lon,
    });

}

class ListElement {
    int dt;
    MainClass main;
    List<Weather> weather;
    Clouds clouds;
    Wind wind;
    int visibility;
    double pop;
    Sys sys;
    DateTime dtTxt;
    Rain? rain;

    ListElement({
        required this.dt,
        required this.main,
        required this.weather,
        required this.clouds,
        required this.wind,
        required this.visibility,
        required this.pop,
        required this.sys,
        required this.dtTxt,
        this.rain,
    });

}

class Clouds {
    int all;

    Clouds({
        required this.all,
    });

}

class MainClass {
    double temp;
    double feelsLike;
    double tempMin;
    double tempMax;
    int pressure;
    int seaLevel;
    int grndLevel;
    int humidity;
    double tempKf;

    MainClass({
        required this.temp,
        required this.feelsLike,
        required this.tempMin,
        required this.tempMax,
        required this.pressure,
        required this.seaLevel,
        required this.grndLevel,
        required this.humidity,
        required this.tempKf,
    });

}

class Rain {
    double the3H;

    Rain({
        required this.the3H,
    });

}

class Sys {
    Pod pod;

    Sys({
        required this.pod,
    });

}

enum Pod {
    D,
    N
}

class Weather {
    int id;
    MainEnum main;
    Description description;
    String icon;

    Weather({
        required this.id,
        required this.main,
        required this.description,
        required this.icon,
    });

}

enum Description {
    BROKEN_CLOUDS,
    FEW_CLOUDS,
    LIGHT_RAIN,
    OVERCAST_CLOUDS,
    SCATTERED_CLOUDS
}

enum MainEnum {
    CLOUDS,
    RAIN
}

class Wind {
    double speed;
    int deg;
    double gust;

    Wind({
        required this.speed,
        required this.deg,
        required this.gust,
    });

}
