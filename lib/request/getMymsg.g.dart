// // GENERATED CODE - DO NOT MODIFY BY HAND

// part of 'getMymsg.dart';

// // **************************************************************************
// // JsonSerializableGenerator
// // **************************************************************************

// ChatModel _$ChatModelFromJson(Map<String, dynamic> json) {
//   return ChatModel(
//     success: json['success'] as bool,
//     message: json['message'] as String,
//     data: (json['data'] as List)
//         ?.map((e) =>
//             e == null ? null : Message.fromJson(e as Map<String, dynamic>))
//         ?.toList(),
//   );
// }

// Map<String, dynamic> _$ChatModelToJson(ChatModel instance) => <String, dynamic>{
//       'success': instance.success,
//       'message': instance.message,
//       'data': instance.data?.map((e) => e?.toJson())?.toList(),
//     };

// Message _$MessageFromJson(Map<String, dynamic> json) {
//   return Message(
//     text: json['text'] as String,
//     senderId: json['senderId'] as String,
//     senderName: json['senderName'] as String,
//     senderDisplayPictureUrl: json['senderDisplayPictureUrl'] as String,
//     receiverId: json['receiverId'] as String,
//     timestamp: json['timestamp'] == null
//         ? null
//         : DateTime.parse(json['timestamp'] as String),
//   );
// }

// Map<String, dynamic> _$MessageToJson(Message instance) => <String, dynamic>{
//       'text': instance.text,
//       'senderId': instance.senderId,
//       'senderName': instance.senderName,
//       'senderDisplayPictureUrl': instance.senderDisplayPictureUrl,
//       'receiverId': instance.receiverId,
//       'timestamp': instance.timestamp?.toIso8601String(),
//     };
