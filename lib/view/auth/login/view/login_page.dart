import 'package:education_app_like_udemy/view/auth/login/view-model/login/login_cubit.dart';
import 'package:education_app_like_udemy/view/auth/login/view-model/validation/validation_cubit.dart';
import 'package:education_app_like_udemy/view/auth/login/view/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key, required this.role});
  final String role;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ValidateCubit()),
        BlocProvider(create: (context) => LoginCubit()),
      ],
      child: LoginView(
        role: role,
      ),
    );
  }
}
