import 'package:iyzipay/src/enums/iyzipay_locale.dart';
import 'package:iyzipay/src/requests/create_cancel_request.dart';

import 'base_request_builder.dart';

class CreateCancelRequestBuilder extends BaseRequestBuilder {
  const CreateCancelRequestBuilder._({
    required super.locale,
    required super.conversationId,
    required this.paymentId,
    required this.ip,
  });

  const CreateCancelRequestBuilder.create()
      : paymentId = null,
        ip = '85.34.78.112';

  final String? paymentId;
  final String ip;

  CreateCancelRequest build() {
    assert(
      paymentId != null,
      '[paymentId] cannot be null. It should be initialized via copyWith() method',
    );

    return CreateCancelRequest(
      locale: locale,
      conversationId: conversationId,
      paymentId: paymentId!,
      ip: ip,
    );
  }

  CreateCancelRequestBuilder copyWith({
    IyzipayLocale? locale,
    String? conversationId,
    String? paymentId,
    String? ip,
  }) {
    return CreateCancelRequestBuilder._(
      locale: locale ?? this.locale,
      conversationId: conversationId ?? this.conversationId,
      paymentId: paymentId ?? this.paymentId,
      ip: ip ?? this.ip,
    );
  }
}
