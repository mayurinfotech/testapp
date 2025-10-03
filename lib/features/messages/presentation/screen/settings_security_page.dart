import 'package:flutter/material.dart';

class SettingsSecurityPage extends StatefulWidget {
  const SettingsSecurityPage({super.key});

  @override
  State<SettingsSecurityPage> createState() => _SettingsSecurityPageState();
}

class _SettingsSecurityPageState extends State<SettingsSecurityPage> {
  bool _notificationsEnabled = false;
  bool _geoLocationEnabled = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Settings & Security"),
        backgroundColor: const Color(0xFFF5F3EB), // light beige
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          /// ACCOUNT SECTION
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: const Text(
              "Account",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
          ),
          const SizedBox(height: 8),

          _buildCard(
            children: [
              _buildTile(
                leading: Image.asset(
                  "assets/images/mail_icon.png",
                  height: 24,
                  width: 24,
                ),
                title: "Update email",
                onTap: () {},
              ),
              _divider(),
              _buildTile(
                leading: Icon(Icons.lock_outline),
                title: "Update password",
                onTap: () {},
              ),
              _divider(),
              _buildSwitchTile(
                icon: Icons.notifications_outlined,
                title: "Notifications",
                value: _notificationsEnabled,
                onChanged: (val) {
                  setState(() {
                    _notificationsEnabled = val;
                  });
                },
              ),
              _divider(),
              _buildSwitchTile(
                icon: Icons.location_on_outlined,
                title: "Geolocation",
                value: _geoLocationEnabled,
                onChanged: (val) {
                  setState(() {
                    _geoLocationEnabled = val;
                  });
                },
              ),
              _divider(),
              _buildTile(
                leading: Image.asset(
                  "assets/images/user-round-pen.png",
                  height: 24,
                  width: 24,
                ),
                title: "Update nickname",
                onTap: () {},
              ),
            ],
          ),

          const SizedBox(height: 20),

          /// PRIVACY SECTION
          const Text(
            "Privacy and visibility",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.black54,
            ),
          ),
          const SizedBox(height: 8),

          _buildCard(
            children: [
              _buildTile(
                leading: Image.asset(
                  'assets/images/block_user.png',
                  height: 24,
                  width: 24,
                ),
                title: "Blocked profiles",
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Card Container
  Widget _buildCard({required List<Widget> children}) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(children: children),
    );
  }

  /// ListTile without switch
  Widget _buildTile({
    required Widget leading,
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: leading,
      title: Text(title, style: const TextStyle(fontSize: 16)),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        size: 16,
        color: Colors.grey,
      ),
      onTap: onTap,
    );
  }

  /// ListTile with switch
  Widget _buildSwitchTile({
    required IconData icon,
    required String title,
    required bool value,
    required ValueChanged<bool> onChanged,
  }) {
    return ListTile(
      leading: Icon(icon, color: Colors.black87),
      title: Text(title, style: const TextStyle(fontSize: 16)),
      trailing: Switch(

        value: value,
        activeColor: const Color(0xFF5C7F71),
        onChanged: onChanged,
      ),
    );
  }

  /// Divider between tiles
  Widget _divider() {
    return Divider(
      height: 1,
      thickness: 1,
      color: Colors.grey.shade300,

    );
  }
}
