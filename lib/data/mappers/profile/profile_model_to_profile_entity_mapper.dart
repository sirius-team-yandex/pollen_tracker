import 'package:injectable/injectable.dart';
import 'package:pollen_tracker/data/mappers/string_to_species_mapper.dart';
import 'package:pollen_tracker/data/models/local/profile_model_isar.dart';
import 'package:pollen_tracker/domain/models/profile_entity.dart';

@injectable
class ProfileModelIsarToEntityMapper {
  ProfileModelIsarToEntityMapper({required this.stringSpeciesMapper});

  final StringSpeciesMapper stringSpeciesMapper;

  ProfileEntity map(ProfileModelIsar profileModelIsar) {
    return ProfileEntity(
      id: profileModelIsar.id,
      name: profileModelIsar.name,
      city: profileModelIsar.city,
      //TODO ПРОВЕРИТЬ РЕАЛИЗАЦИЮ
      species: profileModelIsar.species
          .map((e) => stringSpeciesMapper.map(e))
          .toList(),
    );
  }

  List<ProfileEntity> mapList(List<ProfileModelIsar> profileModelIsar) {
    return profileModelIsar.map((e) => map(e)).toList();
  }
}
