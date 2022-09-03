import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../model/entity/shared_preferences_state.dart';

final sharedPreferencesProvider = StateNotifierProvider<SharedPreferencesNotifier, SharedPreferencesState>((ref){
  return SharedPreferencesNotifier();
});

class SharedPreferencesNotifier extends StateNotifier<SharedPreferencesState> {
  SharedPreferencesNotifier(): super(const SharedPreferencesState(pref: null, isOpenedScheduleCandidatesPage: false)) {
    init();
  }

  Future<void> init() async {
    final pref = await SharedPreferences.getInstance();
    final isOpenedScheduleCandidatesPage = pref.getBool("isOpenedScheduleCandidatesPage") ?? false;
    state = state.copyWith(pref: pref, isOpenedScheduleCandidatesPage: isOpenedScheduleCandidatesPage);
  }

  void changeIsOpenedScheduleCandidatesPage(bool isOpenedScheduleCandidatesPage) {
    state.pref?.setBool('isOpenedScheduleCandidatesPage', isOpenedScheduleCandidatesPage);
    state = state.copyWith(pref: state.pref);
  }


}