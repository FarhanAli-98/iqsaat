class ChatItem {
  String userName;
  String message;
  String imageUrl;
  DateTime time;
  String from;
  bool isRead;

  ChatItem({
    this.userName,
    this.message,
    this.from = "Alan",
    this.imageUrl,
    this.time,
    this.isRead = true,
  });

  @override
  String toString() {
    return 'ChatItem(userName: $userName, message: $message, imageUrl: $imageUrl, time: $time, isRead: $isRead)';
  }
}

List<ChatItem> chatItems = [
  ChatItem(
    userName: "Joan Smith",
    message: "Hey when are you going?",
    imageUrl:
        "https://images.unsplash.com/photo-1542080681-b52d382432af?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80",
    time: DateTime.now().subtract(Duration(hours: 2)),
    isRead: false,
  ),
  ChatItem(
      userName: "Randy Ford",
      message: "Hey when are you going?",
      imageUrl:
          "https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      time: DateTime.now().subtract(Duration(hours: 3)),
      isRead: false),
  ChatItem(
    userName: "Joan Smith",
    message: "Hey when are you going?",
    imageUrl:
        "https://images.unsplash.com/photo-1542080681-b52d382432af?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80",
    time: DateTime.now().subtract(Duration(hours: 4)),
  ),
  ChatItem(
    userName: "Randy Ford",
    message: "Hey when are you going?",
    imageUrl:
        "https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    time: DateTime.now().subtract(Duration(hours: 5)),
  ),
  ChatItem(
    userName: "Joan Smith",
    message: "Hey when are you going?",
    imageUrl:
        "https://images.unsplash.com/photo-1542080681-b52d382432af?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80",
    time: DateTime.now().subtract(Duration(hours: 6)),
  ),
  ChatItem(
    userName: "Randy Ford",
    message: "Hey when are you going?",
    imageUrl:
        "https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    time: DateTime.now().subtract(Duration(hours: 7)),
  ),
];

List<ChatItem> groupsItems = [
  ChatItem(
    userName: "Tech Awesome",
    message: "Did you check new research in neural …",
    imageUrl:
        "https://cdn2.f-cdn.com/contestentries/1483903/26643351/5cae3a3827081_thumb900.jpg",
    time: DateTime.now().subtract(Duration(hours: 2)),
    isRead: false,
    from: "Alan",
  ),
  ChatItem(
    userName: "Super Nerds",
    message: "Hey when are you going?",
    imageUrl:
        "https://cdn6.f-cdn.com/contestentries/1472241/28503293/5c62ae06b0a8f_thumb900.jpg",
    time: DateTime.now().subtract(Duration(hours: 3)),
    isRead: false,
    from: "Alisa",
  ),
  ChatItem(
    userName: "Tech Geeks",
    message: "That would be fun",
    imageUrl:
        "https://images.unsplash.com/photo-1542080681-b52d382432af?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80",
    time: DateTime.now().subtract(Duration(hours: 4)),
    from: "Tarin",
  ),
];

List<ChatItem> networkingItems = [
  ChatItem(
    userName: "Chad Lawson",
    message: "3 Shared Interests",
    imageUrl:
        "https://images.unsplash.com/photo-1542080681-b52d382432af?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80",
    time: DateTime.now().subtract(Duration(hours: 2)),
    isRead: false,
  ),
  ChatItem(
    userName: "Amber Ford",
    message: "2 Shared Interests",
    imageUrl:
        "https://cdn6.f-cdn.com/contestentries/1472241/28503293/5c62ae06b0a8f_thumb900.jpg",
    time: DateTime.now().subtract(Duration(hours: 3)),
    isRead: false,
  ),
  ChatItem(
    userName: "Kyle Mendez",
    message: "4 Shared Interests",
    imageUrl:
        "https://images.unsplash.com/photo-1542080681-b52d382432af?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80",
    time: DateTime.now().subtract(Duration(hours: 4)),
  ),
];
