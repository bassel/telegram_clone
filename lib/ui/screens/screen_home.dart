import 'package:flutter/material.dart';
import 'package:telegram_clone/data/chat_model.dart';
import 'package:telegram_clone/ui/widgets/drawer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chats = ChatModel.dummyData;
    return Scaffold(
      appBar: AppBar(
        title: Text('Telegram'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      drawer: TelegramDrawer(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff65a9e0),
        child: Icon(Icons.create),
        onPressed: () {},
      ),
      body: ListView.builder(
        itemCount: chats.length,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int i) => _buildChatListTile(context, chats[i]),
      ),
    );
  }

  Widget _buildChatListTile(BuildContext context, ChatModel model) {
    final themeData = Theme.of(context);
    final firstRow = <Widget>[];
    firstRow.add(
      Expanded(
        child: Text(model.name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
      ),
    );
    if (model.isRead) {
      firstRow.add(Icon(Icons.done, color: Colors.green, size: 20));
    }
    firstRow.add(Text(model.time, style: themeData.textTheme.caption.copyWith(fontSize: 14)));

    final secondRow = <Widget>[];
    secondRow.add(Expanded(
        child: Text(
      model.message,
      style: themeData.textTheme.subhead.copyWith(color: Colors.grey[600]),
    )));
    if (model.isPinned) {
      secondRow.add(Icon(Icons.place, color: Colors.grey));
    }
    return InkWell(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            color: model.isPinned ? Colors.grey[200] : null,
            height: 76,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 8.0),
                  child: CircleAvatar(
                    radius: 28,
                    backgroundImage: NetworkImage(model.profileUrl),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: firstRow,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: secondRow,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(indent: 72, height: 0, color: Colors.grey[400]),
        ],
      ),
      onTap: () {},
    );
  }
}
