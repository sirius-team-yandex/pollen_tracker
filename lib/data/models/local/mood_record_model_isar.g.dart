// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mood_record_model_isar.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetMoodRecordModelIsarCollection on Isar {
  IsarCollection<MoodRecordModelIsar> get moodRecordModelIsars => this.collection();
}

const MoodRecordModelIsarSchema = CollectionSchema(
  name: r'MoodRecordModelIsar',
  id: 2889193723061518202,
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
      enumMap: _MoodRecordModelIsarmoodTypeEnumValueMap,
    ),
    r'ownerId': PropertySchema(
      id: 3,
      name: r'ownerId',
      type: IsarType.long,
    )
  },
  estimateSize: _moodRecordModelIsarEstimateSize,
  serialize: _moodRecordModelIsarSerialize,
  deserialize: _moodRecordModelIsarDeserialize,
  deserializeProp: _moodRecordModelIsarDeserializeProp,
  idName: r'id',
  indexes: {
    r'ownerId_date': IndexSchema(
      id: 623424540338249564,
      name: r'ownerId_date',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'ownerId',
          type: IndexType.value,
          caseSensitive: false,
        ),
        IndexPropertySchema(
          name: r'date',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _moodRecordModelIsarGetId,
  getLinks: _moodRecordModelIsarGetLinks,
  attach: _moodRecordModelIsarAttach,
  version: '3.1.0+1',
);

int _moodRecordModelIsarEstimateSize(
  MoodRecordModelIsar object,
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

void _moodRecordModelIsarSerialize(
  MoodRecordModelIsar object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.comment);
  writer.writeDateTime(offsets[1], object.date);
  writer.writeByte(offsets[2], object.moodType.index);
  writer.writeLong(offsets[3], object.ownerId);
}

MoodRecordModelIsar _moodRecordModelIsarDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MoodRecordModelIsar(
    comment: reader.readStringOrNull(offsets[0]),
    date: reader.readDateTime(offsets[1]),
    moodType: _MoodRecordModelIsarmoodTypeValueEnumMap[reader.readByteOrNull(offsets[2])] ?? MoodType.veryBad,
    ownerId: reader.readLong(offsets[3]),
  );
  return object;
}

P _moodRecordModelIsarDeserializeProp<P>(
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
      return (_MoodRecordModelIsarmoodTypeValueEnumMap[reader.readByteOrNull(offset)] ?? MoodType.veryBad) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _MoodRecordModelIsarmoodTypeEnumValueMap = {
  'veryBad': 0,
  'bad': 1,
  'normal': 2,
  'good': 3,
};
const _MoodRecordModelIsarmoodTypeValueEnumMap = {
  0: MoodType.veryBad,
  1: MoodType.bad,
  2: MoodType.normal,
  3: MoodType.good,
};

Id _moodRecordModelIsarGetId(MoodRecordModelIsar object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _moodRecordModelIsarGetLinks(MoodRecordModelIsar object) {
  return [];
}

void _moodRecordModelIsarAttach(IsarCollection<dynamic> col, Id id, MoodRecordModelIsar object) {}

extension MoodRecordModelIsarQueryWhereSort on QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QWhere> {
  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QAfterWhere> anyOwnerIdDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'ownerId_date'),
      );
    });
  }
}

extension MoodRecordModelIsarQueryWhere on QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QWhereClause> {
  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QAfterWhereClause> idBetween(
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

  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QAfterWhereClause> ownerIdEqualToAnyDate(int ownerId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'ownerId_date',
        value: [ownerId],
      ));
    });
  }

  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QAfterWhereClause> ownerIdNotEqualToAnyDate(int ownerId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'ownerId_date',
              lower: [],
              upper: [ownerId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'ownerId_date',
              lower: [ownerId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'ownerId_date',
              lower: [ownerId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'ownerId_date',
              lower: [],
              upper: [ownerId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QAfterWhereClause> ownerIdGreaterThanAnyDate(
    int ownerId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'ownerId_date',
        lower: [ownerId],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QAfterWhereClause> ownerIdLessThanAnyDate(
    int ownerId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'ownerId_date',
        lower: [],
        upper: [ownerId],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QAfterWhereClause> ownerIdBetweenAnyDate(
    int lowerOwnerId,
    int upperOwnerId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'ownerId_date',
        lower: [lowerOwnerId],
        includeLower: includeLower,
        upper: [upperOwnerId],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QAfterWhereClause> ownerIdDateEqualTo(
      int ownerId, DateTime date) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'ownerId_date',
        value: [ownerId, date],
      ));
    });
  }

  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QAfterWhereClause> ownerIdEqualToDateNotEqualTo(
      int ownerId, DateTime date) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'ownerId_date',
              lower: [ownerId],
              upper: [ownerId, date],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'ownerId_date',
              lower: [ownerId, date],
              includeLower: false,
              upper: [ownerId],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'ownerId_date',
              lower: [ownerId, date],
              includeLower: false,
              upper: [ownerId],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'ownerId_date',
              lower: [ownerId],
              upper: [ownerId, date],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QAfterWhereClause> ownerIdEqualToDateGreaterThan(
    int ownerId,
    DateTime date, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'ownerId_date',
        lower: [ownerId, date],
        includeLower: include,
        upper: [ownerId],
      ));
    });
  }

  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QAfterWhereClause> ownerIdEqualToDateLessThan(
    int ownerId,
    DateTime date, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'ownerId_date',
        lower: [ownerId],
        upper: [ownerId, date],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QAfterWhereClause> ownerIdEqualToDateBetween(
    int ownerId,
    DateTime lowerDate,
    DateTime upperDate, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'ownerId_date',
        lower: [ownerId, lowerDate],
        includeLower: includeLower,
        upper: [ownerId, upperDate],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension MoodRecordModelIsarQueryFilter on QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QFilterCondition> {
  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QAfterFilterCondition> commentIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'comment',
      ));
    });
  }

  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QAfterFilterCondition> commentIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'comment',
      ));
    });
  }

  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QAfterFilterCondition> commentEqualTo(
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

  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QAfterFilterCondition> commentGreaterThan(
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

  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QAfterFilterCondition> commentLessThan(
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

  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QAfterFilterCondition> commentBetween(
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

  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QAfterFilterCondition> commentStartsWith(
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

  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QAfterFilterCondition> commentEndsWith(
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

  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QAfterFilterCondition> commentContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'comment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QAfterFilterCondition> commentMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'comment',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QAfterFilterCondition> commentIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'comment',
        value: '',
      ));
    });
  }

  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QAfterFilterCondition> commentIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'comment',
        value: '',
      ));
    });
  }

  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QAfterFilterCondition> dateEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QAfterFilterCondition> dateGreaterThan(
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

  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QAfterFilterCondition> dateLessThan(
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

  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QAfterFilterCondition> dateBetween(
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

  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QAfterFilterCondition> idBetween(
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

  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QAfterFilterCondition> moodTypeEqualTo(MoodType value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'moodType',
        value: value,
      ));
    });
  }

  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QAfterFilterCondition> moodTypeGreaterThan(
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

  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QAfterFilterCondition> moodTypeLessThan(
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

  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QAfterFilterCondition> moodTypeBetween(
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

  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QAfterFilterCondition> ownerIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ownerId',
        value: value,
      ));
    });
  }

  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QAfterFilterCondition> ownerIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ownerId',
        value: value,
      ));
    });
  }

  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QAfterFilterCondition> ownerIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ownerId',
        value: value,
      ));
    });
  }

  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QAfterFilterCondition> ownerIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ownerId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension MoodRecordModelIsarQueryObject on QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QFilterCondition> {}

extension MoodRecordModelIsarQueryLinks on QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QFilterCondition> {}

extension MoodRecordModelIsarQuerySortBy on QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QSortBy> {
  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QAfterSortBy> sortByComment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'comment', Sort.asc);
    });
  }

  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QAfterSortBy> sortByCommentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'comment', Sort.desc);
    });
  }

  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QAfterSortBy> sortByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QAfterSortBy> sortByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QAfterSortBy> sortByMoodType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'moodType', Sort.asc);
    });
  }

  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QAfterSortBy> sortByMoodTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'moodType', Sort.desc);
    });
  }

  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QAfterSortBy> sortByOwnerId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ownerId', Sort.asc);
    });
  }

  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QAfterSortBy> sortByOwnerIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ownerId', Sort.desc);
    });
  }
}

extension MoodRecordModelIsarQuerySortThenBy on QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QSortThenBy> {
  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QAfterSortBy> thenByComment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'comment', Sort.asc);
    });
  }

  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QAfterSortBy> thenByCommentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'comment', Sort.desc);
    });
  }

  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QAfterSortBy> thenByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QAfterSortBy> thenByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QAfterSortBy> thenByMoodType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'moodType', Sort.asc);
    });
  }

  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QAfterSortBy> thenByMoodTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'moodType', Sort.desc);
    });
  }

  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QAfterSortBy> thenByOwnerId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ownerId', Sort.asc);
    });
  }

  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QAfterSortBy> thenByOwnerIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ownerId', Sort.desc);
    });
  }
}

extension MoodRecordModelIsarQueryWhereDistinct on QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QDistinct> {
  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QDistinct> distinctByComment({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'comment', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QDistinct> distinctByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'date');
    });
  }

  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QDistinct> distinctByMoodType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'moodType');
    });
  }

  QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QDistinct> distinctByOwnerId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ownerId');
    });
  }
}

extension MoodRecordModelIsarQueryProperty on QueryBuilder<MoodRecordModelIsar, MoodRecordModelIsar, QQueryProperty> {
  QueryBuilder<MoodRecordModelIsar, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<MoodRecordModelIsar, String?, QQueryOperations> commentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'comment');
    });
  }

  QueryBuilder<MoodRecordModelIsar, DateTime, QQueryOperations> dateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'date');
    });
  }

  QueryBuilder<MoodRecordModelIsar, MoodType, QQueryOperations> moodTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'moodType');
    });
  }

  QueryBuilder<MoodRecordModelIsar, int, QQueryOperations> ownerIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ownerId');
    });
  }
}
