import 'package:flutter/material.dart';
import 'package:task_flow/features/user_settings/presentation/pages/changing_avatar_page.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, bottom: 40),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 24),
              const Center(
                child: Hero(
                  tag: "ProfileAvatar",
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage('https://picsum.photos/200'),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              const Center(
                child: Text(
                  'Martha Hays',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 35),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: const Color(0xFF363636),
                    ),
                    child: const Text(
                      '10 Task left',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 35),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: const Color(0xFF363636),
                    ),
                    child: const Text(
                      '5 Task done',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              const Text('Settings', style: TextStyle(color: Colors.white54, fontSize: 14)),
              const SizedBox(height: 4),
              const _SettingsItem(icon: Icons.settings_outlined, itemText: "App Settings"),
              const SizedBox(height: 16),
              const Text('Account', style: TextStyle(color: Colors.white54, fontSize: 14)),
              const SizedBox(height: 8),
              const _SettingsItem(icon: Icons.person_outline, itemText: "Change account name"),
              const SizedBox(height: 8),
              const _SettingsItem(icon: Icons.key_outlined, itemText: "Change account password"),
              const SizedBox(height: 8),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => const ChangingAvatarPage()));
                },
                child: const _SettingsItem(
                    icon: Icons.camera_alt_outlined, itemText: "Change account Image"),
              ),
              const SizedBox(height: 16),
              const Text('TaskFlow', style: TextStyle(color: Colors.white54, fontSize: 14)),
              const SizedBox(height: 8),
              const _SettingsItem(icon: Icons.account_box_outlined, itemText: "About US"),
              const SizedBox(height: 8),
              const _SettingsItem(icon: Icons.info_outline, itemText: "FAQ"),
              const SizedBox(height: 8),
              const _SettingsItem(icon: Icons.flash_on_outlined, itemText: "Help & Feedback"),
              const SizedBox(height: 8),
              const _SettingsItem(icon: Icons.monetization_on_outlined, itemText: "Support US"),
              const SizedBox(height: 8),
              const Row(
                children: [
                  Icon(
                    Icons.logout_outlined,
                    color: Color(0xFFFF4949),
                  ),
                  SizedBox(
                    width: 14,
                  ),
                  Text(
                    'Logout',
                    style: TextStyle(fontSize: 16, color: Color(0xFFFF4949)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _SettingsItem extends StatelessWidget {
  const _SettingsItem({required this.icon, required this.itemText});

  final IconData icon;
  final String itemText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                icon,
                size: 24,
              ),
              const SizedBox(width: 16),
              Text(
                itemText,
                style: const TextStyle(fontSize: 16, color: Colors.white),
              ),
            ],
          ),
          const Icon(
            Icons.keyboard_arrow_right_outlined,
            size: 24,
          ),
        ],
      ),
    );
  }
}
