import 'package:iyzipay/src/base_request.dart';

class PagingRequest extends BaseRequest<PagingRequest> {
  const PagingRequest({
    required this.page,
    required this.count,
  });

  final int page;
  final int count;

  // Todo(sametdmr): handle fromJson and toJson functions
  @override
  PagingRequest fromJson(Map<String, dynamic> json) {
    throw UnimplementedError();
  }

  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}
