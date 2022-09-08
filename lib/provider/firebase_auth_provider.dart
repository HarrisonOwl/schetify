import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/model/entity/firebase_credential.dart';
import 'package:schetify/model/repository/user_repository.dart';

final firebaseAuthProvider = StateNotifierProvider<FirebaseAuthNotifier, FirebaseCredential>((ref){
  return FirebaseAuthNotifier();
});

class FirebaseAuthNotifier extends StateNotifier<FirebaseCredential> {
  FirebaseAuthNotifier(): super(const FirebaseCredential(credential: null));
  final UserRepository userRepository = UserRepository();

  Future<void> signUpWithEmailAndPassword(String email, String username, String password) async{
    final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
    await userRepository.CreateUser(username);
    state.copyWith(credential: credential);
  }

  Future<void> signInWithEmailAndPassword(String email, String password) async{
    final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
    state.copyWith(credential: credential);
  }

  Future<void> signOut() async{
    await FirebaseAuth.instance.signOut();
    state.copyWith(credential: null);
  }

}
