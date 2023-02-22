import 'package:iyzipay/src/enums/iyzipay_locale.dart';
import 'package:iyzipay/src/requests/create_approval_request.dart';

import 'base_request_builder.dart';

class CreateApprovalRequestBuilder extends BaseRequestBuilder {
  const CreateApprovalRequestBuilder._({
    required super.locale,
    required super.conversationId,
    required this.paymentTransactionId,
  });

  const CreateApprovalRequestBuilder.create() : paymentTransactionId = null;

  final String? paymentTransactionId;

  CreateApprovalRequest build() {
    assert(
      paymentTransactionId != null,
      '[paymentTransactionId] cannot be null',
    );

    return CreateApprovalRequest(
      locale: locale,
      conversationId: conversationId,
      paymentTransactionId: paymentTransactionId!,
    );
  }

  CreateApprovalRequestBuilder copyWith({
    IyzipayLocale? locale,
    String? conversationId,
    String? paymentTransactionId,
  }) {
    return CreateApprovalRequestBuilder._(
      locale: locale ?? this.locale,
      conversationId: conversationId ?? this.conversationId,
      paymentTransactionId: paymentTransactionId ?? this.paymentTransactionId,
    );
  }
}
