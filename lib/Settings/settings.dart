import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:sajhabackup/EasyConst/Colors.dart';
import 'package:sajhabackup/EasyConst/Styles.dart';
import 'package:sajhabackup/Settings/Components/helpcenter.dart';
import 'package:sajhabackup/Widgets/settingstile.dart';
import 'package:sajhabackup/Settings/Components/accountdetails.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Settings',
          style: TextStyle(fontSize: 20, fontFamily: regular, color: color1),
        ),
        backgroundColor: color,
        leading: BackButton(
          color: Colors.white,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SettingsTile(
                color: color,
                icon: Ionicons.person_circle_outline,
                title: "Account",
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfileScreen()));
                },
              ),
              const SizedBox(
                height: 10,
              ),
              SettingsTile(
                color: color,
                icon: Ionicons.help,
                title: "Help Center",
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => helpcenter()));
                },
              ),
              const SizedBox(
                height: 10,
              ),
              SettingsTile(
                color: color,
                icon: Ionicons.moon_outline,
                title: "Theme",
                onTap: () {},
              ),
              const SizedBox(
                height: 10,
              ),
              SettingsTile(
                color: color,
                icon: Ionicons.language,
                title: "Language",
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
