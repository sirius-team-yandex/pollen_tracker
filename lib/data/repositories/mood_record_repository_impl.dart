import 'package:injectable/injectable.dart';
import 'package:pollen_tracker/data/datasources/mood_local_storage_datasource_isar_impl.dart';
import 'package:pollen_tracker/data/mappers/mood_record/mood_record_entity_to_model_isar_mapper.dart';
import 'package:pollen_tracker/data/mappers/mood_record/mood_record_model_isar_to_entity_mapper.dart';
import 'package:pollen_tracker/data/models/local/mood_record_model_isar.dart';
import 'package:pollen_tracker/domain/models/mood_record_entity.dart';
import 'package:pollen_tracker/domain/repositories/mood_record_repository.dart';
import 'package:pollen_tracker/domain/repositories/mood_record_subject.dart';
import 'package:pollen_tracker/domain/repositories/profile_repository.dart';
import 'package:pollen_tracker/domain/repositories/profile_subject.dart';
import 'package:rxdart/transformers.dart';

@injectable
class MoodRecordRepositoryIsarImpl implements MoodRecordRepository, MoodRecordSubject {
  MoodRecordRepositoryIsarImpl({
    required this.datasource,
    required this.profileRepository,
    required this.profileSubject,
    required this.moodRecordModelIsarToEntityMapper,
    required this.moodRecordEntityToModelIsarMapper,
  });

  MoodLocalStorageDatasourceIsar datasource;
  MoodRecordModelIsarToEntityMapper moodRecordModelIsarToEntityMapper;
  MoodRecordEntityToModelIsarMapper moodRecordEntityToModelIsarMapper;
  ProfileSubject profileSubject;
  ProfileRepository profileRepository;

  @override
  Future<bool> deleteByDate(DateTime date) async {
    final profile = await profileRepository.getCurrent();
    final id = profile?.profileId;

    if (id == null) {
      return false;
    } else {
      return datasource.delete(id, date.toUtc());
    }
  }

  @override
  Future<bool> insert(MoodRecordEntity entity) async {
    final profile = await profileRepository.getCurrent();
    final id = profile?.profileId;

    if (id == null) {
      return false;
    } else {
      final model = moodRecordEntityToModelIsarMapper.map(entity, id);
      return datasource.insert(model);
    }
  }

  @override
  Future<bool> insertAll(List<MoodRecordEntity> entities) async {
    final profile = await profileRepository.getCurrent();
    final id = profile?.profileId;

    if (id == null) {
      return false;
    } else {
      final models = moodRecordEntityToModelIsarMapper.mapList(entities, id);
      return datasource.insertAll(models);
    }
  }

  @override
  Stream<List<MoodRecordEntity>> observeAll() {
    final stream = profileSubject
        .observeCurrent()
        .map((profile) => profile?.profileId)
        .switchMap(
          (id) => id == null ? _emptyStream() : datasource.observeAll(id),
        )
        .map(
          (model) => moodRecordModelIsarToEntityMapper.mapList(model),
        )
        .distinct();

    return stream;
  }

  @override
  Stream<MoodRecordEntity?> observeDay(DateTime date) {
    final lowerDate = date
        .copyWith(
          hour: 0,
          minute: 0,
          second: 0,
          millisecond: 0,
          microsecond: 0,
        )
        .toUtc();
    final upperDate = date
        .copyWith(
          hour: 23,
          minute: 59,
          second: 59,
          millisecond: 0,
          microsecond: 0,
        )
        .toUtc();

    return observeIn(lowerDate, upperDate).map((models) => models.firstOrNull).distinct();
  }

  @override
  Stream<List<MoodRecordEntity>> observeIn(
    DateTime lowerDate,
    DateTime upperDate,
  ) {
    final stream = profileSubject
        .observeCurrent()
        .map((profile) => profile?.profileId)
        .switchMap(
          (id) => id == null
              ? _emptyStream()
              : datasource.observeIn(
                  id,
                  lowerDate.toUtc(),
                  upperDate.toUtc(),
                ),
        )
        .map(
          (model) => moodRecordModelIsarToEntityMapper.mapList(model),
        )
        .distinct();

    return stream;
  }

  Stream<List<MoodRecordModelIsar>> _emptyStream() => Stream.value(List.empty());
}
