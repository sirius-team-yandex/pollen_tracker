abstract class PollenLocalStorageDatasource {
  Future<void> initialize();
  Future<bool> deletePollenRecord(int id);
  // TODO(stebl): after model inserted
  // Future<List<PollenRecordModel>> fetchAllPollenRecordModels();
  // Future<int?> insertPollenRecordModel(PollenRecordModel pollenRecordModel);
  // Future<int?> updatePollenRecordModel(PollenRecordModel pollenRecordModel);
}
