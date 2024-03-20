// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mood_record_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetMoodRecordModelCollection on Isar {
  IsarCollection<MoodRecordModel> get moodRecordModels => this.collection();
}

const MoodRecordModelSchema = CollectionSchema(
  name: r'MoodRecordModel',
  id: -2882114041655767330,
  properties: {
    r'comment': PropertySchema(
      id: 0,
      name: r'comment',
      type: IsarType.string,
    ),
    r'date': PropertySchema(
      id: 1,
      name: r'date',
      type: IsarType.dateTime,
    ),
    r'moodType': PropertySchema(
      id: 2,
      name: r'moodType',
      type: IsarType.byte,
      enumMap: _MoodRecordModelmoodTypeEnumValueMap,
    )
  },
  estimateSize: _moodRecordModelEstimateSize,
  serialize: _moodRecordModelSerialize,
  deserialize: _moodRecordModelDeserialize,
  deserializeProp: _moodRecordModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _moodRecordModelGetId,
  getLinks: _moodRecordModelGetLinks,
  attach: _moodRecordModelAttach,
  version: '3.1.0+1',
);

int _moodRecordModelEstimateSize(
  MoodRecordModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.comment;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _moodRecordModelSerialize(
  MoodRecordModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.comment);
  writer.writeDateTime(offsets[1], object.date);
  writer.writeByte(offsets[2], object.moodType.index);
}

MoodRecordModel _moodRecordModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MoodRecordModel(
    comment: reader.readStringOrNull(offsets[0]),
    date: reader.readDateTime(offsets[1]),
    moodType: _MoodRecordModelmoodTypeValueEnumMap[
            reader.readByteOrNull(offsets[2])] ??
        MoodType.veryBad,
  );
  object.id = id;
  return object;
}

P _moodRecordModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readDateTime(offset)) as P;
    case 2:
      return (_MoodRecordModelmoodTypeValueEnumMap[
              reader.readByteOrNull(offset)] ??
          MoodType.veryBad) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _MoodRecordModelmoodTypeEnumValueMap = {
  'veryBad': 0,
  'bad': 1,
  'normal': 2,
  'good': 3,
};
const _MoodRecordModelmoodTypeValueEnumMap = {
  0: MoodType.veryBad,
  1: MoodType.bad,
  2: MoodType.normal,
  3: MoodType.good,
};

Id _moodRecordModelGetId(MoodRecordModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _moodRecordModelGetLinks(MoodRecordModel object) {
  return [];
}

void _moodRecordModelAttach(
    IsarCollection<dynamic> col, Id id, MoodRecordModel object) {
  object.id = id;
}

extension MoodRecordModelQueryWhereSort
    on QueryBuilder<MoodRecordModel, MoodRecordModel, QWhere> {
  QueryBuilder<MoodRecordModel, MoodRecordModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension MoodRecordModelQueryWhere
    on QueryBuilder<MoodRecordModel, MoodRecordModel, QWhereClause> {
  QueryBuilder<MoodRecordModel, MoodRecordModel, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<MoodRecordModel, MoodRecordModel, QAfterWhereClause>
      idNotEqualTo(Id id) {
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

  QueryBuilder<MoodRecordModel, MoodRecordModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<MoodRecordModel, MoodRecordModel, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<MoodRecordModel, MoodRecordModel, QAfterWhereClause> idBetween(
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
}

extension MoodRecordModelQueryFilter
    on QueryBuilder<MoodRecordModel, MoodRecordModel, QFilterCondition> {
  QueryBuilder<MoodRecordModel, MoodRecordModel, QAfterFilterCondition>
      commentIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'comment',
      ));
    });
  }

  QueryBuilder<MoodRecordModel, MoodRecordModel, QAfterFilterCondition>
      commentIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'comment',
      ));
    });
  }

  QueryBuilder<MoodRecordModel, MoodRecordModel, QAfterFilterCondition>
      commentEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'comment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MoodRecordModel, MoodRecordModel, QAfterFilterCondition>
      commentGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'comment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MoodRecordModel, MoodRecordModel, QAfterFilterCondition>
      commentLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'comment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MoodRecordModel, MoodRecordModel, QAfterFilterCondition>
      commentBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'comment',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MoodRecordModel, MoodRecordModel, QAfterFilterCondition>
      commentStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'comment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MoodRecordModel, MoodRecordModel, QAfterFilterCondition>
      commentEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'comment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MoodRecordModel, MoodRecordModel, QAfterFilterCondition>
      commentContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'comment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MoodRecordModel, MoodRecordModel, QAfterFilterCondition>
      commentMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'comment',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MoodRecordModel, MoodRecordModel, QAfterFilterCondition>
      commentIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'comment',
        value: '',
      ));
    });
  }

  QueryBuilder<MoodRecordModel, MoodRecordModel, QAfterFilterCondition>
      commentIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'comment',
        value: '',
      ));
    });
  }

  QueryBuilder<MoodRecordModel, MoodRecordModel, QAfterFilterCondition>
      dateEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<MoodRecordModel, MoodRecordModel, QAfterFilterCondition>
      dateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<MoodRecordModel, MoodRecordModel, QAfterFilterCondition>
      dateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<MoodRecordModel, MoodRecordModel, QAfterFilterCondition>
      dateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'date',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MoodRecordModel, MoodRecordModel, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MoodRecordModel, MoodRecordModel, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
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

  QueryBuilder<MoodRecordModel, MoodRecordModel, QAfterFilterCondition>
      idLessThan(
    Id value, {
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

  QueryBuilder<MoodRecordModel, MoodRecordModel, QAfterFilterCondition>
      idBetween(
    Id lower,
    Id upper, {
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

  QueryBuilder<MoodRecordModel, MoodRecordModel, QAfterFilterCondition>
      moodTypeEqualTo(MoodType value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'moodType',
        value: value,
      ));
    });
  }

  QueryBuilder<MoodRecordModel, MoodRecordModel, QAfterFilterCondition>
      moodTypeGreaterThan(
    MoodType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'moodType',
        value: value,
      ));
    });
  }

  QueryBuilder<MoodRecordModel, MoodRecordModel, QAfterFilterCondition>
      moodTypeLessThan(
    MoodType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'moodType',
        value: value,
      ));
    });
  }

  QueryBuilder<MoodRecordModel, MoodRecordModel, QAfterFilterCondition>
      moodTypeBetween(
    MoodType lower,
    MoodType upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'moodType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension MoodRecordModelQueryObject
    on QueryBuilder<MoodRecordModel, MoodRecordModel, QFilterCondition> {}

extension MoodRecordModelQueryLinks
    on QueryBuilder<MoodRecordModel, MoodRecordModel, QFilterCondition> {}

extension MoodRecordModelQuerySortBy
    on QueryBuilder<MoodRecordModel, MoodRecordModel, QSortBy> {
  QueryBuilder<MoodRecordModel, MoodRecordModel, QAfterSortBy> sortByComment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'comment', Sort.asc);
    });
  }

  QueryBuilder<MoodRecordModel, MoodRecordModel, QAfterSortBy>
      sortByCommentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'comment', Sort.desc);
    });
  }

  QueryBuilder<MoodRecordModel, MoodRecordModel, QAfterSortBy> sortByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<MoodRecordModel, MoodRecordModel, QAfterSortBy>
      sortByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<MoodRecordModel, MoodRecordModel, QAfterSortBy>
      sortByMoodType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'moodType', Sort.asc);
    });
  }

  QueryBuilder<MoodRecordModel, MoodRecordModel, QAfterSortBy>
      sortByMoodTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'moodType', Sort.desc);
    });
  }
}

extension MoodRecordModelQuerySortThenBy
    on QueryBuilder<MoodRecordModel, MoodRecordModel, QSortThenBy> {
  QueryBuilder<MoodRecordModel, MoodRecordModel, QAfterSortBy> thenByComment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'comment', Sort.asc);
    });
  }

  QueryBuilder<MoodRecordModel, MoodRecordModel, QAfterSortBy>
      thenByCommentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'comment', Sort.desc);
    });
  }

  QueryBuilder<MoodRecordModel, MoodRecordModel, QAfterSortBy> thenByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<MoodRecordModel, MoodRecordModel, QAfterSortBy>
      thenByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<MoodRecordModel, MoodRecordModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<MoodRecordModel, MoodRecordModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<MoodRecordModel, MoodRecordModel, QAfterSortBy>
      thenByMoodType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'moodType', Sort.asc);
    });
  }

  QueryBuilder<MoodRecordModel, MoodRecordModel, QAfterSortBy>
      thenByMoodTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'moodType', Sort.desc);
    });
  }
}

extension MoodRecordModelQueryWhereDistinct
    on QueryBuilder<MoodRecordModel, MoodRecordModel, QDistinct> {
  QueryBuilder<MoodRecordModel, MoodRecordModel, QDistinct> distinctByComment(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'comment', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MoodRecordModel, MoodRecordModel, QDistinct> distinctByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'date');
    });
  }

  QueryBuilder<MoodRecordModel, MoodRecordModel, QDistinct>
      distinctByMoodType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'moodType');
    });
  }
}

extension MoodRecordModelQueryProperty
    on QueryBuilder<MoodRecordModel, MoodRecordModel, QQueryProperty> {
  QueryBuilder<MoodRecordModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<MoodRecordModel, String?, QQueryOperations> commentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'comment');
    });
  }

  QueryBuilder<MoodRecordModel, DateTime, QQueryOperations> dateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'date');
    });
  }

  QueryBuilder<MoodRecordModel, MoodType, QQueryOperations> moodTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'moodType');
    });
  }
}
