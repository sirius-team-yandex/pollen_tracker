import 'package:injectable/injectable.dart';
import 'package:pollen_tracker/data/datasources/mood_local_storage_datasource_isar_impl.dart';
import 'package:pollen_tracker/data/mappers/mood_record/mood_record_entity_to_model_isar_mapper.dart';
import 'package:pollen_tracker/data/mappers/mood_record/mood_record_model_isar_to_entity_mapper.dart';
import 'package:pollen_tracker/domain/models/mood_record_entity.dart';
import 'package:pollen_tracker/domain/repositories/mood_record_repository.dart';

@Injectable(as: MoodRecordsRepository)
class MoodRecordRepositoryIsarImpl implements MoodRecordsRepository {
  MoodRecordRepositoryIsarImpl({
    required this.moodLocalStorageDatasource,
    required this.moodRecordModelIsarToEntityMapper,
    required this.moodRecordEntityToModelIsarMapper,
  });

  MoodLocalStorageDatasourceIsar moodLocalStorageDatasource;
  MoodRecordModelIsarToEntityMapper moodRecordModelIsarToEntityMapper;
  MoodRecordEntityToModelIsarMapper moodRecordEntityToModelIsarMapper;

  @override
  Future<bool> deleteMoodRecord(MoodRecordEntity moodRecordModel) {
    // Parse entity to isar ID
    final id = moodRecordEntityToModelIsarMapper.map(moodRecordModel).id;
    return moodLocalStorageDatasource.deleteMoodRecord(id);
  }

  @override
  Future<List<MoodRecordEntity>> fetchAllmoodRecordModels(int profileId, DateTime date) async {
    final DateTime firstDayOfMonth = DateTime(date.year, date.month, 1);
    final DateTime lastDayOfMonth = DateTime(date.year, date.month + 1, 1).subtract(const Duration(days: 1));
    final List<MoodRecordEntity> moodRecordsEntities = moodRecordModelIsarToEntityMapper
        .mapList(
          await moodLocalStorageDatasource.fetchAllmoodRecordModels(profileId, firstDayOfMonth, lastDayOfMonth),
        )
        .toList();
    return moodRecordsEntities;
  }

  @override
  Future<bool> addMoodRecordModel(MoodRecordEntity moodRecordEntity) async {
    final success = await moodLocalStorageDatasource.insertMoodRecordModel(
      moodRecordEntityToModelIsarMapper.map(moodRecordEntity),
    );

    return success != null;
  }

  @override
  Future<bool> updateMoodRecordModel(MoodRecordEntity moodRecordEntity) async {
    final success = await moodLocalStorageDatasource.updateMoodRecordModel(
      moodRecordEntityToModelIsarMapper.map(moodRecordEntity),
    );
    return success != null;
  }
}
