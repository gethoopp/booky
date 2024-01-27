part of 'data_bloc_bloc.dart';

@immutable
sealed class DataBlocState {
  List<Object> get props => [];
}

final class DataBlocInitial extends DataBlocState {}

// ignore: must_be_immutable
final class DataSucces extends DataBlocState {
 final List<Books?> details;

  DataSucces(this.details);
}

// ignore: must_be_immutable
final class DataErr extends DataBlocState {}
