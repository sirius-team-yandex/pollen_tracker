import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:pollen_tracker/firebase_options.dart';
import 'package:flutter/foundation.dart';
import 'dart:developer';

Future<void> initFirebase() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  log.call('Locator: Firebase initialized!');
  _initCrashlytics();
}

void _initCrashlytics() {
  FlutterError.onError = (errorDetail) {
    log.call('Crashlytics: Caught error in FlutterError.onError\n$errorDetail');
    FirebaseCrashlytics.instance.recordFlutterError(errorDetail);
  };

  PlatformDispatcher.instance.onError = (error, stack) {
    log.call('Crashlytics: Catch error in PlatformDispatcher.onError\n$error');
    FirebaseCrashlytics.instance.recordError(
      error,
      stack,
      fatal: true,
    );
    return true;
  };
}
