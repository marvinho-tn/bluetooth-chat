class SendMessage { 
  String content;
  DateTime createdDatetime;
  String username;

  SendMessage({required this.content, required this.createdDatetime, required this.username});

  factory SendMessage.fromJson(Map<String, dynamic> json) {
    return SendMessage(
      content: json['content'],
      createdDatetime: json['createdDatetime'],
      username: json['username'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'content': content,
      'createdDatetime': createdDatetime,
      'username': username,
    };
  }
}
