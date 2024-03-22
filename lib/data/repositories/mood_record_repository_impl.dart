import 'package:injectable/injectable.dart';
import 'package:pollen_tracker/data/datasources/mood_local_storage_datasource_isar_impl.dart';
import 'package:pollen_tracker/data/mappers/mood_record/mood_record_entity_to_model_isar_mapper.dart';
import 'package:pollen_tracker/data/mappers/mood_record/mood_record_model_isar_to_entity_mapper.dart';
import 'package:pollen_tracker/domain/models/mood_record_entity.dart';
import 'package:pollen_tracker/domain/repositories/mood_record_repository.dart';

@Injectable(as: MoodRecordRepository)
class MoodRecordRepositoryIsarImpl implements MoodRecordRepository {
  MoodRecordRepositoryIsarImpl({
    required this.moodLocalStorageDatasource,
    required this.moodRecordModelIsarToEntityMapper,
    required this.moodRecordEntityToModelIsarMapper,
  });

  MoodLocalStorageDatasourceIsar moodLocalStorageDatasource;
  MoodRecordModelIsarToEntityMapper moodRecordModelIsarToEntityMapper;
  MoodRecordEntityToModelIsarMapper moodRecordEntityToModelIsarMapper;

  @override
  Future<bool> deleteMoodRecord(int id) {
    return moodLocalStorageDatasource.deleteMoodRecord(id);
  }

  @override
  Future<List<MoodRecordEntity>> fetchAllmoodRecordModels() async {
    final List<MoodRecordEntity> moodRecordsEntities = moodRecordModelIsarToEntityMapper
        .mapList(
          await moodLocalStorageDatasource.fetchAllmoodRecordModels(),
        )
        .toList();
    return moodRecordsEntities;
  }

  @override
  Future<int?> insertMoodRecordModel(MoodRecordEntity moodRecordEntity) {
    return moodLocalStorageDatasource.insertMoodRecordModel(
      moodRecordEntityToModelIsarMapper.map(moodRecordEntity),
    );
  }

  @override
  Future<int?> updateMoodRecordModel(MoodRecordEntity moodRecordEntity) {
    return moodLocalStorageDatasource.updateMoodRecordModel(
      moodRecordEntityToModelIsarMapper.map(moodRecordEntity),
    );
  }
}
