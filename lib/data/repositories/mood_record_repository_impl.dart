import 'package:pollen_tracker/data/datasources/mood_local_storage_datasource_isar_impl.dart';
import 'package:pollen_tracker/data/mappers/mood_record/mood_record_entity_to_model_isar_mapper.dart';
import 'package:pollen_tracker/data/mappers/mood_record/mood_record_model_isar_to_entity_mapper.dart';
import 'package:pollen_tracker/domain/models/mood_record_entity.dart';
import 'package:pollen_tracker/domain/repositories/mood_record_repository.dart';
import 'package:pollen_tracker/domain/repositories/mood_record_subject.dart';
import 'package:rxdart/rxdart.dart';

class MoodRecordRepositoryIsarImpl
    implements MoodRecordRepository, MoodRecordSubject {
  MoodRecordRepositoryIsarImpl({
    required this.datasource,
    required this.moodRecordModelIsarToEntityMapper,
    required this.moodRecordEntityToModelIsarMapper,
  }) {
    _subscribeToDatasource();
  }

  MoodLocalStorageDatasourceIsar datasource;
  MoodRecordModelIsarToEntityMapper moodRecordModelIsarToEntityMapper;
  MoodRecordEntityToModelIsarMapper moodRecordEntityToModelIsarMapper;
  // Constant ownerId at the time, should be provided dynamicly later!!
  final _ownerId = 0;

  final BehaviorSubject<List<MoodRecordEntity>> _subject = BehaviorSubject();

  @override
  Future<bool> deleteByDate(DateTime date) {
    return datasource.delete(_ownerId, date);
  }

  @override
  Future<List<MoodRecordEntity>> getAll() async {
    return moodRecordModelIsarToEntityMapper.mapList(await datasource.getAll());
  }

  @override
  Future<MoodRecordEntity?> getByDate(DateTime date) async {
    final model = await datasource.get(_ownerId, date);
    if (model == null) {
      return null;
    }
    return moodRecordModelIsarToEntityMapper.map(model);
  }

  @override
  Future<bool> insert(MoodRecordEntity entity) {
    final model = moodRecordEntityToModelIsarMapper.map(entity, _ownerId);
    return datasource.insert(model);
  }

  @override
  Future<bool> insertAll(List<MoodRecordEntity> entities) {
    final models =
        moodRecordEntityToModelIsarMapper.mapList(entities, _ownerId);
    return datasource.insertAll(models);
  }

  @override
  Stream<List<MoodRecordEntity>> observe() {
    throw UnimplementedError();
  }

  void _subscribeToDatasource() async {
    final stream = await datasource.observeAll();

    stream.listen((models) {
      _subject.add(moodRecordModelIsarToEntityMapper.mapList(models));
    });
  }
}
