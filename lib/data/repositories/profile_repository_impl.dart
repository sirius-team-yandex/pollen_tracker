import 'package:injectable/injectable.dart';
import 'package:pollen_tracker/data/datasources/profile_local_storage_datasource_isar_impl.dart';
import 'package:pollen_tracker/data/mappers/profile/profile_entity_to_profile_model_mapper.dart';
import 'package:pollen_tracker/data/mappers/profile/profile_model_to_profile_entity_mapper.dart';
import 'package:pollen_tracker/domain/models/profile_entity.dart';
import 'package:pollen_tracker/domain/repositories/profile_repository.dart';

@Injectable(as: ProfileRepository)
class ProfileRepositoryIsarImpl implements ProfileRepository {
  ProfileRepositoryIsarImpl(
    this.profileLocalStorageDatasource,
    this.profileModelIsarToEntityMapper,
    this.profileEntityToModelIsarMapper,
  );

  final ProfileLocalStorageDatasourceIsar profileLocalStorageDatasource;
  final ProfileModelIsarToEntityMapper profileModelIsarToEntityMapper;
  final ProfileEntityToModelIsarMapper profileEntityToModelIsarMapper;

  @override
  Future<List<ProfileEntity>> fetchAllProfileModels() async {
    final List<ProfileEntity> profilesEntities =
        profileModelIsarToEntityMapper.mapList(await profileLocalStorageDatasource.fetchAllProfileModels()).toList();
    return profilesEntities;
  }

  @override
  Future<bool> addNewProfileModel(ProfileEntity profileEntity) async {
    final success =
        await profileLocalStorageDatasource.addNewProfileModel(profileEntityToModelIsarMapper.map(profileEntity));
    return (success != null);
  }

  @override
  Future<bool> deleteProfileModel(int id) async {
    return profileLocalStorageDatasource.deleteProfile(id);
  }

  @override
  Future<ProfileEntity?> fetchProfileModelById(int id) async {
    final profileModel = await profileLocalStorageDatasource.fetchProfileModelById(id);
    if (profileModel != null) {
      return profileModelIsarToEntityMapper.map(profileModel);
    }
    return null;
  }

  @override
  Future<bool> updateProfileModelInfo(ProfileEntity profileEntity) async {
    final success = await profileLocalStorageDatasource.updateProfileModelInfo(
      profileEntityToModelIsarMapper.map(profileEntity),
    );
    return (success != null);
  }
}
