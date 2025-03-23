import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz2/custom_img_assets.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text('Settings'),
        // leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        // actions: [IconButton(icon: Icon(Icons.search), onPressed: () {})],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomImgAssets(urlImg: 'assets/Menu.png', width: 40, height: 40),
            CustomImgAssets(urlImg: 'assets/Search.png', width: 40, height: 40),
          ],
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Text(
            'Settings',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w800,
              fontSize: 36,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 20),
          _buildSettingsItem(
            context,
            icon: Icons.person_outline,
            title: 'Profile settings',
            subtitle: 'Settings regarding your profile',
          ),
          _buildSettingsItem(
            context,
            icon: Icons.newspaper_outlined,
            title: 'News settings',
            subtitle: 'Choose your favourite topics',
          ),
          _buildSettingsItem(
            context,
            icon: Icons.notifications_outlined,
            title: 'Notifications',
            subtitle: 'When would you like to be notified',
          ),
          _buildSettingsItem(
            context,
            icon: Icons.folder_open_outlined,
            title: 'Subscriptions',
            subtitle: 'Currently, you are in Starter Plan',
          ),
          SizedBox(height: 30),
          Text(
            'Other',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w400,
              fontSize: 26,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 10),
          _buildSettingsItem(
            context,
            icon: Icons.bug_report_outlined,
            title: 'Bug report',
            subtitle: 'Report bugs very easy',
          ),
          _buildSettingsItem(
            context,
            icon: Icons.share_outlined,
            title: 'Share the app',
            subtitle: 'Share on social media networks',
          ),
        ],
      ),
    );
  }

  Widget _buildSettingsItem(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return ListTile(
      leading: Icon(icon, size: 50),
      title: Text(
        title,
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.w400,
          fontSize: 14,
          color: Colors.black,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.w400,
          fontSize: 12,
          color: Colors.grey,
        ),
      ),
      trailing: Icon(Icons.arrow_circle_right_outlined, size: 16),
      onTap: () {},
    );
  }
}
