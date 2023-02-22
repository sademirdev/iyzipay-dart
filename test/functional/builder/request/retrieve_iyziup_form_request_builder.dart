import 'package:iyzipay/iyzipay.dart';
import 'package:iyzipay/src/requests/retrieve_iyziup_form_request.dart';

import 'base_request_builder.dart';

class RetrieveIyziupFormRequestBuilder extends BaseRequestBuilder {
  const RetrieveIyziupFormRequestBuilder._({
    required super.locale,
    required super.conversationId,
    required this.token,
  });

  const RetrieveIyziupFormRequestBuilder.create() : token = null;

  final String? token;

  RetrieveIyziupFormRequest build() {
    assert(
      token != null,
      '[token] cannot be null. It should be initialized via copyWith() method',
    );

    return RetrieveIyziupFormRequest(
      locale: locale,
      conversationId: conversationId,
      token: token!,
    );
  }

  RetrieveIyziupFormRequestBuilder copyWith({
    IyzipayLocale? locale,
    String? conversationId,
    String? token,
  }) {
    return RetrieveIyziupFormRequestBuilder._(
      locale: locale ?? this.locale,
      conversationId: conversationId ?? this.conversationId,
      token: token ?? this.token,
    );
  }
}
