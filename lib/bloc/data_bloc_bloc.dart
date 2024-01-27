// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

import 'package:booky/api/dio/provider.dart';
import 'package:booky/api/model/data.dart';

part 'data_bloc_event.dart';
part 'data_bloc_state.dart';

class DataBlocBloc extends Bloc<DataBlocEvent, DataBlocState> {
  final _service = Provider();
  DataBlocBloc() : super(DataBlocInitial()) {
    on<DataNew>((event, emit) async {
      Future.delayed(const Duration(seconds: 15));

      try {
        final result = await _service.getResult();

        emit(DataSucces(result));
      } catch (e) {
        addError(StackTrace.current);
        emit(DataErr());

        Future.delayed(const Duration(seconds: 2), (){
          Get.toNamed('/error');
        }
        
        );
      }

      //emit(DataErr(Lottie.asset()));
    });
  }
}
