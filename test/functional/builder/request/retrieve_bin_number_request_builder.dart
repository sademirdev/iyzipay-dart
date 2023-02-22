import 'package:iyzipay/iyzipay.dart';
import 'package:iyzipay/src/requests/retrieve_bin_number_request.dart';

import 'base_request_builder.dart';

class RetrieveBinNumberRequestBuilder extends BaseRequestBuilder {
  const RetrieveBinNumberRequestBuilder._({
    required super.locale,
    required super.conversationId,
    required this.binNumber,
  });

  const RetrieveBinNumberRequestBuilder.create() : binNumber = null;

  final String? binNumber;

  RetrieveBinNumberRequest build() {
    assert(
      binNumber != null,
      '[binNumber] cannot be null. it should be initialized via copyWith() method',
    );

    return RetrieveBinNumberRequest(
      locale: locale,
      conversationId: conversationId,
      binNumber: binNumber!,
    );
  }

  RetrieveBinNumberRequestBuilder copyWith({
    IyzipayLocale? locale,
    String? conversationId,
    String? binNumber,
  }) {
    return RetrieveBinNumberRequestBuilder._(
      locale: locale ?? this.locale,
      conversationId: conversationId ?? this.conversationId,
      binNumber: binNumber ?? this.binNumber,
    );
  }
}
