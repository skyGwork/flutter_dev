// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../config/const/color_manager.dart';
import 'container.dart';
import 'sel_text.dart';
import 'text.dart';

class AppDrawer extends StatelessWidget {
  final imaegUrl =
      'https://cdn2.iconfinder.com/data/icons/ecommerce-set-1-1/128/user_users_avatar_user_useri_icon-512.png';
  String title = 'webphin';
  String email = 'info@webphin.com';
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: ColorManager.white,
        child: ListView(
          // padding: EdgeInsets.all(0),
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text(title,
                    style: TextStyle(
                        color: Colors.white, fontSize: 24, letterSpacing: 3)),
                accountEmail: Text(email,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    )),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imaegUrl),
                  backgroundColor: Colors.white,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => const TextContent()),
                // );
              },
              leading: Icon(
                CupertinoIcons.arrow_2_circlepath,
                color: ColorManager.primary,
              ),
              title: Text(
                'Widget Explorer',
                // textScaleFactor: 1.2,
                style: TextStyle(
                  color: ColorManager.primary,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                TextButton(
                    onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TextContent()),
                        ),
                    child: Text(
                      'Container widget',
                      style: TextStyle(
                        color: ColorManager.dark,
                      ),
                    )),
                TextButton(
                    onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ContainerDemo()),
                        ),
                    child: Text(
                      'Container widget',
                      style: TextStyle(
                        color: ColorManager.dark,
                      ),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
