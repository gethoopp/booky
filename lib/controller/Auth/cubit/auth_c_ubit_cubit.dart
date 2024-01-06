// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller.dart';

part 'auth_c_ubit_state.dart';

class AuthCUbitCubit extends Cubit<AuthCUbitState> {
  AuthCUbitCubit() : super(AuthCUbitInitial());

  void signIn(String email, String password) {
    try {
      auth.createUserWithEmailAndPassword(email: email, password: password);
      emit(Authsucces(auth.currentUser));
    } on FirebaseAuthException catch (e) {
      emit(AuthError(
        Get.snackbar('Erorr!!', e.message.toString(),
            snackPosition: SnackPosition.BOTTOM,
            colorText: Colors.white,
            backgroundColor: Colors.red),
      ));
    }
  }

  void login(String email, String password) {
    try {
      auth.signInWithEmailAndPassword(email: email, password: password);

      emit(Authsucces(auth.currentUser));
    } on FirebaseAuthException catch (e) {
      emit(AuthError(
        Get.snackbar('Erorr!!', e.message.toString(),
            snackPosition: SnackPosition.BOTTOM,
            colorText: Colors.white,
            backgroundColor: Colors.red),
      ));
    }
  }
}
