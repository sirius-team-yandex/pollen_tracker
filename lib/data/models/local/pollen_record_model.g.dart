// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pollen_record_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPollenRecordModelCollection on Isar {
  IsarCollection<PollenRecordModel> get pollenRecordModels => this.collection();
}

const PollenRecordModelSchema = CollectionSchema(
  name: r'PollenRecordModel',
  id: 4364360543053568721,
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
  estimateSize: _pollenRecordModelEstimateSize,
  serialize: _pollenRecordModelSerialize,
  deserialize: _pollenRecordModelDeserialize,
  deserializeProp: _pollenRecordModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _pollenRecordModelGetId,
  getLinks: _pollenRecordModelGetLinks,
  attach: _pollenRecordModelAttach,
  version: '3.1.0+1',
);

int _pollenRecordModelEstimateSize(
  PollenRecordModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _pollenRecordModelSerialize(
  PollenRecordModel object,
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

PollenRecordModel _pollenRecordModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PollenRecordModel(
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
  object.id = id;
  return object;
}

P _pollenRecordModelDeserializeProp<P>(
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

Id _pollenRecordModelGetId(PollenRecordModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _pollenRecordModelGetLinks(
    PollenRecordModel object) {
  return [];
}

void _pollenRecordModelAttach(
    IsarCollection<dynamic> col, Id id, PollenRecordModel object) {
  object.id = id;
}

extension PollenRecordModelQueryWhereSort
    on QueryBuilder<PollenRecordModel, PollenRecordModel, QWhere> {
  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension PollenRecordModelQueryWhere
    on QueryBuilder<PollenRecordModel, PollenRecordModel, QWhereClause> {
  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterWhereClause>
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterWhereClause>
      idBetween(
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

extension PollenRecordModelQueryFilter
    on QueryBuilder<PollenRecordModel, PollenRecordModel, QFilterCondition> {
  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      acaciaEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'acacia',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      acaciaGreaterThan(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      acaciaLessThan(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      acaciaBetween(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      alderEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'alder',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      alderGreaterThan(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      alderLessThan(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      alderBetween(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      ashEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ash',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      ashGreaterThan(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      ashLessThan(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      ashBetween(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      birchEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'birch',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      birchGreaterThan(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      birchLessThan(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      birchBetween(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      casuarinaEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'casuarina',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      casuarinaGreaterThan(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      casuarinaLessThan(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      casuarinaBetween(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      chenopodEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'chenopod',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      chenopodGreaterThan(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      chenopodLessThan(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      chenopodBetween(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      cypressEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cypress',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      cypressGreaterThan(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      cypressLessThan(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      cypressBetween(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      elmEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'elm',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      elmGreaterThan(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      elmLessThan(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      elmBetween(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      grassEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'grass',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      grassGreaterThan(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      grassLessThan(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      grassBetween(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      hazelEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hazel',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      hazelGreaterThan(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      hazelLessThan(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      hazelBetween(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      latEqualTo(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      latGreaterThan(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      latLessThan(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      latBetween(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      lngEqualTo(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      lngGreaterThan(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      lngLessThan(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      lngBetween(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      mapleEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'maple',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      mapleGreaterThan(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      mapleLessThan(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      mapleBetween(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      mugwortEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mugwort',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      mugwortGreaterThan(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      mugwortLessThan(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      mugwortBetween(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      mulberryEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mulberry',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      mulberryGreaterThan(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      mulberryLessThan(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      mulberryBetween(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      myrtaceaeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'myrtaceae',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      myrtaceaeGreaterThan(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      myrtaceaeLessThan(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      myrtaceaeBetween(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      nettleEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nettle',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      nettleGreaterThan(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      nettleLessThan(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      nettleBetween(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      oakEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'oak',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      oakGreaterThan(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      oakLessThan(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      oakBetween(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      oliveEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'olive',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      oliveGreaterThan(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      oliveLessThan(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      oliveBetween(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      othersEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'others',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      othersGreaterThan(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      othersLessThan(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      othersBetween(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      pineEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pine',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      pineGreaterThan(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      pineLessThan(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      pineBetween(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      planeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'plane',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      planeGreaterThan(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      planeLessThan(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      planeBetween(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      plantagoEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'plantago',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      plantagoGreaterThan(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      plantagoLessThan(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      plantagoBetween(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      poplarEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'poplar',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      poplarGreaterThan(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      poplarLessThan(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      poplarBetween(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      ragweedEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ragweed',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      ragweedGreaterThan(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      ragweedLessThan(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      ragweedBetween(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      rumexEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rumex',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      rumexGreaterThan(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      rumexLessThan(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      rumexBetween(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      timeEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'time',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      timeGreaterThan(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      timeLessThan(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      timeBetween(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      willowEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'willow',
        value: value,
      ));
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      willowGreaterThan(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      willowLessThan(
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

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterFilterCondition>
      willowBetween(
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

extension PollenRecordModelQueryObject
    on QueryBuilder<PollenRecordModel, PollenRecordModel, QFilterCondition> {}

extension PollenRecordModelQueryLinks
    on QueryBuilder<PollenRecordModel, PollenRecordModel, QFilterCondition> {}

extension PollenRecordModelQuerySortBy
    on QueryBuilder<PollenRecordModel, PollenRecordModel, QSortBy> {
  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      sortByAcacia() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acacia', Sort.asc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      sortByAcaciaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acacia', Sort.desc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      sortByAlder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'alder', Sort.asc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      sortByAlderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'alder', Sort.desc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy> sortByAsh() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ash', Sort.asc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      sortByAshDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ash', Sort.desc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      sortByBirch() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'birch', Sort.asc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      sortByBirchDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'birch', Sort.desc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      sortByCasuarina() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'casuarina', Sort.asc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      sortByCasuarinaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'casuarina', Sort.desc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      sortByChenopod() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chenopod', Sort.asc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      sortByChenopodDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chenopod', Sort.desc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      sortByCypress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cypress', Sort.asc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      sortByCypressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cypress', Sort.desc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy> sortByElm() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'elm', Sort.asc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      sortByElmDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'elm', Sort.desc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      sortByGrass() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'grass', Sort.asc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      sortByGrassDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'grass', Sort.desc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      sortByHazel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hazel', Sort.asc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      sortByHazelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hazel', Sort.desc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy> sortByLat() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lat', Sort.asc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      sortByLatDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lat', Sort.desc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy> sortByLng() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lng', Sort.asc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      sortByLngDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lng', Sort.desc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      sortByMaple() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maple', Sort.asc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      sortByMapleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maple', Sort.desc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      sortByMugwort() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mugwort', Sort.asc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      sortByMugwortDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mugwort', Sort.desc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      sortByMulberry() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mulberry', Sort.asc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      sortByMulberryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mulberry', Sort.desc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      sortByMyrtaceae() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'myrtaceae', Sort.asc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      sortByMyrtaceaeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'myrtaceae', Sort.desc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      sortByNettle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nettle', Sort.asc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      sortByNettleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nettle', Sort.desc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy> sortByOak() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'oak', Sort.asc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      sortByOakDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'oak', Sort.desc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      sortByOlive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'olive', Sort.asc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      sortByOliveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'olive', Sort.desc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      sortByOthers() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'others', Sort.asc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      sortByOthersDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'others', Sort.desc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      sortByPine() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pine', Sort.asc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      sortByPineDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pine', Sort.desc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      sortByPlane() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'plane', Sort.asc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      sortByPlaneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'plane', Sort.desc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      sortByPlantago() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'plantago', Sort.asc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      sortByPlantagoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'plantago', Sort.desc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      sortByPoplar() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'poplar', Sort.asc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      sortByPoplarDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'poplar', Sort.desc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      sortByRagweed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ragweed', Sort.asc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      sortByRagweedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ragweed', Sort.desc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      sortByRumex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rumex', Sort.asc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      sortByRumexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rumex', Sort.desc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      sortByTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'time', Sort.asc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      sortByTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'time', Sort.desc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      sortByWillow() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'willow', Sort.asc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      sortByWillowDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'willow', Sort.desc);
    });
  }
}

extension PollenRecordModelQuerySortThenBy
    on QueryBuilder<PollenRecordModel, PollenRecordModel, QSortThenBy> {
  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      thenByAcacia() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acacia', Sort.asc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      thenByAcaciaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acacia', Sort.desc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      thenByAlder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'alder', Sort.asc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      thenByAlderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'alder', Sort.desc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy> thenByAsh() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ash', Sort.asc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      thenByAshDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ash', Sort.desc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      thenByBirch() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'birch', Sort.asc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      thenByBirchDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'birch', Sort.desc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      thenByCasuarina() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'casuarina', Sort.asc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      thenByCasuarinaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'casuarina', Sort.desc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      thenByChenopod() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chenopod', Sort.asc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      thenByChenopodDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chenopod', Sort.desc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      thenByCypress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cypress', Sort.asc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      thenByCypressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cypress', Sort.desc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy> thenByElm() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'elm', Sort.asc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      thenByElmDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'elm', Sort.desc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      thenByGrass() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'grass', Sort.asc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      thenByGrassDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'grass', Sort.desc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      thenByHazel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hazel', Sort.asc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      thenByHazelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hazel', Sort.desc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy> thenByLat() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lat', Sort.asc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      thenByLatDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lat', Sort.desc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy> thenByLng() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lng', Sort.asc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      thenByLngDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lng', Sort.desc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      thenByMaple() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maple', Sort.asc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      thenByMapleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maple', Sort.desc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      thenByMugwort() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mugwort', Sort.asc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      thenByMugwortDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mugwort', Sort.desc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      thenByMulberry() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mulberry', Sort.asc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      thenByMulberryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mulberry', Sort.desc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      thenByMyrtaceae() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'myrtaceae', Sort.asc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      thenByMyrtaceaeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'myrtaceae', Sort.desc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      thenByNettle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nettle', Sort.asc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      thenByNettleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nettle', Sort.desc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy> thenByOak() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'oak', Sort.asc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      thenByOakDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'oak', Sort.desc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      thenByOlive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'olive', Sort.asc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      thenByOliveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'olive', Sort.desc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      thenByOthers() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'others', Sort.asc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      thenByOthersDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'others', Sort.desc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      thenByPine() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pine', Sort.asc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      thenByPineDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pine', Sort.desc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      thenByPlane() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'plane', Sort.asc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      thenByPlaneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'plane', Sort.desc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      thenByPlantago() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'plantago', Sort.asc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      thenByPlantagoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'plantago', Sort.desc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      thenByPoplar() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'poplar', Sort.asc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      thenByPoplarDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'poplar', Sort.desc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      thenByRagweed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ragweed', Sort.asc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      thenByRagweedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ragweed', Sort.desc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      thenByRumex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rumex', Sort.asc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      thenByRumexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rumex', Sort.desc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      thenByTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'time', Sort.asc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      thenByTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'time', Sort.desc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      thenByWillow() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'willow', Sort.asc);
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QAfterSortBy>
      thenByWillowDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'willow', Sort.desc);
    });
  }
}

extension PollenRecordModelQueryWhereDistinct
    on QueryBuilder<PollenRecordModel, PollenRecordModel, QDistinct> {
  QueryBuilder<PollenRecordModel, PollenRecordModel, QDistinct>
      distinctByAcacia() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'acacia');
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QDistinct>
      distinctByAlder() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'alder');
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QDistinct>
      distinctByAsh() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ash');
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QDistinct>
      distinctByBirch() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'birch');
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QDistinct>
      distinctByCasuarina() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'casuarina');
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QDistinct>
      distinctByChenopod() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'chenopod');
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QDistinct>
      distinctByCypress() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cypress');
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QDistinct>
      distinctByElm() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'elm');
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QDistinct>
      distinctByGrass() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'grass');
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QDistinct>
      distinctByHazel() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hazel');
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QDistinct>
      distinctByLat() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lat');
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QDistinct>
      distinctByLng() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lng');
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QDistinct>
      distinctByMaple() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'maple');
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QDistinct>
      distinctByMugwort() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mugwort');
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QDistinct>
      distinctByMulberry() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mulberry');
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QDistinct>
      distinctByMyrtaceae() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'myrtaceae');
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QDistinct>
      distinctByNettle() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nettle');
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QDistinct>
      distinctByOak() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'oak');
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QDistinct>
      distinctByOlive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'olive');
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QDistinct>
      distinctByOthers() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'others');
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QDistinct>
      distinctByPine() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pine');
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QDistinct>
      distinctByPlane() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'plane');
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QDistinct>
      distinctByPlantago() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'plantago');
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QDistinct>
      distinctByPoplar() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'poplar');
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QDistinct>
      distinctByRagweed() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ragweed');
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QDistinct>
      distinctByRumex() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rumex');
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QDistinct>
      distinctByTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'time');
    });
  }

  QueryBuilder<PollenRecordModel, PollenRecordModel, QDistinct>
      distinctByWillow() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'willow');
    });
  }
}

extension PollenRecordModelQueryProperty
    on QueryBuilder<PollenRecordModel, PollenRecordModel, QQueryProperty> {
  QueryBuilder<PollenRecordModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<PollenRecordModel, int, QQueryOperations> acaciaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'acacia');
    });
  }

  QueryBuilder<PollenRecordModel, int, QQueryOperations> alderProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'alder');
    });
  }

  QueryBuilder<PollenRecordModel, int, QQueryOperations> ashProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ash');
    });
  }

  QueryBuilder<PollenRecordModel, int, QQueryOperations> birchProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'birch');
    });
  }

  QueryBuilder<PollenRecordModel, int, QQueryOperations> casuarinaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'casuarina');
    });
  }

  QueryBuilder<PollenRecordModel, int, QQueryOperations> chenopodProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'chenopod');
    });
  }

  QueryBuilder<PollenRecordModel, int, QQueryOperations> cypressProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cypress');
    });
  }

  QueryBuilder<PollenRecordModel, int, QQueryOperations> elmProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'elm');
    });
  }

  QueryBuilder<PollenRecordModel, int, QQueryOperations> grassProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'grass');
    });
  }

  QueryBuilder<PollenRecordModel, int, QQueryOperations> hazelProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hazel');
    });
  }

  QueryBuilder<PollenRecordModel, double, QQueryOperations> latProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lat');
    });
  }

  QueryBuilder<PollenRecordModel, double, QQueryOperations> lngProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lng');
    });
  }

  QueryBuilder<PollenRecordModel, int, QQueryOperations> mapleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'maple');
    });
  }

  QueryBuilder<PollenRecordModel, int, QQueryOperations> mugwortProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mugwort');
    });
  }

  QueryBuilder<PollenRecordModel, int, QQueryOperations> mulberryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mulberry');
    });
  }

  QueryBuilder<PollenRecordModel, int, QQueryOperations> myrtaceaeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'myrtaceae');
    });
  }

  QueryBuilder<PollenRecordModel, int, QQueryOperations> nettleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nettle');
    });
  }

  QueryBuilder<PollenRecordModel, int, QQueryOperations> oakProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'oak');
    });
  }

  QueryBuilder<PollenRecordModel, int, QQueryOperations> oliveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'olive');
    });
  }

  QueryBuilder<PollenRecordModel, int, QQueryOperations> othersProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'others');
    });
  }

  QueryBuilder<PollenRecordModel, int, QQueryOperations> pineProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pine');
    });
  }

  QueryBuilder<PollenRecordModel, int, QQueryOperations> planeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'plane');
    });
  }

  QueryBuilder<PollenRecordModel, int, QQueryOperations> plantagoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'plantago');
    });
  }

  QueryBuilder<PollenRecordModel, int, QQueryOperations> poplarProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'poplar');
    });
  }

  QueryBuilder<PollenRecordModel, int, QQueryOperations> ragweedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ragweed');
    });
  }

  QueryBuilder<PollenRecordModel, int, QQueryOperations> rumexProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rumex');
    });
  }

  QueryBuilder<PollenRecordModel, DateTime, QQueryOperations> timeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'time');
    });
  }

  QueryBuilder<PollenRecordModel, int, QQueryOperations> willowProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'willow');
    });
  }
}
