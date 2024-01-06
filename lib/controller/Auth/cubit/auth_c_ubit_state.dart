part of 'auth_c_ubit_cubit.dart';

sealed class AuthCUbitState {}

final class AuthCUbitInitial extends AuthCUbitState {}

// ignore: must_be_immutable
final class Authsucces extends AuthCUbitState {
  User? user;

  Authsucces(this.user);
}

final class AuthError extends AuthCUbitState {
  late SnackbarController snackbar;

  AuthError(this.snackbar);
}
