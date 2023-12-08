import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/widgets/loading_widget.dart';
import '../dashborad/presentation/dashborad.dart';
import '../dashborad/presentation/widgets/bottom_navigation.dart';
import '../../features/login/presentation/pages/login_screen.dart';
import 'bloc/initialize_bloc.dart';

class Initialize extends StatelessWidget {
  const Initialize({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<InitializeBloc>(context)
          .add(const InitializeEvent.initial());
      // context.read<HelpCenterBloc>().add(const HelpCenterEvent.initial());
    });
    return BlocBuilder<InitializeBloc, InitializeState>(
      buildWhen: (previous, current) {
        return previous != current;
      },
      builder: (context, state) {
        if (state.isLoading) {
          return const Scaffold(body: Center(child: LoadingWIdget()));
        } else if (state.isToken) {
          return const Dashboard();
        } else if (!state.isToken) {
          selectedIndexNorifier.value == 0;
          return const LoginScreen();
        } else {
          return const Scaffold(body: Center(child: LoadingWIdget()));
        }
      },
    );
  }
}
