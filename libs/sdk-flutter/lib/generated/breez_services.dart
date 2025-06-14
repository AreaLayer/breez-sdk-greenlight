// This file is automatically generated, so please do not edit it.
// @generated by `flutter_rust_bridge`@ 2.9.0.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import 'binding.dart';
import 'frb_generated.dart';
import 'models.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'package:freezed_annotation/freezed_annotation.dart' hide protected;
part 'breez_services.freezed.dart';

class BackupFailedData {
  final String error;

  const BackupFailedData({required this.error});

  @override
  int get hashCode => error.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BackupFailedData && runtimeType == other.runtimeType && error == other.error;
}

@freezed
sealed class BreezEvent with _$BreezEvent {
  const BreezEvent._();

  /// Indicates that a new block has just been found
  const factory BreezEvent.newBlock({required int block}) = BreezEvent_NewBlock;

  /// Indicates that a new invoice has just been paid
  const factory BreezEvent.invoicePaid({required InvoicePaidDetails details}) = BreezEvent_InvoicePaid;

  /// Indicates that the local SDK state has just been sync-ed with the remote components
  const factory BreezEvent.synced() = BreezEvent_Synced;

  /// Indicates that an outgoing payment has been completed successfully
  const factory BreezEvent.paymentSucceed({required Payment details}) = BreezEvent_PaymentSucceed;

  /// Indicates that an outgoing payment has been failed to complete
  const factory BreezEvent.paymentFailed({required PaymentFailedData details}) = BreezEvent_PaymentFailed;

  /// Indicates that the backup process has just started
  const factory BreezEvent.backupStarted() = BreezEvent_BackupStarted;

  /// Indicates that the backup process has just finished successfully
  const factory BreezEvent.backupSucceeded() = BreezEvent_BackupSucceeded;

  /// Indicates that the backup process has just failed
  const factory BreezEvent.backupFailed({required BackupFailedData details}) = BreezEvent_BackupFailed;

  /// Indicates that a reverse swap has been updated which may also
  /// include a status change
  const factory BreezEvent.reverseSwapUpdated({required ReverseSwapInfo details}) =
      BreezEvent_ReverseSwapUpdated;

  /// Indicates that a swap has been updated which may also
  /// include a status change
  const factory BreezEvent.swapUpdated({required SwapInfo details}) = BreezEvent_SwapUpdated;
}

/// Request to check a message was signed by a specific node id.
class CheckMessageRequest {
  /// The message that was signed.
  final String message;

  /// The public key of the node that signed the message.
  final String pubkey;

  /// The zbase encoded signature to verify.
  final String signature;

  const CheckMessageRequest({required this.message, required this.pubkey, required this.signature});

  @override
  int get hashCode => message.hashCode ^ pubkey.hashCode ^ signature.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CheckMessageRequest &&
          runtimeType == other.runtimeType &&
          message == other.message &&
          pubkey == other.pubkey &&
          signature == other.signature;
}

/// Response to a [CheckMessageRequest]
class CheckMessageResponse {
  /// Boolean value indicating whether the signature covers the message and
  /// was signed by the given pubkey.
  final bool isValid;

  const CheckMessageResponse({required this.isValid});

  @override
  int get hashCode => isValid.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CheckMessageResponse && runtimeType == other.runtimeType && isValid == other.isValid;
}

/// Details of an invoice that has been paid, included as payload in an emitted [BreezEvent]
class InvoicePaidDetails {
  final String paymentHash;
  final String bolt11;
  final Payment? payment;

  const InvoicePaidDetails({required this.paymentHash, required this.bolt11, this.payment});

  @override
  int get hashCode => paymentHash.hashCode ^ bolt11.hashCode ^ payment.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InvoicePaidDetails &&
          runtimeType == other.runtimeType &&
          paymentHash == other.paymentHash &&
          bolt11 == other.bolt11 &&
          payment == other.payment;
}

class PaymentFailedData {
  final String error;
  final String nodeId;
  final LNInvoice? invoice;
  final String? label;

  const PaymentFailedData({required this.error, required this.nodeId, this.invoice, this.label});

  @override
  int get hashCode => error.hashCode ^ nodeId.hashCode ^ invoice.hashCode ^ label.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PaymentFailedData &&
          runtimeType == other.runtimeType &&
          error == other.error &&
          nodeId == other.nodeId &&
          invoice == other.invoice &&
          label == other.label;
}

/// Request to sign a message with the node's private key.
class SignMessageRequest {
  /// The message to be signed by the node's private key.
  final String message;

  const SignMessageRequest({required this.message});

  @override
  int get hashCode => message.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SignMessageRequest && runtimeType == other.runtimeType && message == other.message;
}

/// Response to a [SignMessageRequest].
class SignMessageResponse {
  /// The signature that covers the message of SignMessageRequest. Zbase
  /// encoded.
  final String signature;

  const SignMessageResponse({required this.signature});

  @override
  int get hashCode => signature.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SignMessageResponse && runtimeType == other.runtimeType && signature == other.signature;
}
