// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config_model_isar.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetConfigModelIsarCollection on Isar {
  IsarCollection<ConfigModelIsar> get configModelIsars => this.collection();
}

const ConfigModelIsarSchema = CollectionSchema(
  name: r'ConfigModelIsar',
  id: 8945637773781902706,
  properties: {
    r'currProfileId': PropertySchema(
      id: 0,
      name: r'currProfileId',
      type: IsarType.long,
    ),
    r'isDark': PropertySchema(
      id: 1,
      name: r'isDark',
      type: IsarType.bool,
    ),
    r'locale': PropertySchema(
      id: 2,
      name: r'locale',
      type: IsarType.string,
    )
  },
  estimateSize: _configModelIsarEstimateSize,
  serialize: _configModelIsarSerialize,
  deserialize: _configModelIsarDeserialize,
  deserializeProp: _configModelIsarDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _configModelIsarGetId,
  getLinks: _configModelIsarGetLinks,
  attach: _configModelIsarAttach,
  version: '3.1.0+1',
);

int _configModelIsarEstimateSize(
  ConfigModelIsar object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.locale.length * 3;
  return bytesCount;
}

void _configModelIsarSerialize(
  ConfigModelIsar object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.currProfileId);
  writer.writeBool(offsets[1], object.isDark);
  writer.writeString(offsets[2], object.locale);
}

ConfigModelIsar _configModelIsarDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ConfigModelIsar(
    currProfileId: reader.readLongOrNull(offsets[0]),
    isDark: reader.readBool(offsets[1]),
    locale: reader.readString(offsets[2]),
  );
  object.id = id;
  return object;
}

P _configModelIsarDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readBool(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _configModelIsarGetId(ConfigModelIsar object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _configModelIsarGetLinks(ConfigModelIsar object) {
  return [];
}

void _configModelIsarAttach(IsarCollection<dynamic> col, Id id, ConfigModelIsar object) {
  object.id = id;
}

extension ConfigModelIsarQueryWhereSort on QueryBuilder<ConfigModelIsar, ConfigModelIsar, QWhere> {
  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ConfigModelIsarQueryWhere on QueryBuilder<ConfigModelIsar, ConfigModelIsar, QWhereClause> {
  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterWhereClause> idBetween(
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

extension ConfigModelIsarQueryFilter on QueryBuilder<ConfigModelIsar, ConfigModelIsar, QFilterCondition> {
  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterFilterCondition> currProfileIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'currProfileId',
      ));
    });
  }

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterFilterCondition> currProfileIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'currProfileId',
      ));
    });
  }

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterFilterCondition> currProfileIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'currProfileId',
        value: value,
      ));
    });
  }

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterFilterCondition> currProfileIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'currProfileId',
        value: value,
      ));
    });
  }

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterFilterCondition> currProfileIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'currProfileId',
        value: value,
      ));
    });
  }

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterFilterCondition> currProfileIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'currProfileId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterFilterCondition> idBetween(
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

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterFilterCondition> isDarkEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isDark',
        value: value,
      ));
    });
  }

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterFilterCondition> localeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'locale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterFilterCondition> localeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'locale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterFilterCondition> localeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'locale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterFilterCondition> localeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'locale',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterFilterCondition> localeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'locale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterFilterCondition> localeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'locale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterFilterCondition> localeContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'locale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterFilterCondition> localeMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'locale',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterFilterCondition> localeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'locale',
        value: '',
      ));
    });
  }

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterFilterCondition> localeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'locale',
        value: '',
      ));
    });
  }
}

extension ConfigModelIsarQueryObject on QueryBuilder<ConfigModelIsar, ConfigModelIsar, QFilterCondition> {}

extension ConfigModelIsarQueryLinks on QueryBuilder<ConfigModelIsar, ConfigModelIsar, QFilterCondition> {}

extension ConfigModelIsarQuerySortBy on QueryBuilder<ConfigModelIsar, ConfigModelIsar, QSortBy> {
  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterSortBy> sortByCurrProfileId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currProfileId', Sort.asc);
    });
  }

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterSortBy> sortByCurrProfileIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currProfileId', Sort.desc);
    });
  }

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterSortBy> sortByIsDark() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDark', Sort.asc);
    });
  }

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterSortBy> sortByIsDarkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDark', Sort.desc);
    });
  }

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterSortBy> sortByLocale() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locale', Sort.asc);
    });
  }

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterSortBy> sortByLocaleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locale', Sort.desc);
    });
  }
}

extension ConfigModelIsarQuerySortThenBy on QueryBuilder<ConfigModelIsar, ConfigModelIsar, QSortThenBy> {
  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterSortBy> thenByCurrProfileId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currProfileId', Sort.asc);
    });
  }

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterSortBy> thenByCurrProfileIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currProfileId', Sort.desc);
    });
  }

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterSortBy> thenByIsDark() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDark', Sort.asc);
    });
  }

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterSortBy> thenByIsDarkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDark', Sort.desc);
    });
  }

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterSortBy> thenByLocale() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locale', Sort.asc);
    });
  }

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterSortBy> thenByLocaleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locale', Sort.desc);
    });
  }
}

extension ConfigModelIsarQueryWhereDistinct on QueryBuilder<ConfigModelIsar, ConfigModelIsar, QDistinct> {
  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QDistinct> distinctByCurrProfileId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'currProfileId');
    });
  }

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QDistinct> distinctByIsDark() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isDark');
    });
  }

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QDistinct> distinctByLocale({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'locale', caseSensitive: caseSensitive);
    });
  }
}

extension ConfigModelIsarQueryProperty on QueryBuilder<ConfigModelIsar, ConfigModelIsar, QQueryProperty> {
  QueryBuilder<ConfigModelIsar, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ConfigModelIsar, int?, QQueryOperations> currProfileIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'currProfileId');
    });
  }

  QueryBuilder<ConfigModelIsar, bool, QQueryOperations> isDarkProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isDark');
    });
  }

  QueryBuilder<ConfigModelIsar, String, QQueryOperations> localeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'locale');
    });
  }
}
