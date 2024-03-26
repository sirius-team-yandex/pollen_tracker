import 'package:injectable/injectable.dart';
import 'package:pollen_tracker/data/datasources/profile_local_storage_datasource_isar_impl.dart';
import 'package:pollen_tracker/data/mappers/profile/profile_entity_to_profile_model_mapper.dart';
import 'package:pollen_tracker/data/mappers/profile/profile_model_to_profile_entity_mapper.dart';
import 'package:pollen_tracker/domain/models/profile_entity.dart';
import 'package:pollen_tracker/domain/repositories/config_repository.dart';
import 'package:pollen_tracker/domain/repositories/config_subject.dart';
import 'package:pollen_tracker/domain/repositories/profile_repository.dart';
import 'package:pollen_tracker/domain/repositories/profile_subject.dart';
import 'package:rxdart/transformers.dart';

@injectable
class ProfileRepositoryIsarImpl implements ProfileRepository, ProfileSubject {
  ProfileRepositoryIsarImpl({
    required this.datasource,
    required this.configRepository,
    required this.configSubject,
    required this.profileModelIsarToEntityMapper,
    required this.profileEntityToModelIsarMapper,
  });

  final ProfileLocalStorageDatasourceIsar datasource;
  final ProfileModelIsarToEntityMapper profileModelIsarToEntityMapper;
  final ProfileEntityToModelIsarMapper profileEntityToModelIsarMapper;
  final ConfigRepository configRepository;
  final ConfigSubject configSubject;

  @override
  Future<bool> delete(int id) async {
    return datasource.deleteProfile(id);
  }

  @override
  Future<ProfileEntity?> get(int id) async {
    final model = await datasource.get(id);
    if (model == null) {
      return null;
    }

    return profileModelIsarToEntityMapper.map(model);
  }

  @override
  Future<bool> insert(ProfileEntity profile) async {
    final model = profileEntityToModelIsarMapper.map(profile);
    return datasource.insert(model);
  }

  @override
  Stream<List<ProfileEntity>> observeAll() {
    return datasource.observeAll().map((models) => profileModelIsarToEntityMapper.mapList(models)).distinct();
  }

  @override
  Stream<ProfileEntity?> observeCurrent() {
    final stream = configSubject
        .observe()
        .map((config) => config.currProfileId)
        .switchMap(
          (id) => id == null ? Stream.value(null) : datasource.observeById(id),
        )
        .map(
          (model) => model == null ? null : profileModelIsarToEntityMapper.map(model),
        )
        .distinct();

    return stream;
  }

  @override
  Future<ProfileEntity?> getCurrent() async {
    final config = await configRepository.get();
    final id = config.currProfileId;

    if (id == null) return null;

    return get(id);
  }
}
