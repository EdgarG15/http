class RegionalBloc {
  RegionalBloc({
    this.acronym,
    this.name,
    this.otherNames,
  });

  String? acronym;
  String? name;
  List<String>? otherNames;

  factory RegionalBloc.fromJson(Map<String, dynamic> json) => RegionalBloc(
        acronym: json["acronym"],
        name: json["name"],
        otherNames: List<String>.from(json["otherNames"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "acronym": acronym,
        "name": name,
        "otherNames": List<dynamic>.from(otherNames!.map((x) => x)),
      };
}
