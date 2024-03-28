part of 'current_pollen_bloc.dart';

@freezed
class CurrentPollenState with _$CurrentPollenState {
  const factory CurrentPollenState.init() = _InitialCurrentPollenState;

  const factory CurrentPollenState.loaded(List<ForecastVo> pollensCurrent) = _CurrentPollenLoadedState;

  const factory CurrentPollenState.error() = _ErrorCurrentPollenState;
}
