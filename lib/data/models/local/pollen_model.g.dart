// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pollen_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPollenModelCollection on Isar {
  IsarCollection<PollenModel> get pollenModels => this.collection();
}

const PollenModelSchema = CollectionSchema(
  name: r'PollenModel',
  id: -4365279379680816711,
  properties: {
    r'acacia': PropertySchema(
      id: 0,
      name: r'acacia',
      type: IsarType.long,
    ),
    r'alder': PropertySchema(
      id: 1,
      name: r'alder',
      type: IsarType.long,
    ),
    r'ash': PropertySchema(
      id: 2,
      name: r'ash',
      type: IsarType.long,
    ),
    r'birch': PropertySchema(
      id: 3,
      name: r'birch',
      type: IsarType.long,
    ),
    r'casuarina': PropertySchema(
      id: 4,
      name: r'casuarina',
      type: IsarType.long,
    ),
    r'chenopod': PropertySchema(
      id: 5,
      name: r'chenopod',
      type: IsarType.long,
    ),
    r'cypress': PropertySchema(
      id: 6,
      name: r'cypress',
      type: IsarType.long,
    ),
    r'elm': PropertySchema(
      id: 7,
      name: r'elm',
      type: IsarType.long,
    ),
    r'grass': PropertySchema(
      id: 8,
      name: r'grass',
      type: IsarType.long,
    ),
    r'hazel': PropertySchema(
      id: 9,
      name: r'hazel',
      type: IsarType.long,
    ),
    r'lat': PropertySchema(
      id: 10,
      name: r'lat',
      type: IsarType.double,
    ),
    r'lng': PropertySchema(
      id: 11,
      name: r'lng',
      type: IsarType.double,
    ),
    r'maple': PropertySchema(
      id: 12,
      name: r'maple',
      type: IsarType.long,
    ),
    r'mugwort': PropertySchema(
      id: 13,
      name: r'mugwort',
      type: IsarType.long,
    ),
    r'mulberry': PropertySchema(
      id: 14,
      name: r'mulberry',
      type: IsarType.long,
    ),
    r'myrtaceae': PropertySchema(
      id: 15,
      name: r'myrtaceae',
      type: IsarType.long,
    ),
    r'nettle': PropertySchema(
      id: 16,
      name: r'nettle',
      type: IsarType.long,
    ),
    r'oak': PropertySchema(
      id: 17,
      name: r'oak',
      type: IsarType.long,
    ),
    r'olive': PropertySchema(
      id: 18,
      name: r'olive',
      type: IsarType.long,
    ),
    r'others': PropertySchema(
      id: 19,
      name: r'others',
      type: IsarType.long,
    ),
    r'pine': PropertySchema(
      id: 20,
      name: r'pine',
      type: IsarType.long,
    ),
    r'plane': PropertySchema(
      id: 21,
      name: r'plane',
      type: IsarType.long,
    ),
    r'plantago': PropertySchema(
      id: 22,
      name: r'plantago',
      type: IsarType.long,
    ),
    r'poplar': PropertySchema(
      id: 23,
      name: r'poplar',
      type: IsarType.long,
    ),
    r'ragweed': PropertySchema(
      id: 24,
      name: r'ragweed',
      type: IsarType.long,
    ),
    r'rumex': PropertySchema(
      id: 25,
      name: r'rumex',
      type: IsarType.long,
    ),
    r'time': PropertySchema(
      id: 26,
      name: r'time',
      type: IsarType.dateTime,
    ),
    r'willow': PropertySchema(
      id: 27,
      name: r'willow',
      type: IsarType.long,
    )
  },
  estimateSize: _pollenModelEstimateSize,
  serialize: _pollenModelSerialize,
  deserialize: _pollenModelDeserialize,
  deserializeProp: _pollenModelDeserializeProp,
  idName: r'isarId',
  indexes: {
    r'time': IndexSchema(
      id: -2250472054110640942,
      name: r'time',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'time',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _pollenModelGetId,
  getLinks: _pollenModelGetLinks,
  attach: _pollenModelAttach,
  version: '3.1.0+1',
);

int _pollenModelEstimateSize(
  PollenModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _pollenModelSerialize(
  PollenModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.acacia);
  writer.writeLong(offsets[1], object.alder);
  writer.writeLong(offsets[2], object.ash);
  writer.writeLong(offsets[3], object.birch);
  writer.writeLong(offsets[4], object.casuarina);
  writer.writeLong(offsets[5], object.chenopod);
  writer.writeLong(offsets[6], object.cypress);
  writer.writeLong(offsets[7], object.elm);
  writer.writeLong(offsets[8], object.grass);
  writer.writeLong(offsets[9], object.hazel);
  writer.writeDouble(offsets[10], object.lat);
  writer.writeDouble(offsets[11], object.lng);
  writer.writeLong(offsets[12], object.maple);
  writer.writeLong(offsets[13], object.mugwort);
  writer.writeLong(offsets[14], object.mulberry);
  writer.writeLong(offsets[15], object.myrtaceae);
  writer.writeLong(offsets[16], object.nettle);
  writer.writeLong(offsets[17], object.oak);
  writer.writeLong(offsets[18], object.olive);
  writer.writeLong(offsets[19], object.others);
  writer.writeLong(offsets[20], object.pine);
  writer.writeLong(offsets[21], object.plane);
  writer.writeLong(offsets[22], object.plantago);
  writer.writeLong(offsets[23], object.poplar);
  writer.writeLong(offsets[24], object.ragweed);
  writer.writeLong(offsets[25], object.rumex);
  writer.writeDateTime(offsets[26], object.time);
  writer.writeLong(offsets[27], object.willow);
}

PollenModel _pollenModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PollenModel(
    acacia: reader.readLongOrNull(offsets[0]) ?? 0,
    alder: reader.readLongOrNull(offsets[1]) ?? 0,
    ash: reader.readLongOrNull(offsets[2]) ?? 0,
    birch: reader.readLongOrNull(offsets[3]) ?? 0,
    casuarina: reader.readLongOrNull(offsets[4]) ?? 0,
    chenopod: reader.readLongOrNull(offsets[5]) ?? 0,
    cypress: reader.readLongOrNull(offsets[6]) ?? 0,
    elm: reader.readLongOrNull(offsets[7]) ?? 0,
    grass: reader.readLongOrNull(offsets[8]) ?? 0,
    hazel: reader.readLongOrNull(offsets[9]) ?? 0,
    lat: reader.readDouble(offsets[10]),
    lng: reader.readDouble(offsets[11]),
    maple: reader.readLongOrNull(offsets[12]) ?? 0,
    mugwort: reader.readLongOrNull(offsets[13]) ?? 0,
    mulberry: reader.readLongOrNull(offsets[14]) ?? 0,
    myrtaceae: reader.readLongOrNull(offsets[15]) ?? 0,
    nettle: reader.readLongOrNull(offsets[16]) ?? 0,
    oak: reader.readLongOrNull(offsets[17]) ?? 0,
    olive: reader.readLongOrNull(offsets[18]) ?? 0,
    others: reader.readLongOrNull(offsets[19]) ?? 0,
    pine: reader.readLongOrNull(offsets[20]) ?? 0,
    plane: reader.readLongOrNull(offsets[21]) ?? 0,
    plantago: reader.readLongOrNull(offsets[22]) ?? 0,
    poplar: reader.readLongOrNull(offsets[23]) ?? 0,
    ragweed: reader.readLongOrNull(offsets[24]) ?? 0,
    rumex: reader.readLongOrNull(offsets[25]) ?? 0,
    time: reader.readDateTime(offsets[26]),
    willow: reader.readLongOrNull(offsets[27]) ?? 0,
  );
  return object;
}

P _pollenModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 1:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 2:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 3:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 4:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 5:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 6:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 7:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 8:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 9:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 10:
      return (reader.readDouble(offset)) as P;
    case 11:
      return (reader.readDouble(offset)) as P;
    case 12:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 13:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 14:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 15:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 16:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 17:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 18:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 19:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 20:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 21:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 22:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 23:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 24:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 25:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 26:
      return (reader.readDateTime(offset)) as P;
    case 27:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _pollenModelGetId(PollenModel object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _pollenModelGetLinks(PollenModel object) {
  return [];
}

void _pollenModelAttach(IsarCollection<dynamic> col, Id id, PollenModel object) {}

extension PollenModelQueryWhereSort on QueryBuilder<PollenModel, PollenModel, QWhere> {
  QueryBuilder<PollenModel, PollenModel, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterWhere> anyTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'time'),
      );
    });
  }
}

extension PollenModelQueryWhere on QueryBuilder<PollenModel, PollenModel, QWhereClause> {
  QueryBuilder<PollenModel, PollenModel, QAfterWhereClause> isarIdEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterWhereClause> isarIdNotEqualTo(Id isarId) {
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

  QueryBuilder<PollenModel, PollenModel, QAfterWhereClause> isarIdGreaterThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterWhereClause> isarIdLessThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterWhereClause> isarIdBetween(
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

  QueryBuilder<PollenModel, PollenModel, QAfterWhereClause> timeEqualTo(DateTime time) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'time',
        value: [time],
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterWhereClause> timeNotEqualTo(DateTime time) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'time',
              lower: [],
              upper: [time],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'time',
              lower: [time],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'time',
              lower: [time],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'time',
              lower: [],
              upper: [time],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterWhereClause> timeGreaterThan(
    DateTime time, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'time',
        lower: [time],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterWhereClause> timeLessThan(
    DateTime time, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'time',
        lower: [],
        upper: [time],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterWhereClause> timeBetween(
    DateTime lowerTime,
    DateTime upperTime, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'time',
        lower: [lowerTime],
        includeLower: includeLower,
        upper: [upperTime],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension PollenModelQueryFilter on QueryBuilder<PollenModel, PollenModel, QFilterCondition> {
  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> acaciaEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'acacia',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> acaciaGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'acacia',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> acaciaLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'acacia',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> acaciaBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'acacia',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> alderEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'alder',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> alderGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'alder',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> alderLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'alder',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> alderBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'alder',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> ashEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ash',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> ashGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ash',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> ashLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ash',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> ashBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ash',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> birchEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'birch',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> birchGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'birch',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> birchLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'birch',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> birchBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'birch',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> casuarinaEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'casuarina',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> casuarinaGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'casuarina',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> casuarinaLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'casuarina',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> casuarinaBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'casuarina',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> chenopodEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'chenopod',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> chenopodGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'chenopod',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> chenopodLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'chenopod',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> chenopodBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'chenopod',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> cypressEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cypress',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> cypressGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cypress',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> cypressLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cypress',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> cypressBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cypress',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> elmEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'elm',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> elmGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'elm',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> elmLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'elm',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> elmBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'elm',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> grassEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'grass',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> grassGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'grass',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> grassLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'grass',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> grassBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'grass',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> hazelEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hazel',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> hazelGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hazel',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> hazelLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hazel',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> hazelBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hazel',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> isarIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> isarIdGreaterThan(
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

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> isarIdLessThan(
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

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> isarIdBetween(
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

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> latEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lat',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> latGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lat',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> latLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lat',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> latBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lat',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> lngEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lng',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> lngGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lng',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> lngLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lng',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> lngBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lng',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> mapleEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'maple',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> mapleGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'maple',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> mapleLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'maple',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> mapleBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'maple',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> mugwortEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mugwort',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> mugwortGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'mugwort',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> mugwortLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'mugwort',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> mugwortBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'mugwort',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> mulberryEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mulberry',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> mulberryGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'mulberry',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> mulberryLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'mulberry',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> mulberryBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'mulberry',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> myrtaceaeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'myrtaceae',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> myrtaceaeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'myrtaceae',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> myrtaceaeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'myrtaceae',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> myrtaceaeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'myrtaceae',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> nettleEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nettle',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> nettleGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nettle',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> nettleLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nettle',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> nettleBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nettle',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> oakEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'oak',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> oakGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'oak',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> oakLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'oak',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> oakBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'oak',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> oliveEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'olive',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> oliveGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'olive',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> oliveLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'olive',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> oliveBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'olive',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> othersEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'others',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> othersGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'others',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> othersLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'others',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> othersBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'others',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> pineEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pine',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> pineGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pine',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> pineLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pine',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> pineBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pine',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> planeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'plane',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> planeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'plane',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> planeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'plane',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> planeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'plane',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> plantagoEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'plantago',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> plantagoGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'plantago',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> plantagoLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'plantago',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> plantagoBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'plantago',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> poplarEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'poplar',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> poplarGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'poplar',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> poplarLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'poplar',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> poplarBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'poplar',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> ragweedEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ragweed',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> ragweedGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ragweed',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> ragweedLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ragweed',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> ragweedBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ragweed',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> rumexEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rumex',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> rumexGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rumex',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> rumexLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rumex',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> rumexBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rumex',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> timeEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'time',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> timeGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'time',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> timeLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'time',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> timeBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'time',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> willowEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'willow',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> willowGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'willow',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> willowLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'willow',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterFilterCondition> willowBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'willow',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension PollenModelQueryObject on QueryBuilder<PollenModel, PollenModel, QFilterCondition> {}

extension PollenModelQueryLinks on QueryBuilder<PollenModel, PollenModel, QFilterCondition> {}

extension PollenModelQuerySortBy on QueryBuilder<PollenModel, PollenModel, QSortBy> {
  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> sortByAcacia() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acacia', Sort.asc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> sortByAcaciaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acacia', Sort.desc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> sortByAlder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'alder', Sort.asc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> sortByAlderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'alder', Sort.desc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> sortByAsh() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ash', Sort.asc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> sortByAshDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ash', Sort.desc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> sortByBirch() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'birch', Sort.asc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> sortByBirchDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'birch', Sort.desc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> sortByCasuarina() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'casuarina', Sort.asc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> sortByCasuarinaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'casuarina', Sort.desc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> sortByChenopod() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chenopod', Sort.asc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> sortByChenopodDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chenopod', Sort.desc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> sortByCypress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cypress', Sort.asc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> sortByCypressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cypress', Sort.desc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> sortByElm() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'elm', Sort.asc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> sortByElmDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'elm', Sort.desc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> sortByGrass() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'grass', Sort.asc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> sortByGrassDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'grass', Sort.desc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> sortByHazel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hazel', Sort.asc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> sortByHazelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hazel', Sort.desc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> sortByLat() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lat', Sort.asc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> sortByLatDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lat', Sort.desc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> sortByLng() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lng', Sort.asc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> sortByLngDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lng', Sort.desc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> sortByMaple() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maple', Sort.asc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> sortByMapleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maple', Sort.desc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> sortByMugwort() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mugwort', Sort.asc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> sortByMugwortDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mugwort', Sort.desc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> sortByMulberry() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mulberry', Sort.asc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> sortByMulberryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mulberry', Sort.desc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> sortByMyrtaceae() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'myrtaceae', Sort.asc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> sortByMyrtaceaeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'myrtaceae', Sort.desc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> sortByNettle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nettle', Sort.asc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> sortByNettleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nettle', Sort.desc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> sortByOak() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'oak', Sort.asc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> sortByOakDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'oak', Sort.desc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> sortByOlive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'olive', Sort.asc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> sortByOliveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'olive', Sort.desc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> sortByOthers() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'others', Sort.asc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> sortByOthersDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'others', Sort.desc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> sortByPine() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pine', Sort.asc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> sortByPineDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pine', Sort.desc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> sortByPlane() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'plane', Sort.asc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> sortByPlaneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'plane', Sort.desc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> sortByPlantago() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'plantago', Sort.asc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> sortByPlantagoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'plantago', Sort.desc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> sortByPoplar() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'poplar', Sort.asc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> sortByPoplarDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'poplar', Sort.desc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> sortByRagweed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ragweed', Sort.asc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> sortByRagweedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ragweed', Sort.desc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> sortByRumex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rumex', Sort.asc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> sortByRumexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rumex', Sort.desc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> sortByTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'time', Sort.asc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> sortByTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'time', Sort.desc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> sortByWillow() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'willow', Sort.asc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> sortByWillowDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'willow', Sort.desc);
    });
  }
}

extension PollenModelQuerySortThenBy on QueryBuilder<PollenModel, PollenModel, QSortThenBy> {
  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> thenByAcacia() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acacia', Sort.asc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> thenByAcaciaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acacia', Sort.desc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> thenByAlder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'alder', Sort.asc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> thenByAlderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'alder', Sort.desc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> thenByAsh() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ash', Sort.asc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> thenByAshDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ash', Sort.desc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> thenByBirch() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'birch', Sort.asc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> thenByBirchDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'birch', Sort.desc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> thenByCasuarina() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'casuarina', Sort.asc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> thenByCasuarinaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'casuarina', Sort.desc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> thenByChenopod() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chenopod', Sort.asc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> thenByChenopodDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chenopod', Sort.desc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> thenByCypress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cypress', Sort.asc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> thenByCypressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cypress', Sort.desc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> thenByElm() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'elm', Sort.asc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> thenByElmDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'elm', Sort.desc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> thenByGrass() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'grass', Sort.asc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> thenByGrassDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'grass', Sort.desc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> thenByHazel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hazel', Sort.asc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> thenByHazelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hazel', Sort.desc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> thenByLat() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lat', Sort.asc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> thenByLatDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lat', Sort.desc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> thenByLng() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lng', Sort.asc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> thenByLngDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lng', Sort.desc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> thenByMaple() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maple', Sort.asc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> thenByMapleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maple', Sort.desc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> thenByMugwort() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mugwort', Sort.asc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> thenByMugwortDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mugwort', Sort.desc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> thenByMulberry() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mulberry', Sort.asc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> thenByMulberryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mulberry', Sort.desc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> thenByMyrtaceae() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'myrtaceae', Sort.asc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> thenByMyrtaceaeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'myrtaceae', Sort.desc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> thenByNettle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nettle', Sort.asc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> thenByNettleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nettle', Sort.desc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> thenByOak() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'oak', Sort.asc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> thenByOakDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'oak', Sort.desc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> thenByOlive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'olive', Sort.asc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> thenByOliveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'olive', Sort.desc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> thenByOthers() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'others', Sort.asc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> thenByOthersDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'others', Sort.desc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> thenByPine() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pine', Sort.asc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> thenByPineDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pine', Sort.desc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> thenByPlane() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'plane', Sort.asc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> thenByPlaneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'plane', Sort.desc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> thenByPlantago() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'plantago', Sort.asc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> thenByPlantagoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'plantago', Sort.desc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> thenByPoplar() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'poplar', Sort.asc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> thenByPoplarDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'poplar', Sort.desc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> thenByRagweed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ragweed', Sort.asc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> thenByRagweedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ragweed', Sort.desc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> thenByRumex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rumex', Sort.asc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> thenByRumexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rumex', Sort.desc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> thenByTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'time', Sort.asc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> thenByTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'time', Sort.desc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> thenByWillow() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'willow', Sort.asc);
    });
  }

  QueryBuilder<PollenModel, PollenModel, QAfterSortBy> thenByWillowDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'willow', Sort.desc);
    });
  }
}

extension PollenModelQueryWhereDistinct on QueryBuilder<PollenModel, PollenModel, QDistinct> {
  QueryBuilder<PollenModel, PollenModel, QDistinct> distinctByAcacia() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'acacia');
    });
  }

  QueryBuilder<PollenModel, PollenModel, QDistinct> distinctByAlder() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'alder');
    });
  }

  QueryBuilder<PollenModel, PollenModel, QDistinct> distinctByAsh() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ash');
    });
  }

  QueryBuilder<PollenModel, PollenModel, QDistinct> distinctByBirch() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'birch');
    });
  }

  QueryBuilder<PollenModel, PollenModel, QDistinct> distinctByCasuarina() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'casuarina');
    });
  }

  QueryBuilder<PollenModel, PollenModel, QDistinct> distinctByChenopod() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'chenopod');
    });
  }

  QueryBuilder<PollenModel, PollenModel, QDistinct> distinctByCypress() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cypress');
    });
  }

  QueryBuilder<PollenModel, PollenModel, QDistinct> distinctByElm() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'elm');
    });
  }

  QueryBuilder<PollenModel, PollenModel, QDistinct> distinctByGrass() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'grass');
    });
  }

  QueryBuilder<PollenModel, PollenModel, QDistinct> distinctByHazel() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hazel');
    });
  }

  QueryBuilder<PollenModel, PollenModel, QDistinct> distinctByLat() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lat');
    });
  }

  QueryBuilder<PollenModel, PollenModel, QDistinct> distinctByLng() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lng');
    });
  }

  QueryBuilder<PollenModel, PollenModel, QDistinct> distinctByMaple() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'maple');
    });
  }

  QueryBuilder<PollenModel, PollenModel, QDistinct> distinctByMugwort() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mugwort');
    });
  }

  QueryBuilder<PollenModel, PollenModel, QDistinct> distinctByMulberry() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mulberry');
    });
  }

  QueryBuilder<PollenModel, PollenModel, QDistinct> distinctByMyrtaceae() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'myrtaceae');
    });
  }

  QueryBuilder<PollenModel, PollenModel, QDistinct> distinctByNettle() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nettle');
    });
  }

  QueryBuilder<PollenModel, PollenModel, QDistinct> distinctByOak() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'oak');
    });
  }

  QueryBuilder<PollenModel, PollenModel, QDistinct> distinctByOlive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'olive');
    });
  }

  QueryBuilder<PollenModel, PollenModel, QDistinct> distinctByOthers() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'others');
    });
  }

  QueryBuilder<PollenModel, PollenModel, QDistinct> distinctByPine() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pine');
    });
  }

  QueryBuilder<PollenModel, PollenModel, QDistinct> distinctByPlane() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'plane');
    });
  }

  QueryBuilder<PollenModel, PollenModel, QDistinct> distinctByPlantago() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'plantago');
    });
  }

  QueryBuilder<PollenModel, PollenModel, QDistinct> distinctByPoplar() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'poplar');
    });
  }

  QueryBuilder<PollenModel, PollenModel, QDistinct> distinctByRagweed() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ragweed');
    });
  }

  QueryBuilder<PollenModel, PollenModel, QDistinct> distinctByRumex() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rumex');
    });
  }

  QueryBuilder<PollenModel, PollenModel, QDistinct> distinctByTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'time');
    });
  }

  QueryBuilder<PollenModel, PollenModel, QDistinct> distinctByWillow() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'willow');
    });
  }
}

extension PollenModelQueryProperty on QueryBuilder<PollenModel, PollenModel, QQueryProperty> {
  QueryBuilder<PollenModel, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<PollenModel, int, QQueryOperations> acaciaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'acacia');
    });
  }

  QueryBuilder<PollenModel, int, QQueryOperations> alderProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'alder');
    });
  }

  QueryBuilder<PollenModel, int, QQueryOperations> ashProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ash');
    });
  }

  QueryBuilder<PollenModel, int, QQueryOperations> birchProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'birch');
    });
  }

  QueryBuilder<PollenModel, int, QQueryOperations> casuarinaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'casuarina');
    });
  }

  QueryBuilder<PollenModel, int, QQueryOperations> chenopodProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'chenopod');
    });
  }

  QueryBuilder<PollenModel, int, QQueryOperations> cypressProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cypress');
    });
  }

  QueryBuilder<PollenModel, int, QQueryOperations> elmProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'elm');
    });
  }

  QueryBuilder<PollenModel, int, QQueryOperations> grassProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'grass');
    });
  }

  QueryBuilder<PollenModel, int, QQueryOperations> hazelProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hazel');
    });
  }

  QueryBuilder<PollenModel, double, QQueryOperations> latProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lat');
    });
  }

  QueryBuilder<PollenModel, double, QQueryOperations> lngProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lng');
    });
  }

  QueryBuilder<PollenModel, int, QQueryOperations> mapleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'maple');
    });
  }

  QueryBuilder<PollenModel, int, QQueryOperations> mugwortProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mugwort');
    });
  }

  QueryBuilder<PollenModel, int, QQueryOperations> mulberryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mulberry');
    });
  }

  QueryBuilder<PollenModel, int, QQueryOperations> myrtaceaeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'myrtaceae');
    });
  }

  QueryBuilder<PollenModel, int, QQueryOperations> nettleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nettle');
    });
  }

  QueryBuilder<PollenModel, int, QQueryOperations> oakProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'oak');
    });
  }

  QueryBuilder<PollenModel, int, QQueryOperations> oliveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'olive');
    });
  }

  QueryBuilder<PollenModel, int, QQueryOperations> othersProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'others');
    });
  }

  QueryBuilder<PollenModel, int, QQueryOperations> pineProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pine');
    });
  }

  QueryBuilder<PollenModel, int, QQueryOperations> planeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'plane');
    });
  }

  QueryBuilder<PollenModel, int, QQueryOperations> plantagoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'plantago');
    });
  }

  QueryBuilder<PollenModel, int, QQueryOperations> poplarProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'poplar');
    });
  }

  QueryBuilder<PollenModel, int, QQueryOperations> ragweedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ragweed');
    });
  }

  QueryBuilder<PollenModel, int, QQueryOperations> rumexProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rumex');
    });
  }

  QueryBuilder<PollenModel, DateTime, QQueryOperations> timeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'time');
    });
  }

  QueryBuilder<PollenModel, int, QQueryOperations> willowProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'willow');
    });
  }
}
