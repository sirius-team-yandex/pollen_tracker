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
    r'isDark': PropertySchema(
      id: 0,
      name: r'isDark',
      type: IsarType.bool,
    ),
    r'locale': PropertySchema(
      id: 1,
      name: r'locale',
      type: IsarType.string,
    )
  },
  estimateSize: _configModelIsarEstimateSize,
  serialize: _configModelIsarSerialize,
  deserialize: _configModelIsarDeserialize,
  deserializeProp: _configModelIsarDeserializeProp,
  idName: r'lastId',
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
  writer.writeBool(offsets[0], object.isDark);
  writer.writeString(offsets[1], object.locale);
}

ConfigModelIsar _configModelIsarDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ConfigModelIsar(
    isDark: reader.readBool(offsets[0]),
    lastId: id,
    locale: reader.readString(offsets[1]),
  );
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
      return (reader.readBool(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _configModelIsarGetId(ConfigModelIsar object) {
  return object.lastId ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _configModelIsarGetLinks(ConfigModelIsar object) {
  return [];
}

void _configModelIsarAttach(
    IsarCollection<dynamic> col, Id id, ConfigModelIsar object) {
  object.lastId = id;
}

extension ConfigModelIsarQueryWhereSort
    on QueryBuilder<ConfigModelIsar, ConfigModelIsar, QWhere> {
  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterWhere> anyLastId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ConfigModelIsarQueryWhere
    on QueryBuilder<ConfigModelIsar, ConfigModelIsar, QWhereClause> {
  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterWhereClause>
      lastIdEqualTo(Id lastId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lastId,
        upper: lastId,
      ));
    });
  }

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterWhereClause>
      lastIdNotEqualTo(Id lastId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: lastId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: lastId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: lastId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: lastId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterWhereClause>
      lastIdGreaterThan(Id lastId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: lastId, includeLower: include),
      );
    });
  }

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterWhereClause>
      lastIdLessThan(Id lastId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: lastId, includeUpper: include),
      );
    });
  }

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterWhereClause>
      lastIdBetween(
    Id lowerLastId,
    Id upperLastId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerLastId,
        includeLower: includeLower,
        upper: upperLastId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ConfigModelIsarQueryFilter
    on QueryBuilder<ConfigModelIsar, ConfigModelIsar, QFilterCondition> {
  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterFilterCondition>
      isDarkEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isDark',
        value: value,
      ));
    });
  }

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterFilterCondition>
      lastIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastId',
      ));
    });
  }

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterFilterCondition>
      lastIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastId',
      ));
    });
  }

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterFilterCondition>
      lastIdEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastId',
        value: value,
      ));
    });
  }

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterFilterCondition>
      lastIdGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastId',
        value: value,
      ));
    });
  }

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterFilterCondition>
      lastIdLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastId',
        value: value,
      ));
    });
  }

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterFilterCondition>
      lastIdBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterFilterCondition>
      localeEqualTo(
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

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterFilterCondition>
      localeGreaterThan(
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

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterFilterCondition>
      localeLessThan(
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

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterFilterCondition>
      localeBetween(
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

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterFilterCondition>
      localeStartsWith(
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

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterFilterCondition>
      localeEndsWith(
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

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterFilterCondition>
      localeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'locale',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterFilterCondition>
      localeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'locale',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterFilterCondition>
      localeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'locale',
        value: '',
      ));
    });
  }

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterFilterCondition>
      localeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'locale',
        value: '',
      ));
    });
  }
}

extension ConfigModelIsarQueryObject
    on QueryBuilder<ConfigModelIsar, ConfigModelIsar, QFilterCondition> {}

extension ConfigModelIsarQueryLinks
    on QueryBuilder<ConfigModelIsar, ConfigModelIsar, QFilterCondition> {}

extension ConfigModelIsarQuerySortBy
    on QueryBuilder<ConfigModelIsar, ConfigModelIsar, QSortBy> {
  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterSortBy> sortByIsDark() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDark', Sort.asc);
    });
  }

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterSortBy>
      sortByIsDarkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDark', Sort.desc);
    });
  }

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterSortBy> sortByLocale() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locale', Sort.asc);
    });
  }

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterSortBy>
      sortByLocaleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locale', Sort.desc);
    });
  }
}

extension ConfigModelIsarQuerySortThenBy
    on QueryBuilder<ConfigModelIsar, ConfigModelIsar, QSortThenBy> {
  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterSortBy> thenByIsDark() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDark', Sort.asc);
    });
  }

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterSortBy>
      thenByIsDarkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDark', Sort.desc);
    });
  }

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterSortBy> thenByLastId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastId', Sort.asc);
    });
  }

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterSortBy>
      thenByLastIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastId', Sort.desc);
    });
  }

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterSortBy> thenByLocale() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locale', Sort.asc);
    });
  }

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QAfterSortBy>
      thenByLocaleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locale', Sort.desc);
    });
  }
}

extension ConfigModelIsarQueryWhereDistinct
    on QueryBuilder<ConfigModelIsar, ConfigModelIsar, QDistinct> {
  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QDistinct> distinctByIsDark() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isDark');
    });
  }

  QueryBuilder<ConfigModelIsar, ConfigModelIsar, QDistinct> distinctByLocale(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'locale', caseSensitive: caseSensitive);
    });
  }
}

extension ConfigModelIsarQueryProperty
    on QueryBuilder<ConfigModelIsar, ConfigModelIsar, QQueryProperty> {
  QueryBuilder<ConfigModelIsar, int, QQueryOperations> lastIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastId');
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
