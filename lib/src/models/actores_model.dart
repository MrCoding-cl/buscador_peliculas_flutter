class ActoresModel {
  int id;
  List<Cast> cast;
  List<Crew> crew;

  ActoresModel({
      this.id, 
      this.cast, 
      this.crew});

  ActoresModel.fromJson(dynamic json) {
    id = json["id"];
    if (json["cast"] != null) {
      cast = [];
      json["cast"].forEach((v) {
        cast.add(Cast.fromJson(v));
      });
    }
    if (json["crew"] != null) {
      crew = [];
      json["crew"].forEach((v) {
        crew.add(Crew.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = id;
    if (cast != null) {
      map["cast"] = cast.map((v) => v.toJson()).toList();
    }
    if (crew != null) {
      map["crew"] = crew.map((v) => v.toJson()).toList();
    }
    return map;
  }



}

class Crew {
  String creditId;
  String department;
  int gender;
  int id;
  String job;
  String name;
  String profilePath;

  Crew({
      this.creditId, 
      this.department, 
      this.gender, 
      this.id, 
      this.job, 
      this.name, 
      this.profilePath});

  Crew.fromJson(dynamic json) {
    creditId = json["creditId"];
    department = json["department"];
    gender = json["gender"];
    id = json["id"];
    job = json["job"];
    name = json["name"];
    profilePath = json["profilePath"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["creditId"] = creditId;
    map["department"] = department;
    map["gender"] = gender;
    map["id"] = id;
    map["job"] = job;
    map["name"] = name;
    map["profilePath"] = profilePath;
    return map;
  }

}

class Cast {
  int castId;
  String character;
  String creditId;
  int gender;
  int id;
  String name;
  int order;
  String profilePath;

  Cast({
      this.castId,
      this.character,
      this.creditId,
      this.gender,
      this.id,
      this.name,
      this.order,
      this.profilePath});

  Cast.fromJson(dynamic json) {
    castId = json["castId"];
    character = json["character"];
    creditId = json["creditId"];
    gender = json["gender"];
    id = json["id"];
    name = json["name"];
    order = json["order"];
    profilePath = json["profile_path"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["castId"] = castId;
    map["character"] = character;
    map["creditId"] = creditId;
    map["gender"] = gender;
    map["id"] = id;
    map["name"] = name;
    map["order"] = order;
    map["profilePath"] = profilePath;
    return map;
  }

  getFoto() {

    if ( profilePath == null ) {
      return 'https://lh3.googleusercontent.com/proxy/HOYlSdyvWhqRV5he3GhDjad3gmm9ghjWAc-LJfta6OjFcWtu5eMRhi0P8wPzl7824c-0GGxaD9_RMHjMC_21M2BwH4hsb7yxZJeB1fe8m0jy_FURh-LlEyGXUvAq';
    } else {
      return 'https://image.tmdb.org/t/p/w500/$profilePath';
    }

  }

}
