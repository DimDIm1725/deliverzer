import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';

import '../../../../presentation/utils/riverpod_framework.dart';
import '../../../error/app_exception.dart';
import '../extensions/firebase_error_extension.dart';

part 'firebase_auth_facade.g.dart';

//Our main API is Firebase
@Riverpod(keepAlive: true)
FirebaseAuthFacade firebaseAuthFacade(FirebaseAuthFacadeRef ref) {
  return FirebaseAuthFacade(
    firebaseAuth: FirebaseAuth.instance,
  );
}

class FirebaseAuthFacade {
  FirebaseAuthFacade({
    required this.firebaseAuth,
  });

  final FirebaseAuth firebaseAuth;

  Future<UserCredential> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    return await _tryCatchWrapper(
      () async {
        return await firebaseAuth.signInWithEmailAndPassword(
          email: email,
          password: password,
        );
      },
    );
  }

  Future<User> getCurrentUser() async {
    return await _tryCatchWrapper(
      () async {
        final currentUser = firebaseAuth.currentUser;
        if (currentUser != null) {
          return currentUser;
        } else {
          throw const ServerException(
            type: ServerExceptionType.unauthorized,
            message: 'User is not signed-in',
          );
        }
      },
    );
  }

  Future<void> signOut() async {
    return await _tryCatchWrapper(
      () async {
        return await firebaseAuth.signOut();
      },
    );
  }

  FutureOr<T> _tryCatchWrapper<T>(FutureOr<T> Function() body) async {
    try {
      return await body();
    } on Exception catch (e) {
      throw e.firebaseErrorToServerException();
    }
  }
}
