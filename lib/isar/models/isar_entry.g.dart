// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isar_entry.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetIsarEntryCollection on Isar {
  IsarCollection<IsarEntry> get isarEntrys => this.collection();
}

const IsarEntrySchema = CollectionSchema(
  name: r'IsarEntry',
  id: -5874933647762898511,
  properties: {
    r'definitions': PropertySchema(
      id: 0,
      name: r'definitions',
      type: IsarType.stringList,
    ),
    r'word': PropertySchema(
      id: 1,
      name: r'word',
      type: IsarType.string,
    ),
    r'wordId': PropertySchema(
      id: 2,
      name: r'wordId',
      type: IsarType.string,
    )
  },
  estimateSize: _isarEntryEstimateSize,
  serialize: _isarEntrySerialize,
  deserialize: _isarEntryDeserialize,
  deserializeProp: _isarEntryDeserializeProp,
  idName: r'id',
  indexes: {
    r'wordId': IndexSchema(
      id: 2217755591053908536,
      name: r'wordId',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'wordId',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _isarEntryGetId,
  getLinks: _isarEntryGetLinks,
  attach: _isarEntryAttach,
  version: '3.1.0+1',
);

int _isarEntryEstimateSize(
  IsarEntry object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final list = object.definitions;
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
    final value = object.word;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.wordId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _isarEntrySerialize(
  IsarEntry object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeStringList(offsets[0], object.definitions);
  writer.writeString(offsets[1], object.word);
  writer.writeString(offsets[2], object.wordId);
}

IsarEntry _isarEntryDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IsarEntry();
  object.definitions = reader.readStringList(offsets[0]);
  object.id = id;
  object.word = reader.readStringOrNull(offsets[1]);
  object.wordId = reader.readStringOrNull(offsets[2]);
  return object;
}

P _isarEntryDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringList(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _isarEntryGetId(IsarEntry object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _isarEntryGetLinks(IsarEntry object) {
  return [];
}

void _isarEntryAttach(IsarCollection<dynamic> col, Id id, IsarEntry object) {
  object.id = id;
}

extension IsarEntryByIndex on IsarCollection<IsarEntry> {
  Future<IsarEntry?> getByWordId(String? wordId) {
    return getByIndex(r'wordId', [wordId]);
  }

  IsarEntry? getByWordIdSync(String? wordId) {
    return getByIndexSync(r'wordId', [wordId]);
  }

  Future<bool> deleteByWordId(String? wordId) {
    return deleteByIndex(r'wordId', [wordId]);
  }

  bool deleteByWordIdSync(String? wordId) {
    return deleteByIndexSync(r'wordId', [wordId]);
  }

  Future<List<IsarEntry?>> getAllByWordId(List<String?> wordIdValues) {
    final values = wordIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'wordId', values);
  }

  List<IsarEntry?> getAllByWordIdSync(List<String?> wordIdValues) {
    final values = wordIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'wordId', values);
  }

  Future<int> deleteAllByWordId(List<String?> wordIdValues) {
    final values = wordIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'wordId', values);
  }

  int deleteAllByWordIdSync(List<String?> wordIdValues) {
    final values = wordIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'wordId', values);
  }

  Future<Id> putByWordId(IsarEntry object) {
    return putByIndex(r'wordId', object);
  }

  Id putByWordIdSync(IsarEntry object, {bool saveLinks = true}) {
    return putByIndexSync(r'wordId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByWordId(List<IsarEntry> objects) {
    return putAllByIndex(r'wordId', objects);
  }

  List<Id> putAllByWordIdSync(List<IsarEntry> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'wordId', objects, saveLinks: saveLinks);
  }
}

extension IsarEntryQueryWhereSort
    on QueryBuilder<IsarEntry, IsarEntry, QWhere> {
  QueryBuilder<IsarEntry, IsarEntry, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension IsarEntryQueryWhere
    on QueryBuilder<IsarEntry, IsarEntry, QWhereClause> {
  QueryBuilder<IsarEntry, IsarEntry, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<IsarEntry, IsarEntry, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<IsarEntry, IsarEntry, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<IsarEntry, IsarEntry, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<IsarEntry, IsarEntry, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarEntry, IsarEntry, QAfterWhereClause> wordIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'wordId',
        value: [null],
      ));
    });
  }

  QueryBuilder<IsarEntry, IsarEntry, QAfterWhereClause> wordIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'wordId',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<IsarEntry, IsarEntry, QAfterWhereClause> wordIdEqualTo(
      String? wordId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'wordId',
        value: [wordId],
      ));
    });
  }

  QueryBuilder<IsarEntry, IsarEntry, QAfterWhereClause> wordIdNotEqualTo(
      String? wordId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'wordId',
              lower: [],
              upper: [wordId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'wordId',
              lower: [wordId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'wordId',
              lower: [wordId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'wordId',
              lower: [],
              upper: [wordId],
              includeUpper: false,
            ));
      }
    });
  }
}

extension IsarEntryQueryFilter
    on QueryBuilder<IsarEntry, IsarEntry, QFilterCondition> {
  QueryBuilder<IsarEntry, IsarEntry, QAfterFilterCondition>
      definitionsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'definitions',
      ));
    });
  }

  QueryBuilder<IsarEntry, IsarEntry, QAfterFilterCondition>
      definitionsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'definitions',
      ));
    });
  }

  QueryBuilder<IsarEntry, IsarEntry, QAfterFilterCondition>
      definitionsElementEqualTo(
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

  QueryBuilder<IsarEntry, IsarEntry, QAfterFilterCondition>
      definitionsElementGreaterThan(
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

  QueryBuilder<IsarEntry, IsarEntry, QAfterFilterCondition>
      definitionsElementLessThan(
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

  QueryBuilder<IsarEntry, IsarEntry, QAfterFilterCondition>
      definitionsElementBetween(
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

  QueryBuilder<IsarEntry, IsarEntry, QAfterFilterCondition>
      definitionsElementStartsWith(
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

  QueryBuilder<IsarEntry, IsarEntry, QAfterFilterCondition>
      definitionsElementEndsWith(
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

  QueryBuilder<IsarEntry, IsarEntry, QAfterFilterCondition>
      definitionsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'definitions',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEntry, IsarEntry, QAfterFilterCondition>
      definitionsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'definitions',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEntry, IsarEntry, QAfterFilterCondition>
      definitionsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'definitions',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarEntry, IsarEntry, QAfterFilterCondition>
      definitionsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'definitions',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarEntry, IsarEntry, QAfterFilterCondition>
      definitionsLengthEqualTo(int length) {
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

  QueryBuilder<IsarEntry, IsarEntry, QAfterFilterCondition>
      definitionsIsEmpty() {
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

  QueryBuilder<IsarEntry, IsarEntry, QAfterFilterCondition>
      definitionsIsNotEmpty() {
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

  QueryBuilder<IsarEntry, IsarEntry, QAfterFilterCondition>
      definitionsLengthLessThan(
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

  QueryBuilder<IsarEntry, IsarEntry, QAfterFilterCondition>
      definitionsLengthGreaterThan(
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

  QueryBuilder<IsarEntry, IsarEntry, QAfterFilterCondition>
      definitionsLengthBetween(
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

  QueryBuilder<IsarEntry, IsarEntry, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<IsarEntry, IsarEntry, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<IsarEntry, IsarEntry, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarEntry, IsarEntry, QAfterFilterCondition> idGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarEntry, IsarEntry, QAfterFilterCondition> idLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarEntry, IsarEntry, QAfterFilterCondition> idBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarEntry, IsarEntry, QAfterFilterCondition> wordIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'word',
      ));
    });
  }

  QueryBuilder<IsarEntry, IsarEntry, QAfterFilterCondition> wordIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'word',
      ));
    });
  }

  QueryBuilder<IsarEntry, IsarEntry, QAfterFilterCondition> wordEqualTo(
    String? value, {
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

  QueryBuilder<IsarEntry, IsarEntry, QAfterFilterCondition> wordGreaterThan(
    String? value, {
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

  QueryBuilder<IsarEntry, IsarEntry, QAfterFilterCondition> wordLessThan(
    String? value, {
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

  QueryBuilder<IsarEntry, IsarEntry, QAfterFilterCondition> wordBetween(
    String? lower,
    String? upper, {
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

  QueryBuilder<IsarEntry, IsarEntry, QAfterFilterCondition> wordStartsWith(
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

  QueryBuilder<IsarEntry, IsarEntry, QAfterFilterCondition> wordEndsWith(
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

  QueryBuilder<IsarEntry, IsarEntry, QAfterFilterCondition> wordContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'word',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEntry, IsarEntry, QAfterFilterCondition> wordMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'word',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEntry, IsarEntry, QAfterFilterCondition> wordIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'word',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarEntry, IsarEntry, QAfterFilterCondition> wordIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'word',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarEntry, IsarEntry, QAfterFilterCondition> wordIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'wordId',
      ));
    });
  }

  QueryBuilder<IsarEntry, IsarEntry, QAfterFilterCondition> wordIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'wordId',
      ));
    });
  }

  QueryBuilder<IsarEntry, IsarEntry, QAfterFilterCondition> wordIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'wordId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEntry, IsarEntry, QAfterFilterCondition> wordIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'wordId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEntry, IsarEntry, QAfterFilterCondition> wordIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'wordId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEntry, IsarEntry, QAfterFilterCondition> wordIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'wordId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEntry, IsarEntry, QAfterFilterCondition> wordIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'wordId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEntry, IsarEntry, QAfterFilterCondition> wordIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'wordId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEntry, IsarEntry, QAfterFilterCondition> wordIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'wordId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEntry, IsarEntry, QAfterFilterCondition> wordIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'wordId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEntry, IsarEntry, QAfterFilterCondition> wordIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'wordId',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarEntry, IsarEntry, QAfterFilterCondition> wordIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'wordId',
        value: '',
      ));
    });
  }
}

extension IsarEntryQueryObject
    on QueryBuilder<IsarEntry, IsarEntry, QFilterCondition> {}

extension IsarEntryQueryLinks
    on QueryBuilder<IsarEntry, IsarEntry, QFilterCondition> {}

extension IsarEntryQuerySortBy on QueryBuilder<IsarEntry, IsarEntry, QSortBy> {
  QueryBuilder<IsarEntry, IsarEntry, QAfterSortBy> sortByWord() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'word', Sort.asc);
    });
  }

  QueryBuilder<IsarEntry, IsarEntry, QAfterSortBy> sortByWordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'word', Sort.desc);
    });
  }

  QueryBuilder<IsarEntry, IsarEntry, QAfterSortBy> sortByWordId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wordId', Sort.asc);
    });
  }

  QueryBuilder<IsarEntry, IsarEntry, QAfterSortBy> sortByWordIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wordId', Sort.desc);
    });
  }
}

extension IsarEntryQuerySortThenBy
    on QueryBuilder<IsarEntry, IsarEntry, QSortThenBy> {
  QueryBuilder<IsarEntry, IsarEntry, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<IsarEntry, IsarEntry, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<IsarEntry, IsarEntry, QAfterSortBy> thenByWord() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'word', Sort.asc);
    });
  }

  QueryBuilder<IsarEntry, IsarEntry, QAfterSortBy> thenByWordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'word', Sort.desc);
    });
  }

  QueryBuilder<IsarEntry, IsarEntry, QAfterSortBy> thenByWordId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wordId', Sort.asc);
    });
  }

  QueryBuilder<IsarEntry, IsarEntry, QAfterSortBy> thenByWordIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wordId', Sort.desc);
    });
  }
}

extension IsarEntryQueryWhereDistinct
    on QueryBuilder<IsarEntry, IsarEntry, QDistinct> {
  QueryBuilder<IsarEntry, IsarEntry, QDistinct> distinctByDefinitions() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'definitions');
    });
  }

  QueryBuilder<IsarEntry, IsarEntry, QDistinct> distinctByWord(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'word', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarEntry, IsarEntry, QDistinct> distinctByWordId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'wordId', caseSensitive: caseSensitive);
    });
  }
}

extension IsarEntryQueryProperty
    on QueryBuilder<IsarEntry, IsarEntry, QQueryProperty> {
  QueryBuilder<IsarEntry, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<IsarEntry, List<String>?, QQueryOperations>
      definitionsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'definitions');
    });
  }

  QueryBuilder<IsarEntry, String?, QQueryOperations> wordProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'word');
    });
  }

  QueryBuilder<IsarEntry, String?, QQueryOperations> wordIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'wordId');
    });
  }
}
