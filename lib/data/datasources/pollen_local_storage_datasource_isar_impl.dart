import 'package:injectable/injectable.dart';
import 'package:pollen_tracker/domain/datasources/pollen_local_storage_datasource.dart';

@injectable
class PollenLocalStorageDatasourceIsarImpl implements PollenLocalStorageDatasource {
  @override
  Future<bool> deletePollenRecord(int id) {
    // TODO: implement deletePollenRecord
    throw UnimplementedError();
  }

  @override
  Future<void> initialize() {
    // TODO: implement initialize
    throw UnimplementedError();
  }
}
