import 'package:alice/src/alice.dart';
import 'package:http/http.dart';

extension AliceHttpExtensions on Future<Response> {
  /// Intercept http request with alice. This extension method provides addition
  /// al
  /// helpful method to intercept https' response.
  Future<Response> interceptWithAlice(Alice alice, {dynamic body}) async {
    final response = await this;
    alice.onHttpResponse(response, body: body);
    return response;
  }
}
