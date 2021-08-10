
import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
part 'usermessages.g.dart';

UserMessages welcomeFromJson(String str) => UserMessages.fromJson(json.decode(str));

String welcomeToJson(UserMessages data) => json.encode(data.toJson());



@JsonSerializable(explicitToJson: true)
class UserMessages {
    UserMessages({
        this.success,
        this.message,
        this.data,
    });

    bool success;
    String message;
    List<Messages> data;

    factory UserMessages.fromJson(Map<String, dynamic> json) => _$UserMessagesFromJson(json);

    Map<String, dynamic> toJson() => _$UserMessagesToJson(this);
}

@JsonSerializable(explicitToJson: true, nullable:true)
class Messages {
    Messages({
        this.id,
        this.senderID,
        this.receiverID,
        this.text,
        this.createdAt,
        this.updatedAt,
    });

    String id;
    String senderID;
    String receiverID;
    String text;
    DateTime createdAt;
    DateTime updatedAt;

    factory Messages.fromJson(Map<String, dynamic> json) => _$MessagesFromJson(json);

    Map<String, dynamic> toJson() => _$MessagesToJson(this);
}
