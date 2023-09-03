import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reddit_clone_fullstack/core/utils.dart';
import 'package:reddit_clone_fullstack/features/auth/reporsitory/auth_reporsitory.dart';
import 'package:reddit_clone_fullstack/models/user_model.dart';

final userProvider = StateProvider<UserModel?>((ref) => null);

final authControllerProvider = StateNotifierProvider<AuthController, bool>(
  (ref) => AuthController(
    authReporsitory: ref.watch(authReporsitoryProvider),
    ref: ref,
  ),
);

final authStateChangeProvider = StreamProvider((ref) {
  final authController = ref.watch(authControllerProvider.notifier);
  return authController.authStateChange;
});

final getuserDataProvider = StreamProvider.family((ref, String uid) {
  final authController = ref.watch(authControllerProvider.notifier);
  return authController.getUserData(uid);
});

class AuthController extends StateNotifier<bool> {
  final AuthReporsitory _authReporsitory;
  final Ref _ref;
  AuthController({required AuthReporsitory authReporsitory, required Ref ref})
      : _authReporsitory = authReporsitory,
        _ref = ref,
        super(false);

  Stream<User?> get authStateChange => _authReporsitory.authStateChange;

  void signInWithGoogle(BuildContext context) async {
    state = true;
    final user = await _authReporsitory.signInWithGoogle();
    state = false;
    user.fold(
      (l) => showSnackBar(context, l.message),
      (userModel) =>
          _ref.read(userProvider.notifier).update((state) => userModel),
    );
  }

  Stream<UserModel> getUserData(String uid) =>
      _authReporsitory.getUserData(uid);
}
