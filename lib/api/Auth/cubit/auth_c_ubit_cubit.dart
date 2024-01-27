// ignore: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:booky/controller/controller.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';

part 'auth_c_ubit_state.dart';

// ... (imports)

class AuthCubit extends Cubit<AuthCUbitState> {
  AuthCubit() : super(AuthCUbitInitial());

  void signUp(String email, String password) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      emit(Authsucces(auth.currentUser));

      // Consider immediate navigation without delay
      Get.toNamed('/Logins');
    } on FirebaseAuthException catch (e) {
      emit(AuthError(SnackBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        duration: const Duration(seconds: 1),
        behavior: SnackBarBehavior.floating,
        content: AwesomeSnackbarContent(
          title: 'Try Again !!',
          message: e.message.toString(),
          contentType: ContentType.failure,
        ),
      )));
    }
  }

  void signIn(String email, String password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);

      emit(Authsucces(auth.currentUser));

      Get.snackbar(
        'Registration Success',
        'Please log in to access the application',
      );
    } on FirebaseAuthException catch (e) {
      final snackbar = SnackBar(
        duration: const Duration(seconds: 1),
        backgroundColor: Colors.transparent,
        elevation: 0,
        behavior: SnackBarBehavior.floating,
        content: AwesomeSnackbarContent(
          title: 'Try Again !!',
          message: e.message.toString(),
          contentType: ContentType.failure,
        ),
      );

      ScaffoldMessenger.of(Get.context!)
        ..hideCurrentSnackBar()
        ..showSnackBar(snackbar);

      emit(AuthError(snackbar));
    }
  }
}
