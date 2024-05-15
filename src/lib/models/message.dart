import 'user.dart';

class Message { 
  String content;
  DateTime createdDatetime;
  DateTime sentDatetime;
  DateTime viewedDatetime;
  User sender;

  Message({required this.content, required this.sender, required this.createdDatetime, required this.sentDatetime, required this.viewedDatetime});

  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      content: json['content'],
      createdDatetime: json['createdDatetime'],
      sentDatetime: json['sentDatetime'],
      viewedDatetime: json['viewedDatetime'],
      sender: json['sender'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'content': content,
      'createdDatetime': createdDatetime,
      'sentDatetime': sentDatetime,
      'viewedDatetime': viewedDatetime,
      'sender': sender,
    };
  }
}
