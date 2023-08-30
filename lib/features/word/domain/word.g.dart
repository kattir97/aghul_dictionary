// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Word _$$_WordFromJson(Map<String, dynamic> json) => _$_Word(
      word: json['word'] as String,
      definitions: (json['definitions'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      partOfSpeech: json['partOfSpeech'] as String,
      id: json['id'] as String?,
      ergative: json['ergative'] as String?,
      examples: (json['examples'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      pronunciation: json['pronunciation'] as String?,
    );

Map<String, dynamic> _$$_WordToJson(_$_Word instance) => <String, dynamic>{
      'word': instance.word,
      'definitions': instance.definitions,
      'partOfSpeech': instance.partOfSpeech,
      'id': instance.id,
      'ergative': instance.ergative,
      'examples': instance.examples,
      'pronunciation': instance.pronunciation,
    };
