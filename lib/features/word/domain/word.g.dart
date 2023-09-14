// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetWordCollection on Isar {
  IsarCollection<Word> get words => this.collection();
}

const WordSchema = CollectionSchema(
  name: r'Word',
  id: 2997905348638732671,
  properties: {
    r'createdAt': PropertySchema(
      id: 0,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'definitions': PropertySchema(
      id: 1,
      name: r'definitions',
      type: IsarType.stringList,
    ),
    r'ergative': PropertySchema(
      id: 2,
      name: r'ergative',
      type: IsarType.string,
    ),
    r'examples': PropertySchema(
      id: 3,
      name: r'examples',
      type: IsarType.stringList,
    ),
    r'id': PropertySchema(
      id: 4,
      name: r'id',
      type: IsarType.string,
    ),
    r'partOfSpeech': PropertySchema(
      id: 5,
      name: r'partOfSpeech',
      type: IsarType.string,
    ),
    r'pronunciation': PropertySchema(
      id: 6,
      name: r'pronunciation',
      type: IsarType.string,
    ),
    r'word': PropertySchema(
      id: 7,
      name: r'word',
      type: IsarType.string,
    )
  },
  estimateSize: _wordEstimateSize,
  serialize: _wordSerialize,
  deserialize: _wordDeserialize,
  deserializeProp: _wordDeserializeProp,
  idName: r'isarId',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _wordGetId,
  getLinks: _wordGetLinks,
  attach: _wordAttach,
  version: '3.1.0+1',
);

int _wordEstimateSize(
  Word object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.definitions.length * 3;
  {
    for (var i = 0; i < object.definitions.length; i++) {
      final value = object.definitions[i];
      bytesCount += value.length * 3;
    }
  }
  {
    final value = object.ergative;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.examples;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final value = object.id;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.partOfSpeech.length * 3;
  {
    final value = object.pronunciation;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.word.length * 3;
  return bytesCount;
}

void _wordSerialize(
  Word object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.createdAt);
  writer.writeStringList(offsets[1], object.definitions);
  writer.writeString(offsets[2], object.ergative);
  writer.writeStringList(offsets[3], object.examples);
  writer.writeString(offsets[4], object.id);
  writer.writeString(offsets[5], object.partOfSpeech);
  writer.writeString(offsets[6], object.pronunciation);
  writer.writeString(offsets[7], object.word);
}

Word _wordDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Word(
    createdAt: reader.readDateTimeOrNull(offsets[0]),
    definitions: reader.readStringList(offsets[1]) ?? [],
    ergative: reader.readStringOrNull(offsets[2]),
    examples: reader.readStringList(offsets[3]),
    id: reader.readStringOrNull(offsets[4]),
    partOfSpeech: reader.readString(offsets[5]),
    pronunciation: reader.readStringOrNull(offsets[6]),
    word: reader.readString(offsets[7]),
  );
  return object;
}

P _wordDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 1:
      return (reader.readStringList(offset) ?? []) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringList(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _wordGetId(Word object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _wordGetLinks(Word object) {
  return [];
}

void _wordAttach(IsarCollection<dynamic> col, Id id, Word object) {}

extension WordQueryWhereSort on QueryBuilder<Word, Word, QWhere> {
  QueryBuilder<Word, Word, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension WordQueryWhere on QueryBuilder<Word, Word, QWhereClause> {
  QueryBuilder<Word, Word, QAfterWhereClause> isarIdEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterWhereClause> isarIdNotEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Word, Word, QAfterWhereClause> isarIdGreaterThan(Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<Word, Word, QAfterWhereClause> isarIdLessThan(Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<Word, Word, QAfterWhereClause> isarIdBetween(
    Id lowerIsarId,
    Id upperIsarId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIsarId,
        includeLower: includeLower,
        upper: upperIsarId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension WordQueryFilter on QueryBuilder<Word, Word, QFilterCondition> {
  QueryBuilder<Word, Word, QAfterFilterCondition> createdAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> createdAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> createdAtEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> createdAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> createdAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> createdAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> definitionsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'definitions',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> definitionsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'definitions',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> definitionsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'definitions',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> definitionsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'definitions',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> definitionsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'definitions',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> definitionsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'definitions',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> definitionsElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'definitions',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> definitionsElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'definitions',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> definitionsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'definitions',
        value: '',
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition>
      definitionsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'definitions',
        value: '',
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> definitionsLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'definitions',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> definitionsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'definitions',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> definitionsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'definitions',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> definitionsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'definitions',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> definitionsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'definitions',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> definitionsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'definitions',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> ergativeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ergative',
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> ergativeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ergative',
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> ergativeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ergative',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> ergativeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ergative',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> ergativeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ergative',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> ergativeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ergative',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> ergativeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ergative',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> ergativeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ergative',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> ergativeContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ergative',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> ergativeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ergative',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> ergativeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ergative',
        value: '',
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> ergativeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ergative',
        value: '',
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> examplesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'examples',
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> examplesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'examples',
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> examplesElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'examples',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> examplesElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'examples',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> examplesElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'examples',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> examplesElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'examples',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> examplesElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'examples',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> examplesElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'examples',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> examplesElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'examples',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> examplesElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'examples',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> examplesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'examples',
        value: '',
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> examplesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'examples',
        value: '',
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> examplesLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'examples',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> examplesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'examples',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> examplesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'examples',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> examplesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'examples',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> examplesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'examples',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> examplesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'examples',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> idEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> idGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> idLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> idBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> idStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> idEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> idContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> idMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'id',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> isarIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> isarIdGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> isarIdLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> isarIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isarId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> partOfSpeechEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'partOfSpeech',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> partOfSpeechGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'partOfSpeech',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> partOfSpeechLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'partOfSpeech',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> partOfSpeechBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'partOfSpeech',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> partOfSpeechStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'partOfSpeech',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> partOfSpeechEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'partOfSpeech',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> partOfSpeechContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'partOfSpeech',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> partOfSpeechMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'partOfSpeech',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> partOfSpeechIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'partOfSpeech',
        value: '',
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> partOfSpeechIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'partOfSpeech',
        value: '',
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> pronunciationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'pronunciation',
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> pronunciationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'pronunciation',
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> pronunciationEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pronunciation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> pronunciationGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pronunciation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> pronunciationLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pronunciation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> pronunciationBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pronunciation',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> pronunciationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'pronunciation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> pronunciationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'pronunciation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> pronunciationContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'pronunciation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> pronunciationMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'pronunciation',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> pronunciationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pronunciation',
        value: '',
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> pronunciationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'pronunciation',
        value: '',
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> wordEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'word',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> wordGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'word',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> wordLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'word',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> wordBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'word',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> wordStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'word',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> wordEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'word',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> wordContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'word',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> wordMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'word',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> wordIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'word',
        value: '',
      ));
    });
  }

  QueryBuilder<Word, Word, QAfterFilterCondition> wordIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'word',
        value: '',
      ));
    });
  }
}

extension WordQueryObject on QueryBuilder<Word, Word, QFilterCondition> {}

extension WordQueryLinks on QueryBuilder<Word, Word, QFilterCondition> {}

extension WordQuerySortBy on QueryBuilder<Word, Word, QSortBy> {
  QueryBuilder<Word, Word, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<Word, Word, QAfterSortBy> sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<Word, Word, QAfterSortBy> sortByErgative() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ergative', Sort.asc);
    });
  }

  QueryBuilder<Word, Word, QAfterSortBy> sortByErgativeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ergative', Sort.desc);
    });
  }

  QueryBuilder<Word, Word, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Word, Word, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Word, Word, QAfterSortBy> sortByPartOfSpeech() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partOfSpeech', Sort.asc);
    });
  }

  QueryBuilder<Word, Word, QAfterSortBy> sortByPartOfSpeechDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partOfSpeech', Sort.desc);
    });
  }

  QueryBuilder<Word, Word, QAfterSortBy> sortByPronunciation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pronunciation', Sort.asc);
    });
  }

  QueryBuilder<Word, Word, QAfterSortBy> sortByPronunciationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pronunciation', Sort.desc);
    });
  }

  QueryBuilder<Word, Word, QAfterSortBy> sortByWord() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'word', Sort.asc);
    });
  }

  QueryBuilder<Word, Word, QAfterSortBy> sortByWordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'word', Sort.desc);
    });
  }
}

extension WordQuerySortThenBy on QueryBuilder<Word, Word, QSortThenBy> {
  QueryBuilder<Word, Word, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<Word, Word, QAfterSortBy> thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<Word, Word, QAfterSortBy> thenByErgative() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ergative', Sort.asc);
    });
  }

  QueryBuilder<Word, Word, QAfterSortBy> thenByErgativeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ergative', Sort.desc);
    });
  }

  QueryBuilder<Word, Word, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Word, Word, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Word, Word, QAfterSortBy> thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<Word, Word, QAfterSortBy> thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<Word, Word, QAfterSortBy> thenByPartOfSpeech() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partOfSpeech', Sort.asc);
    });
  }

  QueryBuilder<Word, Word, QAfterSortBy> thenByPartOfSpeechDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partOfSpeech', Sort.desc);
    });
  }

  QueryBuilder<Word, Word, QAfterSortBy> thenByPronunciation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pronunciation', Sort.asc);
    });
  }

  QueryBuilder<Word, Word, QAfterSortBy> thenByPronunciationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pronunciation', Sort.desc);
    });
  }

  QueryBuilder<Word, Word, QAfterSortBy> thenByWord() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'word', Sort.asc);
    });
  }

  QueryBuilder<Word, Word, QAfterSortBy> thenByWordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'word', Sort.desc);
    });
  }
}

extension WordQueryWhereDistinct on QueryBuilder<Word, Word, QDistinct> {
  QueryBuilder<Word, Word, QDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<Word, Word, QDistinct> distinctByDefinitions() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'definitions');
    });
  }

  QueryBuilder<Word, Word, QDistinct> distinctByErgative(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ergative', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Word, Word, QDistinct> distinctByExamples() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'examples');
    });
  }

  QueryBuilder<Word, Word, QDistinct> distinctById(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Word, Word, QDistinct> distinctByPartOfSpeech(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'partOfSpeech', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Word, Word, QDistinct> distinctByPronunciation(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pronunciation',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Word, Word, QDistinct> distinctByWord(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'word', caseSensitive: caseSensitive);
    });
  }
}

extension WordQueryProperty on QueryBuilder<Word, Word, QQueryProperty> {
  QueryBuilder<Word, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<Word, DateTime?, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<Word, List<String>, QQueryOperations> definitionsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'definitions');
    });
  }

  QueryBuilder<Word, String?, QQueryOperations> ergativeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ergative');
    });
  }

  QueryBuilder<Word, List<String>?, QQueryOperations> examplesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'examples');
    });
  }

  QueryBuilder<Word, String?, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Word, String, QQueryOperations> partOfSpeechProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'partOfSpeech');
    });
  }

  QueryBuilder<Word, String?, QQueryOperations> pronunciationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pronunciation');
    });
  }

  QueryBuilder<Word, String, QQueryOperations> wordProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'word');
    });
  }
}

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
      createdAt: const ServerTimestampConverter().fromJson(json['createdAt']),
    );

Map<String, dynamic> _$$_WordToJson(_$_Word instance) => <String, dynamic>{
      'word': instance.word,
      'definitions': instance.definitions,
      'partOfSpeech': instance.partOfSpeech,
      'id': instance.id,
      'ergative': instance.ergative,
      'examples': instance.examples,
      'pronunciation': instance.pronunciation,
      'createdAt': const ServerTimestampConverter().toJson(instance.createdAt),
    };
