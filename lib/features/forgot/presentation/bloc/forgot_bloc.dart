import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kevell_care/features/forgot/data/model/change_password_model.dart';
import 'package:kevell_care/features/forgot/data/model/forgot_,model.dart';
import 'package:kevell_care/features/forgot/domain/repositories/change_pass_repository.dart';
import 'package:kevell_care/features/forgot/domain/repositories/forgot_repository.dart';

part 'forgot_event.dart';
part 'forgot_state.dart';
part 'forgot_bloc.freezed.dart';

@injectable
class ForgotBloc extends Bloc<ForgotEvent, ForgotState> {
  final ForgotRepository forgotRepository;
    final ChangePasswordRepository changePasswordRepository;

  ForgotBloc(this.forgotRepository,this.changePasswordRepository )
      : super( ForgotState.initial()) {
    on<_Forgot>(
      (event, emit) async {
        emit(state.copyWith(
          isLoading: true,
          hasData: false,
          isError: false,
        ));

        final response = await forgotRepository.forgot(
          email: event.email,
        );

        response.fold((failure) {
          return emit(state.copyWith(
            isLoading: false,
            message: failure.message,
            isError: true,
          ));
        }, (success) {
          emit(
            state.copyWith(
              isError: false,
              hasData: true,
              isLoading: false,
              forgot: success,
              message: 'otp generated successfully',
            ),
          );
        });
      },
    );
//  on<_VaryfiyOtp>((event, emit) async {
//       emit(
//         state.copyWith(
//           isLoading: true,
//           hasData: false,
//           isError: false,
//           otpVarified: false,
//         ),
//       );
//       final response = await changePasswordRepository.change(
//         number: event.number,
//         otp: event.otp,
//       );

//       final result = response.fold(
//         (failure) => state.copyWith(
//           isLoading: false,
//           otpVarified: false,
//           isError: true,
//         ),
//         (success) => state.copyWith(
//             isError: false,
//             isLoading: false,
//             otpVarified: true,
//             otp: success,
//             message: success.result ?? ""),
//       );
//       emit(result);
//     });
  
  }
}
