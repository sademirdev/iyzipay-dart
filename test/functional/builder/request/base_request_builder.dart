import 'package:iyzipay/iyzipay.dart';

class BaseRequestBuilder {
  const BaseRequestBuilder({
    this.locale = IyzipayLocale.tr,
    this.conversationId = '123456789',
  });

  final IyzipayLocale locale;
  final String conversationId;
}
