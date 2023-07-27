import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kevell_care/features/appoiments/data/models/appoiments_model.dart';
import 'package:kevell_care/features/appoiments/domain/repositories/get_appoinments_repository.dart';

part 'appoinmets_event.dart';
part 'appoinmets_state.dart';
part 'appoinmets_bloc.freezed.dart';

@injectable
class AppoinmetsBloc extends Bloc<AppoinmetsEvent, AppoinmetsState> {
  final GetAppoinmentsRepository getAppoinmentsRepository;

  AppoinmetsBloc(
    this.getAppoinmentsRepository,
  ) : super(AppoinmetsState.initial()) {
    on<_GetAppoinments>((event, emit) async {
      if (state.hasData) {
        return;
      }

      emit(
        state.copyWith(
          isLoading: true,
          isError: false,
        ),
      );

      final response = await getAppoinmentsRepository.getAppoinments();

      final result = response.fold(
        (failure) => state.copyWith(
          isLoading: false,
          hasData: false,
          isError: true,
        ),
        (success) => state.copyWith(
            isError: false,
            isLoading: false,
            hasData: true,
            appoimentData: success),
      );
      emit(result);
    });
  }
}
