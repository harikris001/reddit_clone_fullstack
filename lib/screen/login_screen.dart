import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reddit_clone_fullstack/core/common/loader.dart';
import 'package:reddit_clone_fullstack/core/constants/constants.dart';
import 'package:reddit_clone_fullstack/core/constants/signin_button.dart';
import 'package:reddit_clone_fullstack/features/auth/controller/auth_controller.dart';

class LoginSCreen extends ConsumerWidget {
  const LoginSCreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = ref.watch(authControllerProvider);
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          Constants.logoPath,
          height: 40,
        ),
        centerTitle: true,
        actions: [
          TextButton(
              onPressed: () {},
              child: const Text(
                'SKIP',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ))
        ],
      ),
      body: isLoading
          ? const Loader()
          : Column(
              children: [
                const SizedBox(height: 30),
                const Text(
                  'Dive Into Anything',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    letterSpacing: 0.5,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    Constants.loginEmotePath,
                  ),
                ),
                const SizedBox(height: 25),
                const SignInButton(),
              ],
            ),
    );
  }
}
