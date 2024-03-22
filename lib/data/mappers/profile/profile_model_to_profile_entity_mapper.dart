import 'package:pollen_tracker/common/enums/species_enums.dart';
import 'package:pollen_tracker/data/mappers/string_to_species_mapper.dart';
import 'package:pollen_tracker/data/models/local/profile_model_isar.dart';
import 'package:pollen_tracker/domain/models/profile_entity.dart';

class ProfileModelIsarToEntityMapper {
  ProfileEntity map(ProfileModelIsar profileModelIsar) {
    return ProfileEntity(
      id: profileModelIsar.id,
      name: profileModelIsar.name,
      city: profileModelIsar.city,
      //TODO ПРОВЕРИТЬ РЕАЛИЗАЦИЮ
      species: profileModelIsar.species.map((e) => stringSpeciesMapper[e] ?? Species.others).toList(),
    );
  }

  List<ProfileEntity> mapList(List<ProfileModelIsar> profileModelIsar) {
    return profileModelIsar.map((e) => map(e)).toList();
  }
}
