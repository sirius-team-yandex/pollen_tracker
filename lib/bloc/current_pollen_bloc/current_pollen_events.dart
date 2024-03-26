part of 'current_pollen_bloc.dart';

@freezed
abstract class CurrentPollenEvent with _$CurrentPollenEvent {
  const factory CurrentPollenEvent.load(List<PollenEntity>? pollen) = _LoadCurrentPollen;
}
