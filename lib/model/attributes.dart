import 'package:json_annotation/json_annotation.dart';

part 'attributes.g.dart';

@JsonSerializable()
class Covid {
  @JsonKey(name: 'attributes')
  Attributes attributes;

  Covid({this.attributes});

  factory Covid.fromJson(Map<String, dynamic> json) => _$CovidFromJson(json);

  Map<String, dynamic> toJson() => _$CovidToJson(this);
}

@JsonSerializable()
class Attributes {
  @JsonKey(name: 'FID')
  int fID;
  @JsonKey(name: 'kodeProvi')
  int kodeProvi;
  @JsonKey(name: 'Provinsi')
  String provinsi;
  @JsonKey(name: 'Kasus_Posi')
  int kasusPosi;
  @JsonKey(name: 'Kasus_Semb')
  int kasusSemb;
  @JsonKey(name: 'Kasus_meni')
  int kasusMeni;

  Attributes(
      {this.fID,
      this.kodeProvi,
      this.provinsi,
      this.kasusPosi,
      this.kasusSemb,
      this.kasusMeni});

  factory Attributes.fromJson(Map<String, dynamic> json) => _$AttributesFromJson(json);

  Map<String, dynamic> toJson() => _$AttributesToJson(this);
}
