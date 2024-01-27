part of 'data_bloc_bloc.dart';

@immutable
sealed class DataBlocEvent {}


class DataNew extends DataBlocEvent{

  List<Object> get props => [];
}
