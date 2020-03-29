// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attributes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Covid _$CovidFromJson(Map<String, dynamic> json) {
  return Covid(
    attributes: json['attributes'] == null
        ? null
        : Attributes.fromJson(json['attributes'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CovidToJson(Covid instance) => <String, dynamic>{
      'attributes': instance.attributes,
    };

Attributes _$AttributesFromJson(Map<String, dynamic> json) {
  return Attributes(
    fID: json['FID'] as int,
    kodeProvi: json['kodeProvi'] as int,
    provinsi: json['Provinsi'] as String,
    kasusPosi: json['Kasus_Posi'] as int,
    kasusSemb: json['Kasus_Semb'] as int,
    kasusMeni: json['Kasus_meni'] as int,
  );
}

Map<String, dynamic> _$AttributesToJson(Attributes instance) =>
    <String, dynamic>{
      'FID': instance.fID,
      'kodeProvi': instance.kodeProvi,
      'Provinsi': instance.provinsi,
      'Kasus_Posi': instance.kasusPosi,
      'Kasus_Semb': instance.kasusSemb,
      'Kasus_meni': instance.kasusMeni,
    };
