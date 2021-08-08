
import 'package:flutter/material.dart';
import 'package:task1/ActionButton.dart';
import 'package:task1/Alert.dart';



class AppDrawer extends StatelessWidget {
  const AppDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
              accountName: Text('Abdelrhman'),
              accountEmail: Text("test@gmail.com"),
              currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                   child: Text("A", style: TextStyle(fontSize: 40.0, color: Colors.blueAccent)))
          ),
          ListTile(
            leading: Icon(Icons.account_circle_rounded),
            title: Text("Sign In"),
            subtitle: Text('user sign in'),
            trailing: Icon(Icons.navigate_next),
            isThreeLine: false,
            selected: false,
          ),
          ListTile(
            leading: Icon(Icons.close),
            title: Text("Close Drawer"),
            onTap: () => Navigator.of(context).pop(),
          ),
          ListTile(
            leading: Icon(Icons.add_alert),
            title: Text("Close Drawer"),
            trailing: Icon(Icons.dangerous),
          ),
      ])
    );
  }
}

