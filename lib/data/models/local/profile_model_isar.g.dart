// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model_isar.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetProfileModelIsarCollection on Isar {
  IsarCollection<ProfileModelIsar> get profileModelIsars => this.collection();
}

const ProfileModelIsarSchema = CollectionSchema(
  name: r'ProfileModelIsar',
  id: 3858967291642688718,
  properties: {
    r'cityId': PropertySchema(
      id: 0,
      name: r'cityId',
      type: IsarType.long,
    ),
    r'name': PropertySchema(
      id: 1,
      name: r'name',
      type: IsarType.string,
    ),
    r'species': PropertySchema(
      id: 2,
      name: r'species',
      type: IsarType.stringList,
    )
  },
  estimateSize: _profileModelIsarEstimateSize,
  serialize: _profileModelIsarSerialize,
  deserialize: _profileModelIsarDeserialize,
  deserializeProp: _profileModelIsarDeserializeProp,
  idName: r'profileId',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _profileModelIsarGetId,
  getLinks: _profileModelIsarGetLinks,
  attach: _profileModelIsarAttach,
  version: '3.1.0+1',
);

int _profileModelIsarEstimateSize(
  ProfileModelIsar object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.species.length * 3;
  {
    for (var i = 0; i < object.species.length; i++) {
      final value = object.species[i];
      bytesCount += value.length * 3;
    }
  }
  return bytesCount;
}

void _profileModelIsarSerialize(
  ProfileModelIsar object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.cityId);
  writer.writeString(offsets[1], object.name);
  writer.writeStringList(offsets[2], object.species);
}

ProfileModelIsar _profileModelIsarDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ProfileModelIsar(
    cityId: reader.readLong(offsets[0]),
    name: reader.readString(offsets[1]),
    profileId: id,
    species: reader.readStringList(offsets[2]) ?? [],
  );
  return object;
}

P _profileModelIsarDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readStringList(offset) ?? []) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _profileModelIsarGetId(ProfileModelIsar object) {
  return object.profileId;
}

List<IsarLinkBase<dynamic>> _profileModelIsarGetLinks(ProfileModelIsar object) {
  return [];
}

void _profileModelIsarAttach(
    IsarCollection<dynamic> col, Id id, ProfileModelIsar object) {
  object.profileId = id;
}

extension ProfileModelIsarQueryWhereSort
    on QueryBuilder<ProfileModelIsar, ProfileModelIsar, QWhere> {
  QueryBuilder<ProfileModelIsar, ProfileModelIsar, QAfterWhere> anyProfileId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ProfileModelIsarQueryWhere
    on QueryBuilder<ProfileModelIsar, ProfileModelIsar, QWhereClause> {
  QueryBuilder<ProfileModelIsar, ProfileModelIsar, QAfterWhereClause>
      profileIdEqualTo(Id profileId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: profileId,
        upper: profileId,
      ));
    });
  }

  QueryBuilder<ProfileModelIsar, ProfileModelIsar, QAfterWhereClause>
      profileIdNotEqualTo(Id profileId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: profileId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: profileId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: profileId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: profileId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<ProfileModelIsar, ProfileModelIsar, QAfterWhereClause>
      profileIdGreaterThan(Id profileId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: profileId, includeLower: include),
      );
    });
  }

  QueryBuilder<ProfileModelIsar, ProfileModelIsar, QAfterWhereClause>
      profileIdLessThan(Id profileId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: profileId, includeUpper: include),
      );
    });
  }

  QueryBuilder<ProfileModelIsar, ProfileModelIsar, QAfterWhereClause>
      profileIdBetween(
    Id lowerProfileId,
    Id upperProfileId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerProfileId,
        includeLower: includeLower,
        upper: upperProfileId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ProfileModelIsarQueryFilter
    on QueryBuilder<ProfileModelIsar, ProfileModelIsar, QFilterCondition> {
  QueryBuilder<ProfileModelIsar, ProfileModelIsar, QAfterFilterCondition>
      cityIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cityId',
        value: value,
      ));
    });
  }

  QueryBuilder<ProfileModelIsar, ProfileModelIsar, QAfterFilterCondition>
      cityIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cityId',
        value: value,
      ));
    });
  }

  QueryBuilder<ProfileModelIsar, ProfileModelIsar, QAfterFilterCondition>
      cityIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cityId',
        value: value,
      ));
    });
  }

  QueryBuilder<ProfileModelIsar, ProfileModelIsar, QAfterFilterCondition>
      cityIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cityId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ProfileModelIsar, ProfileModelIsar, QAfterFilterCondition>
      nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileModelIsar, ProfileModelIsar, QAfterFilterCondition>
      nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileModelIsar, ProfileModelIsar, QAfterFilterCondition>
      nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileModelIsar, ProfileModelIsar, QAfterFilterCondition>
      nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileModelIsar, ProfileModelIsar, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileModelIsar, ProfileModelIsar, QAfterFilterCondition>
      nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileModelIsar, ProfileModelIsar, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileModelIsar, ProfileModelIsar, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileModelIsar, ProfileModelIsar, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<ProfileModelIsar, ProfileModelIsar, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<ProfileModelIsar, ProfileModelIsar, QAfterFilterCondition>
      profileIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'profileId',
        value: value,
      ));
    });
  }

  QueryBuilder<ProfileModelIsar, ProfileModelIsar, QAfterFilterCondition>
      profileIdGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'profileId',
        value: value,
      ));
    });
  }

  QueryBuilder<ProfileModelIsar, ProfileModelIsar, QAfterFilterCondition>
      profileIdLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'profileId',
        value: value,
      ));
    });
  }

  QueryBuilder<ProfileModelIsar, ProfileModelIsar, QAfterFilterCondition>
      profileIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'profileId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ProfileModelIsar, ProfileModelIsar, QAfterFilterCondition>
      speciesElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'species',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileModelIsar, ProfileModelIsar, QAfterFilterCondition>
      speciesElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'species',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileModelIsar, ProfileModelIsar, QAfterFilterCondition>
      speciesElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'species',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileModelIsar, ProfileModelIsar, QAfterFilterCondition>
      speciesElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'species',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileModelIsar, ProfileModelIsar, QAfterFilterCondition>
      speciesElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'species',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileModelIsar, ProfileModelIsar, QAfterFilterCondition>
      speciesElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'species',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileModelIsar, ProfileModelIsar, QAfterFilterCondition>
      speciesElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'species',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileModelIsar, ProfileModelIsar, QAfterFilterCondition>
      speciesElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'species',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileModelIsar, ProfileModelIsar, QAfterFilterCondition>
      speciesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'species',
        value: '',
      ));
    });
  }

  QueryBuilder<ProfileModelIsar, ProfileModelIsar, QAfterFilterCondition>
      speciesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'species',
        value: '',
      ));
    });
  }

  QueryBuilder<ProfileModelIsar, ProfileModelIsar, QAfterFilterCondition>
      speciesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'species',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<ProfileModelIsar, ProfileModelIsar, QAfterFilterCondition>
      speciesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'species',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<ProfileModelIsar, ProfileModelIsar, QAfterFilterCondition>
      speciesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'species',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<ProfileModelIsar, ProfileModelIsar, QAfterFilterCondition>
      speciesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'species',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<ProfileModelIsar, ProfileModelIsar, QAfterFilterCondition>
      speciesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'species',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<ProfileModelIsar, ProfileModelIsar, QAfterFilterCondition>
      speciesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'species',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension ProfileModelIsarQueryObject
    on QueryBuilder<ProfileModelIsar, ProfileModelIsar, QFilterCondition> {}

extension ProfileModelIsarQueryLinks
    on QueryBuilder<ProfileModelIsar, ProfileModelIsar, QFilterCondition> {}

extension ProfileModelIsarQuerySortBy
    on QueryBuilder<ProfileModelIsar, ProfileModelIsar, QSortBy> {
  QueryBuilder<ProfileModelIsar, ProfileModelIsar, QAfterSortBy>
      sortByCityId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cityId', Sort.asc);
    });
  }

  QueryBuilder<ProfileModelIsar, ProfileModelIsar, QAfterSortBy>
      sortByCityIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cityId', Sort.desc);
    });
  }

  QueryBuilder<ProfileModelIsar, ProfileModelIsar, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<ProfileModelIsar, ProfileModelIsar, QAfterSortBy>
      sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension ProfileModelIsarQuerySortThenBy
    on QueryBuilder<ProfileModelIsar, ProfileModelIsar, QSortThenBy> {
  QueryBuilder<ProfileModelIsar, ProfileModelIsar, QAfterSortBy>
      thenByCityId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cityId', Sort.asc);
    });
  }

  QueryBuilder<ProfileModelIsar, ProfileModelIsar, QAfterSortBy>
      thenByCityIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cityId', Sort.desc);
    });
  }

  QueryBuilder<ProfileModelIsar, ProfileModelIsar, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<ProfileModelIsar, ProfileModelIsar, QAfterSortBy>
      thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<ProfileModelIsar, ProfileModelIsar, QAfterSortBy>
      thenByProfileId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'profileId', Sort.asc);
    });
  }

  QueryBuilder<ProfileModelIsar, ProfileModelIsar, QAfterSortBy>
      thenByProfileIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'profileId', Sort.desc);
    });
  }
}

extension ProfileModelIsarQueryWhereDistinct
    on QueryBuilder<ProfileModelIsar, ProfileModelIsar, QDistinct> {
  QueryBuilder<ProfileModelIsar, ProfileModelIsar, QDistinct>
      distinctByCityId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cityId');
    });
  }

  QueryBuilder<ProfileModelIsar, ProfileModelIsar, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProfileModelIsar, ProfileModelIsar, QDistinct>
      distinctBySpecies() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'species');
    });
  }
}

extension ProfileModelIsarQueryProperty
    on QueryBuilder<ProfileModelIsar, ProfileModelIsar, QQueryProperty> {
  QueryBuilder<ProfileModelIsar, int, QQueryOperations> profileIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'profileId');
    });
  }

  QueryBuilder<ProfileModelIsar, int, QQueryOperations> cityIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cityId');
    });
  }

  QueryBuilder<ProfileModelIsar, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<ProfileModelIsar, List<String>, QQueryOperations>
      speciesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'species');
    });
  }
}
