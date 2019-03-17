import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

class TelegramDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(children: _buildDrawerContent(context)),
      ),
    );
  }

  List<Widget> _buildDrawerContent(BuildContext context) {
    final drawerContent = <Widget>[];
    drawerContent.add(_buildDrawerHeader());
    drawerContent.addAll(_buildDrawerBody(context));
    return drawerContent;
  }

  Widget _buildDrawerHeader() {
    return UserAccountsDrawerHeader(
      accountName: Text('Bassel Cheaib'),
      accountEmail: Text('+961 ** *** ***'),
      currentAccountPicture: CircleAvatar(
        backgroundImage: AssetImage('assets/images/profile.png'),
      ),
      onDetailsPressed: () {},
    );
  }

  List<Widget> _buildDrawerBody(BuildContext context) {
    return <Widget>[
      DrawerListTile(
        iconData: OMIcons.group,
        title: 'New Group',
        onTilePressed: () {},
      ),
      DrawerListTile(
        iconData: OMIcons.lock,
        title: 'New Secret Chat',
        onTilePressed: () {},
      ),
      DrawerListTile(
        iconData: OMIcons.notifications,
        title: 'New Channel',
        onTilePressed: () {},
      ),
      Divider(),
      DrawerListTile(
        iconData: OMIcons.contacts,
        title: 'Contacts',
        onTilePressed: () {},
      ),
      DrawerListTile(
        iconData: OMIcons.bookmarkBorder,
        title: 'Saved Messages',
        onTilePressed: () {},
      ),
      DrawerListTile(
        iconData: OMIcons.phone,
        title: 'Calls',
        onTilePressed: () {},
      ),
      DrawerListTile(
        iconData: OMIcons.personAdd,
        title: 'Invite Friends',
        onTilePressed: () {},
      ),
      DrawerListTile(
        iconData: OMIcons.settings,
        title: 'Settings',
        onTilePressed: () {},
      ),
      DrawerListTile(
        iconData: OMIcons.helpOutline,
        title: 'Telegram FAQ',
        onTilePressed: () {},
      ),
    ];
  }
}

class DrawerListTile extends StatelessWidget {
  final IconData iconData;
  final String title;
  final VoidCallback onTilePressed;

  const DrawerListTile(
      {Key key, @required this.iconData, @required this.title, @required this.onTilePressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      leading: Icon(iconData),
      title: Text(title, style: TextStyle(fontSize: 16)),
      onTap: onTilePressed,
    );
  }
}
