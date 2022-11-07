import 'package:iyzipay/src/enum/network_paths.dart';
import 'package:iyzipay/src/enum/request_type.dart';
import 'package:iyzipay/src/interface/iyzipay_service.dart';
import 'package:iyzipay/src/operation/card/request/create_card_request.dart';
import 'package:iyzipay/src/operation/card/response/create_card_response.dart';

///
class CardService extends IyzipayService {
  ///
  const CardService(super.dio, super.options);

  /// {@macro create_card_request}
  Future<CreateCardResponse?> create({
    required CreateCardRequest request,
  }) async {
    final result = makeRequest<CreateCardRequest, CreateCardResponse>(
      requestModel: request,
      responseModel: const CreateCardResponse(),
      path: NetworkPaths.card.path,
      method: RequestType.post.name,
    );
    return result;
  }
}
