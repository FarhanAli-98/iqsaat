// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usermessages.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserMessages _$UserMessagesFromJson(Map<String, dynamic> json) {
  return UserMessages(
    success: json['success'] as bool,
    message: json['message'] as String,
    data: (json['data'] as List)
        ?.map((e) =>
            e == null ? null : Messages.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$UserMessagesToJson(UserMessages instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data?.map((e) => e?.toJson())?.toList(),
    };

Messages _$MessagesFromJson(Map<String, dynamic> json) {
  return Messages(
    id: json['id'] as String,
    senderID: json['senderID'] as String,
    receiverID: json['receiverID'] as String,
    text: json['text'] as String,
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    updatedAt: json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String),
  );
}

Map<String, dynamic> _$MessagesToJson(Messages instance) => <String, dynamic>{
      'id': instance.id,
      'senderID': instance.senderID,
      'receiverID': instance.receiverID,
      'text': instance.text,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
