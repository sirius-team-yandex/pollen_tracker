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

part 'profile_bloc.freezed.dart';
part 'profile_events.dart';
part 'profile_states.dart';

extension ProfileBuilder on BuildContext {
  ProfileState? get profileState => BlocProvider.of<ProfileBloc>(this).state;
  ProfileBloc? get profileBloc => BlocProvider.of<ProfileBloc>(this);
}

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileRepository profileRepository;
  final ConfigRepository configRepository;
  //final SomeOtherBloc someOtherBloc;
  //late StreamSubscription streamSubscription;

  ProfileBloc({required this.profileRepository, required this.configRepository})
      : super(const ProfileState.noProfile()) {
    /*
    streamSubscription = editorBloc.stream.listen((state) {
      if (state is SomeOtherBlockState) {
        add(SomeEvent(args));
      }
      if (state is SomeOtherBlockState) {
        add(SomeEvent(args));
      }
    });*/
    on<LoadProfile>(_load);
    on<SelectProfile>(_profileSelection);
    on<EndRegistration>(_endRegistration);
    on<LogOut>(_profileLogOut);
    //additional
    on<ChangeProfile>(_changeProfile);
    on<DeleteProfile>(_deleteProfile);
  }

  void loadProfile() {
    add(const ProfileEvent.load());
  }

  void selectProfile(int? id) {
    add(ProfileEvent.select(id: id));
  }

  void endRegistration(ProfileEntity profile) {
    add(ProfileEvent.endRegistration(profile));
  }

  void logOut() {
    add(const ProfileEvent.logOut());
  }

  void changeProfile(ProfileEntity newProfile) {
    add(ProfileEvent.changeProfile(newProfile));
  }

  void deleteProfile(int id) {
    add(ProfileEvent.deleteProfile(id: id));
  }

  Future<void> _load(LoadProfile event, Emitter<ProfileState> emit) async {
    try {
      ConfigEntity? config = await configRepository.fetchConfigModel();
      int? id = config?.lastId;

      if (id == null) {
        emit(
          const ProfileState.noProfile(),
        );
        logger.i('Emit NoProfileState');
      } else {
        final profile = await profileRepository.fetchProfileModelById(id);
        if (profile != null) {
          emit(ProfileState.inProfile(profile));
          logger.i('Emit InProfileState');
        } else {
          emit(const ProfileState.noProfile());
          logger.i('NoProfileById => Emit NoProfileState');
        }
      }
    } catch (e) {
      _error(e, emit, 'Error on Loading');
    }
  }

  Future<void> _profileSelection(
      SelectProfile event, Emitter<ProfileState> emit,) async {
    try {
      int? id = event.id;
      if (id == null) {
        emit(
          const ProfileState.registration(),
        );
        logger.i('Emit ProfileStateRegistaration');
      } else {
        final profile = await profileRepository.fetchProfileModelById(id);
        if (profile != null) {
          emit(ProfileState.inProfile(profile));
          logger.i('Emit InProfileState');
        } else {
          _error(Exception('profile not found'), emit, 'Error on Selection');
        }
      }
    } catch (e) {
      _error(e, emit, 'Error on Selection');
    }
  }

  Future<void> _endRegistration(
      EndRegistration event, Emitter<ProfileState> emit,) async {
    try {
      emit(
        ProfileState.inProfile(event.profile),
      );
      logger.i('Emit InProfileState');
    } catch (e) {
      _error(e, emit, 'Error on Registration');
    }
  }

  Future<void> _profileLogOut(LogOut event, Emitter<ProfileState> emit) async {
    try {
      emit(
        const ProfileState.noProfile(),
      );
      logger.i('Emit InProfileState');
    } catch (e) {
      _error(e, emit, 'Error on LogOut');
    }
  }

  Future<void> _changeProfile(
      ChangeProfile event, Emitter<ProfileState> emit,) async {
    //someaction
    try {
      emit(
        ProfileState.inProfile(event.newProfile),
      );
      logger.i('Changed profile');
    } catch (e) {
      _error(e, emit, 'Error on profile changing');
    }
  }

  Future<void> _deleteProfile(
      DeleteProfile event, Emitter<ProfileState> emit,) async {
    try {
      int id = event.id;
      bool success = await profileRepository.deleteProfileModel(id);
      if (success) {
        success &= await configRepository.updateModelId(null);
        if (success) {
          emit(
            const ProfileState.noProfile(),
          );
          logger.i('Emit NoProfileState');
        } else {
          _error(Exception('cant clear Config.lastIndex '), emit,
              'Error on logOut',);
        }
      } else {
        _error(Exception('cant delete profile'), emit, 'Error on logOut');
      }
      //TODO ADD POP UP
    } catch (e) {
      _error(e, emit, 'Error on deleting profile');
    }
  }

  Future<void> _error(Object e, Emitter<ProfileState> emit,
      [String message = 'Error',]) async {
    logger.e('$message: $e');
    emit(const ProfileState.error());
  }
}
