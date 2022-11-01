// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_payment_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreatePaymentResponse _$CreatePaymentResponseFromJson(
        Map<String, dynamic> json) =>
    CreatePaymentResponse(
      status: $enumDecodeNullable(_$IyzipayStatusEnumMap, json['status']),
      locale: $enumDecodeNullable(_$IyzipayLocaleEnumMap, json['locale']),
      systemTime: json['systemTime'] as int?,
      conversationId: json['conversationId'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      paidPrice: (json['paidPrice'] as num?)?.toDouble(),
      installment: json['installment'] as int?,
      paymentId: json['paymentId'] as String?,
      fraudStatus: json['fraudStatus'] as int?,
      merchantCommissionRate:
          (json['merchantCommissionRate'] as num?)?.toDouble(),
      merchantCommissionRateAmount:
          (json['merchantCommissionRateAmount'] as num?)?.toDouble(),
      iyziCommissionRateAmount:
          (json['iyziCommissionRateAmount'] as num?)?.toDouble(),
      iyziCommissionFee: (json['iyziCommissionFee'] as num?)?.toDouble(),
      cardType: $enumDecodeNullable(_$CardTypeEnumMap, json['cardType']),
      cardAssociation: $enumDecodeNullable(
          _$CardAssociationEnumMap, json['cardAssociation']),
      cardFamily: json['cardFamily'] as String?,
      binNumber: json['binNumber'] as String?,
      lastFourDigits: json['lastFourDigits'] as String?,
      basketId: json['basketId'] as String?,
      currency: $enumDecodeNullable(_$CurrencyEnumMap, json['currency']),
      itemTransactions: (json['itemTransactions'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : ItemTransaction.fromJson(e as Map<String, dynamic>))
          .toList(),
      authCode: json['authCode'] as String?,
      phase: json['phase'] as String?,
      hostReference: json['hostReference'] as String?,
      errorCode: json['errorCode'] as String?,
      errorMessage: json['errorMessage'] as String?,
      errorGroup: json['errorGroup'] as String?,
    );

Map<String, dynamic> _$CreatePaymentResponseToJson(
    CreatePaymentResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', _$IyzipayStatusEnumMap[instance.status]);
  writeNotNull('locale', _$IyzipayLocaleEnumMap[instance.locale]);
  writeNotNull('systemTime', instance.systemTime);
  writeNotNull('conversationId', instance.conversationId);
  writeNotNull('errorCode', instance.errorCode);
  writeNotNull('errorMessage', instance.errorMessage);
  writeNotNull('errorGroup', instance.errorGroup);
  writeNotNull('price', instance.price);
  writeNotNull('paidPrice', instance.paidPrice);
  writeNotNull('installment', instance.installment);
  writeNotNull('paymentId', instance.paymentId);
  writeNotNull('fraudStatus', instance.fraudStatus);
  writeNotNull('merchantCommissionRate', instance.merchantCommissionRate);
  writeNotNull(
      'merchantCommissionRateAmount', instance.merchantCommissionRateAmount);
  writeNotNull('iyziCommissionRateAmount', instance.iyziCommissionRateAmount);
  writeNotNull('iyziCommissionFee', instance.iyziCommissionFee);
  writeNotNull('cardType', _$CardTypeEnumMap[instance.cardType]);
  writeNotNull(
      'cardAssociation', _$CardAssociationEnumMap[instance.cardAssociation]);
  writeNotNull('cardFamily', instance.cardFamily);
  writeNotNull('binNumber', instance.binNumber);
  writeNotNull('lastFourDigits', instance.lastFourDigits);
  writeNotNull('basketId', instance.basketId);
  writeNotNull('currency', _$CurrencyEnumMap[instance.currency]);
  writeNotNull('itemTransactions', instance.itemTransactions);
  writeNotNull('authCode', instance.authCode);
  writeNotNull('phase', instance.phase);
  writeNotNull('hostReference', instance.hostReference);
  return val;
}

const _$IyzipayStatusEnumMap = {
  IyzipayStatus.success: 'success',
  IyzipayStatus.failure: 'failure',
};

const _$IyzipayLocaleEnumMap = {
  IyzipayLocale.tr: 'tr',
  IyzipayLocale.en: 'en',
};

const _$CardTypeEnumMap = {
  CardType.creditCard: 'CREDIT_CARD',
  CardType.debitCard: 'DEBIT_CARD',
  CardType.prePaidCard: 'PREPAID_CARD',
};

const _$CardAssociationEnumMap = {
  CardAssociation.masterCard: 'MASTER_CARD',
  CardAssociation.visa: 'VISA',
  CardAssociation.troy: 'TROY',
  CardAssociation.americanExpress: 'AMERICAN_EXPRESS',
};

const _$CurrencyEnumMap = {
  Currency.tl: 'TRY',
  Currency.eur: 'EUR',
  Currency.usd: 'USD',
  Currency.irr: 'IRR',
  Currency.gbp: 'GBP',
  Currency.nok: 'NOK',
  Currency.rub: 'RUB',
  Currency.chf: 'CHF',
};

ItemTransaction _$ItemTransactionFromJson(Map<String, dynamic> json) =>
    ItemTransaction(
      itemId: json['itemId'] as String?,
      paymentTransactionId: json['paymentTransactionId'] as String?,
      transactionStatus: json['transactionStatus'] as int?,
      price: (json['price'] as num?)?.toDouble(),
      paidPrice: (json['paidPrice'] as num?)?.toDouble(),
      merchantCommissionRate:
          (json['merchantCommissionRate'] as num?)?.toDouble(),
      merchantCommissionRateAmount:
          (json['merchantCommissionRateAmount'] as num?)?.toDouble(),
      iyziCommissionRateAmount:
          (json['iyziCommissionRateAmount'] as num?)?.toDouble(),
      iyziCommissionFee: (json['iyziCommissionFee'] as num?)?.toDouble(),
      blockageRate: (json['blockageRate'] as num?)?.toDouble(),
      blockageRateAmountMerchant:
          (json['blockageRateAmountMerchant'] as num?)?.toDouble(),
      blockageRateAmountSubMerchant:
          json['blockageRateAmountSubMerchant'] as int?,
      blockageResolvedDate: json['blockageResolvedDate'] as String?,
      subMerchantPrice: json['subMerchantPrice'] as int?,
      subMerchantPayoutRate:
          (json['subMerchantPayoutRate'] as num?)?.toDouble(),
      subMerchantPayoutAmount: json['subMerchantPayoutAmount'] as int?,
      merchantPayoutAmount: (json['merchantPayoutAmount'] as num?)?.toDouble(),
      convertedPayout: json['convertedPayout'] == null
          ? null
          : ConvertedPayout.fromJson(
              json['convertedPayout'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ItemTransactionToJson(ItemTransaction instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('itemId', instance.itemId);
  writeNotNull('paymentTransactionId', instance.paymentTransactionId);
  writeNotNull('transactionStatus', instance.transactionStatus);
  writeNotNull('price', instance.price);
  writeNotNull('paidPrice', instance.paidPrice);
  writeNotNull('merchantCommissionRate', instance.merchantCommissionRate);
  writeNotNull(
      'merchantCommissionRateAmount', instance.merchantCommissionRateAmount);
  writeNotNull('iyziCommissionRateAmount', instance.iyziCommissionRateAmount);
  writeNotNull('iyziCommissionFee', instance.iyziCommissionFee);
  writeNotNull('blockageRate', instance.blockageRate);
  writeNotNull(
      'blockageRateAmountMerchant', instance.blockageRateAmountMerchant);
  writeNotNull(
      'blockageRateAmountSubMerchant', instance.blockageRateAmountSubMerchant);
  writeNotNull('blockageResolvedDate', instance.blockageResolvedDate);
  writeNotNull('subMerchantPrice', instance.subMerchantPrice);
  writeNotNull('subMerchantPayoutRate', instance.subMerchantPayoutRate);
  writeNotNull('subMerchantPayoutAmount', instance.subMerchantPayoutAmount);
  writeNotNull('merchantPayoutAmount', instance.merchantPayoutAmount);
  writeNotNull('convertedPayout', instance.convertedPayout);
  return val;
}

ConvertedPayout _$ConvertedPayoutFromJson(Map<String, dynamic> json) =>
    ConvertedPayout(
      paidPrice: (json['paidPrice'] as num?)?.toDouble(),
      iyziCommissionRateAmount:
          (json['iyziCommissionRateAmount'] as num?)?.toDouble(),
      iyziCommissionFee: (json['iyziCommissionFee'] as num?)?.toDouble(),
      blockageRateAmountMerchant:
          (json['blockageRateAmountMerchant'] as num?)?.toDouble(),
      blockageRateAmountSubMerchant:
          (json['blockageRateAmountSubMerchant'] as num?)?.toDouble(),
      subMerchantPayoutAmount:
          (json['subMerchantPayoutAmount'] as num?)?.toDouble(),
      merchantPayoutAmount: (json['merchantPayoutAmount'] as num?)?.toDouble(),
      iyziConversionRate: json['iyziConversionRate'] as int?,
      iyziConversionRateAmount: json['iyziConversionRateAmount'] as int?,
      currency: $enumDecodeNullable(_$CurrencyEnumMap, json['currency']),
    );

Map<String, dynamic> _$ConvertedPayoutToJson(ConvertedPayout instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('paidPrice', instance.paidPrice);
  writeNotNull('iyziCommissionRateAmount', instance.iyziCommissionRateAmount);
  writeNotNull('iyziCommissionFee', instance.iyziCommissionFee);
  writeNotNull(
      'blockageRateAmountMerchant', instance.blockageRateAmountMerchant);
  writeNotNull(
      'blockageRateAmountSubMerchant', instance.blockageRateAmountSubMerchant);
  writeNotNull('subMerchantPayoutAmount', instance.subMerchantPayoutAmount);
  writeNotNull('merchantPayoutAmount', instance.merchantPayoutAmount);
  writeNotNull('iyziConversionRate', instance.iyziConversionRate);
  writeNotNull('iyziConversionRateAmount', instance.iyziConversionRateAmount);
  writeNotNull('currency', _$CurrencyEnumMap[instance.currency]);
  return val;
}
