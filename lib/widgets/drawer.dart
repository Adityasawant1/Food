import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const [
          UserAccountsDrawerHeader(
            accountName: Text(
              "Aditya Sawant",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            accountEmail: Row(
              children: [
                Text(
                  "sawantaditya3636@gmail.com",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 50,
                ),
                Icon(
                  Icons.edit,
                  color: Colors.black,
                )
              ],
            ),
            currentAccountPicture: CircleAvatar(
                radius: 50, backgroundImage: AssetImage('assets/simple.jpg')),
            decoration: BoxDecoration(color: Colors.white),
          ),
          ListTile(
            leading: Icon(Icons.folder),
            title: Text(
              "My File",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: Icon(Icons.more_vert),
          ),
          ListTile(
            leading: Icon(Icons.group),
            title: Text(
              "Share with me",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text(
              "Starred",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(Icons.access_time_outlined),
            title: Text(
              "Recent",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
              leading: Icon(Icons.offline_pin),
              title: Text(
                "Offline",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          ListTile(
              leading: Icon(Icons.upload),
              title: Text(
                "Uploads",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          ListTile(
              leading: Icon(Icons.backup),
              title: Text(
                "Backups",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          ListTile(
              leading: Icon(Icons.delete),
              title: Text(
                "Trash",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          Divider(),
          ListTile(
              leading: Icon(Icons.info),
              title: Text(
                "About",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          ListTile(
              leading: Icon(Icons.settings),
              title: Text(
                "Setting & account",
                style: TextStyle(fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}
