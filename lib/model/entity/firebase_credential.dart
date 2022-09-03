import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
// {ファイル名}.freezed.dart　と書く
part 'generated/firebase_credential.freezed.dart';

//Freezed特有の書き方なので、スニペットを用意するのが良い
@freezed
class FirebaseCredential with _$FirebaseCredential {
  const factory FirebaseCredential({
    required UserCredential? credential,
  }) = _FirebaseCredential;
}