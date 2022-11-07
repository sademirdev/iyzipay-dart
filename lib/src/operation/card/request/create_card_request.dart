import 'package:iyzipay/src/interface/request.dart';
import 'package:iyzipay/src/model/index.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_card_request.g.dart';

/// {@template create_card_request}
///
/// - Using this service, you can create a user and a card linked to that user at
/// iyzico without creating a payment. To get paid with a hidden card, you can
/// visit the payment and 3D payment pages.
/// > creating card and user example:
/// ```dart
///   iyzipay.card.create(
///     request: CreateCardRequest(
///       locale: IyzipayLocale.tr,
///       conversationId: '123456789',
///       email: 'email@email.com', // email cannot be null for creating card and user
///       externalId: 'external id',
///       card: PaymentCard(
///         cardAlias = 'card alias',
///         cardHolderName = 'John Doe',
///         cardNumber = '5528790000000008',
///         expireMonth = '12',
///         expireYear = '2030',
///       ),
///     );
///   );
/// ```
///
/// - You can add a second card to a user already created in iyzico.
/// > creating additional card example:
/// ```dart
///   iyzipay.card.create(
///     request: CreateCardRequest(
///       locale: IyzipayLocale.tr,
///       conversationId: '123456789',
///       cardUserKey: 'card user key', // cardUserKey cannot be null for creating additional card
///       card: PaymentCard(
///         cardAlias = 'card alias',
///         cardHolderName = 'John Doe',
///         cardNumber = '5528790000000008',
///         expireMonth = '12',
///         expireYear = '2030',
///       ),
///     );
///   );
/// ```
///
/// {@endtemplate}
@JsonSerializable(includeIfNull: false, explicitToJson: true)
class CreateCardRequest extends Request<CreateCardRequest> {
  /// {@macro create_card_request}
  const CreateCardRequest({
    super.locale,
    super.conversationId,
    this.cardUserKey,
    this.email,
    this.externalId,
    required this.card,
  });

  ///
  final String? cardUserKey;

  /// Email address of the hidden cardholder.
  final String? email;

  /// The id given by the member business to the card to be stored.
  final String? externalId;

  ///
  final Card card;

  /// Converts [CreateCardRequest] to [Map]
  @override
  CreateCardRequest fromJson(Map<String, dynamic> json) => _$CreateCardRequestFromJson(json);

  /// Converts [Map] to [CreateCardRequest]
  @override
  Map<String, dynamic> toJson() => _$CreateCardRequestToJson(this);
}
