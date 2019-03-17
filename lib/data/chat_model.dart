class ChatModel {
  final String name;
  final String message;
  final String time;
  final String profileUrl;
  final bool isRead;
  final bool isPinned;

  ChatModel({
    this.name,
    this.message,
    this.time,
    this.profileUrl = 'http://i.pravatar.cc/300',
    this.isRead = false,
    this.isPinned = false,
  });

  static List<ChatModel> dummyData = [
    ChatModel(
      name: "Jane Doe",
      message: "We missed you at the party...",
      time: "10:30",
      profileUrl: "http://i.pravatar.cc/150?img=9",
      isPinned: true,
    ),
    ChatModel(
      name: "John Doe",
      message: "Hey! How's everything?",
      time: "Tue",
      profileUrl: "http://i.pravatar.cc/150?img=50",
    ),
    ChatModel(
      name: "Dev Community",
      message: "Flutter is amazing!",
      time: "Feb 23",
      profileUrl: "http://i.pravatar.cc/150?img=61",
    ),
    ChatModel(
      name: "Telegram",
      message: "Big thanks to the Flutter dev team!!",
      time: "Feb 21",
      profileUrl: "http://i.pravatar.cc/150?img=69",
      isRead: true,
    ),
  ];
}
