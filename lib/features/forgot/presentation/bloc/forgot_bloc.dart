import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kevell_care/features/forgot/domain/repositories/forgot_repository.dart';

part 'forgot_event.dart';
part 'forgot_state.dart';
part 'forgot_bloc.freezed.dart';


@injectable
class ForgotBloc extends Bloc<ForgotEvent, ForgotState> {
  final ForgotRepository forgotRepository;
  ForgotBloc(this.forgotRepository, )
      : super(const ForgotState.initial()) {
    // on<_Forgot>(
    //   (event, emit) async {
    //     emit(state.copyWith(
    //       isLoading: true,
    //       hasValidationData: false,
    //       isError: false,
    //     ));

    //     final response = await forgotRepository.login(
    //       email: event.email,
    //     );

    //     response.fold((failure) {
    //       return emit(state.copyWith(
    //         isLoading: false,
    //         message: failure.message,
    //         isError: true,
    //       ));
    //     }, (success) {
    //       emit(
    //         state.copyWith(
    //           isError: false,
    //           hasValidationData: true,
    //           isLoading: false,
    //           loginDetails: success,
    //           message: 'You are successfully Logined 🥳',
    //         ),
    //       );
    //     });
    //   },
    // );

  
  }
}
