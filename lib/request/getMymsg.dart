import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
part 'getMymsg.g.dart';

ChatModel chatModelFromJson(String str) => ChatModel.fromJson(json.decode(str));

String chatModelToJson(ChatModel data) => json.encode(data.toJson());

@JsonSerializable(explicitToJson: true)
class ChatModel {
  ChatModel({
    this.success,
    this.message,
    this.data,
  });

  bool success;
  String message;
  List<Message> data;

  factory ChatModel.fromJson(Map<String, dynamic> json) =>
      _$ChatModelFromJson(json);

  Map<String, dynamic> toJson() => _$ChatModelToJson(this);
}

@JsonSerializable(explicitToJson: true, nullable: true)
class Message {
  Message({
    this.text,
    this.senderId,
    this.senderName,
    this.senderDisplayPictureUrl,
    this.receiverId,
    this.timestamp,
  });

  String text;
  String senderId;
  String senderName;
  String senderDisplayPictureUrl;
  String receiverId;
  DateTime timestamp;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);

  Map<String, dynamic> toJson() => _$MessageToJson(this);
}
