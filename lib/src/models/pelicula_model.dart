import 'dart:io';

class Peliculas {

  List<Pelicula> items = new List();

  Peliculas();

  Peliculas.fromJsonList( List<dynamic> jsonList  ) {

    if ( jsonList == null ) return;

    for ( var item in jsonList  ) {
      final pelicula = new Pelicula.fromJson(item);
      items.add( pelicula );
    }

  }

}

class Pelicula {
  double _popularity;
  int _voteCount;
  bool _video;
  String _posterPath;
  int _id;
  bool _adult;
  String _backdropPath;
  String _originalLanguage;
  String _originalTitle;
  List<int> _genreIds;
  String _title;
  double _voteAverage;
  String _overview;
  String _releaseDate;

  double get popularity => _popularity;
  int get voteCount => _voteCount;
  bool get video => _video;
  String get posterPath => _posterPath;
  int get id => _id;
  bool get adult => _adult;
  String get backdropPath => _backdropPath;
  String get originalLanguage => _originalLanguage;
  String get originalTitle => _originalTitle;
  List<int> get genreIds => _genreIds;
  String get title => _title;
  double get voteAverage => _voteAverage;
  String get overview => _overview;
  String get releaseDate => _releaseDate;

  Pelicula({
      double popularity, 
      int voteCount, 
      bool video, 
      String posterPath, 
      int id, 
      bool adult, 
      String backdropPath, 
      String originalLanguage, 
      String originalTitle, 
      List<int> genreIds, 
      String title, 
      double voteAverage, 
      String overview, 
      String releaseDate}){
    _popularity = popularity;
    _voteCount = voteCount;
    _video = video;
    _posterPath = posterPath;
    _id = id;
    _adult = adult;
    _backdropPath = backdropPath;
    _originalLanguage = originalLanguage;
    _originalTitle = originalTitle;
    _genreIds = genreIds;
    _title = title;
    _voteAverage = voteAverage;
    _overview = overview;
    _releaseDate = releaseDate;
}

  Pelicula.fromJson(dynamic json) {
    _popularity = json["popularity"];
    _voteCount = json["voteCount"];
    _video = json["video"];
    _posterPath = json["posterPath"];
    _id = json["id"];
    _adult = json["adult"];
    _backdropPath = json["backdropPath"];
    _originalLanguage = json["originalLanguage"];
    _originalTitle = json["originalTitle"];
    _genreIds = json["genreIds"] != null ? json["genreIds"].cast<int>() : [];
    _title = json["title"];
    _voteAverage = json["voteAverage"];
    _overview = json["overview"];
    _releaseDate = json["releaseDate"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["popularity"] = _popularity;
    map["voteCount"] = _voteCount;
    map["video"] = _video;
    map["posterPath"] = _posterPath;
    map["id"] = _id;
    map["adult"] = _adult;
    map["backdropPath"] = _backdropPath;
    map["originalLanguage"] = _originalLanguage;
    map["originalTitle"] = _originalTitle;
    map["genreIds"] = _genreIds;
    map["title"] = _title;
    map["voteAverage"] = _voteAverage;
    map["overview"] = _overview;
    map["releaseDate"] = _releaseDate;
    return map;
  }
  getPosterImg(){
    if (posterPath==null){
      return 'https://image.freepik.com/foto-gratis/pared-gris-habitacion-vacia-piso-concreto_53876-88447.jpg';
    }
    else{
      return 'https://image.tmdb.org/t/p/w500/$posterPath';
    }

  }

}