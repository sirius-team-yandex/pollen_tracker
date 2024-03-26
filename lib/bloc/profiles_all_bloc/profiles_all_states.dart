part of 'profiles_all_bloc.dart';

@freezed
class ProfilesAllState with _$ProfilesAllState {
  const factory ProfilesAllState.init() = _InitProfilesAllState;

  const factory ProfilesAllState.loaded(List<ProfileEntity> profiles) = _LoadedProfilesState;

  const factory ProfilesAllState.error() = _ErrorProfilesState;
}
