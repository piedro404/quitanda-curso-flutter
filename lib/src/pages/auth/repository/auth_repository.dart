import 'package:quitanda/src/constants/endpoints.dart';
import 'package:quitanda/src/services/http_manager.dart';

class AuthRepository {
  final HttpManager _httpManager = HttpManager();

  Future signIn({required String email, required String password}) async {
    final $result = await _httpManager.restRequest(
      url: EndPoints.signIn,
      method: HttpMethods.post,
      body: {
        "email": email,
        "password": password,
      },
    );

    if ($result['result'] != null) {
      print("Foi!!!");
    } else {
      print("Não Foi!!!");
    }
  }
}
