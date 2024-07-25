import 'package:flutter/material.dart';
import 'package:statelesswedget/profile/widgets/profile_info_item.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
        leading: const Icon(
          Icons.arrow_back_ios,
          size: 16,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Icon(
              Icons.search,
              size: 24,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 12.0, bottom: 12),
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/1.jpg'),
            ),
          ),
          const Text(
            'profile name your',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const Text(
            '@profile.com.np',
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () => _dialog(context),
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: Colors.blue,
            ),
            child: const Text(
              "Edit Profile",
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 22.0),
            child: Divider(
              color: Colors.grey,
            ),
          ),
          const ProfileInfoItem(
            title: "Settings",
            icon: Icons.settings,
          ),
          const SizedBox(height: 22),
          const ProfileInfoItem(
            title: "Detail/Billing",
          ),
          const SizedBox(height: 22),
          const ProfileInfoItem(
            title: "Privacy",
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10),
            child: Divider(color: Colors.grey),
          ),
          const ProfileInfoItem(
            title: "About us",
          ),
          const SizedBox(height: 22),
          const ProfileInfoItem(
            title: "Logout",
          )
        ],
      ),
    );
  }
}

Future<dynamic> _dialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text("This is title"),
        actions: [
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  backgroundColor: Colors.amber,
                  content: Text("data"),
                ),
              );
            },
            child: const Text("Yes"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("No"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Cancel"),
          ),
        ],
      );
    },
  );
}
