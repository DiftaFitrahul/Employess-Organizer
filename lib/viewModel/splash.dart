import 'package:employees_organizer/model/constants/token_auth_state.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreenController extends GetxController
    with StateMixin<TokenAuthState> {
  @override
  void onInit() {
    getAuthStatus();
    // TODO: implement onInit
    super.onInit();
  }

  Future<void> getAuthStatus() async {
    try {
      change(TokenAuthState.loading, status: RxStatus.loading());
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      final String? counter = prefs.getString('token');
      if (counter == null) {
        change(TokenAuthState.unauthenticated, status: RxStatus.error());
        return;
      }
      change(TokenAuthState.authenticated, status: RxStatus.success());
    } catch (e) {
      change(TokenAuthState.unauthenticated, status: RxStatus.error());
    }
  }
}
