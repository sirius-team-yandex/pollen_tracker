import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pollen_tracker/common/logger.dart';
import 'package:pollen_tracker/domain/models/config_entity.dart';
import 'package:pollen_tracker/domain/models/profile_entity.dart';
import 'package:pollen_tracker/domain/repositories/config_repository.dart';
import 'package:pollen_tracker/domain/repositories/profile_repository.dart';
import 'package:pollen_tracker/domain/repositories/profile_subject.dart';

part 'profiles_all_bloc.freezed.dart';
part 'profiles_all_events.dart';
part 'profiles_all_states.dart';

extension ProfilesAllBuilder on BuildContext {
  ProfilesAllState? get profilesAllState => BlocProvider.of<ProfilesAllBloc>(this).state;
  ProfilesAllBloc? get profilesAllBloc => BlocProvider.of<ProfilesAllBloc>(this);
}

@injectable
class ProfilesAllBloc extends Bloc<ProfilesAllEvent, ProfilesAllState> {
  final ProfileSubject profileSubject;
  final ProfileRepository profileRepository;
  final ConfigRepository configRepository;

  late StreamSubscription profilesAllSubscription;

  ProfilesAllBloc({required this.profileRepository, required this.configRepository, required this.profileSubject})
      : super(const ProfilesAllState.init()) {
    profilesAllSubscription = profileSubject.observeAll().listen((profilesAll) {
      add(ProfilesAllEvent.load(profilesAll));
      logger.i('Call ProfilesAllEvent.load on ProfilesAllBloc from stream');
    })
      ..onError((e) {
        _error(e, 'Error on ProfilesAllBloc from stream');
      });

    on<_LoadProfiles>(_loadProfiles);
    on<_SelectProfile>(_selectProfile);
    on<_AddProfile>(_addProfile);
    on<_DeleteProfile>(_deleteProfile);
  }

  void loadProfiles(List<ProfileEntity> profiles) {
    add(ProfilesAllEvent.load(profiles));
  }

  void selectProfile(int id) {
    add(ProfilesAllEvent.select(id));
  }

  void addProfile(ProfileEntity profile) {
    add(ProfilesAllEvent.add(profile));
  }

  void deleteProfile(int id) {
    add(ProfilesAllEvent.delete(id));
  }

  Future<void> _loadProfiles(_LoadProfiles event, Emitter<ProfilesAllState> emit) async {
    try {
      emit(ProfilesAllState.loaded(event.profiles));
      logger.i('Emit loaded state from ProfilesAllBloc');
    } catch (e) {
      _error(e, 'Error on loading profile from ProfilesAllBloc', emit);
    }
  }

  Future<void> _selectProfile(_SelectProfile event, Emitter<ProfilesAllState> emit) async {
    try {
      final ConfigEntity config = await configRepository.get();
      await configRepository.set(
        config.copyWith(currProfileId: event.id),
      );
      logger.i('Set Config.currProfileId to ${event.id} from ProfilesAllBloc');
    } catch (e) {
      _error(e, 'Error on selecting profile from ProfilesAllBloc', emit);
    }
  }

  Future<void> _addProfile(_AddProfile event, Emitter<ProfilesAllState> emit) async {
    try {
      await profileRepository.insert(event.profile);
      logger.i('Add new profile from ProfillesAllBloc');
    } catch (e) {
      _error(e, 'Error on Adding new profile from ProfillesAllBloc', emit);
    }
  }

  Future<void> _deleteProfile(_DeleteProfile event, Emitter<ProfilesAllState> emit) async {
    try {
      await profileRepository.delete(event.id);
      logger.i('Delete profile ${event.id} from ProfillesAllBloc');
    } catch (e) {
      _error(e, 'Error on deleting ${event.id} profile from ProfillesAllBloc', emit);
    }
  }

  Future<void> _error(
    Object error, [
    String message = 'Error',
    Emitter<ProfilesAllState>? emit,
  ]) async {
    logger.e('$message: $error');
    emit?.call(const ProfilesAllState.error());
  }
}
