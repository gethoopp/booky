import 'package:booky/bloc/data_bloc_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('this tes', () {
    testWidgets('data bloc succes ...', (tester) async {
      final dataBlocBloc = DataBlocBloc();

      dataBlocBloc.add(DataNew());

      expectLater(dataBlocBloc.stream,
          emitsInOrder([DataBlocInitial(), DataSucces(const [])]));
    });

    testWidgets('data bloc failed ...', (tester) async {
      final dataBlocBloc = DataBlocBloc();

      dataBlocBloc.add(DataNew());

      expectLater(dataBlocBloc.stream,
          emitsInOrder([DataBlocInitial(), DataSucces(const [])]));
    });
  });
}
