import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/edit_profile_screen.dart';

class ProfileSummaryCard extends StatelessWidget {
  const ProfileSummaryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const EditProfileScreen(),
          ),
        );
      },
      leading: const CircleAvatar(
        child: Icon(Icons.person),
      ),
      title: const Text(
        'Md Shahin Sarker',
        style: TextStyle(fontWeight: FontWeight.w700, color: Colors.white),
      ),
      subtitle: const Text(
        'sarker4292@gmail.com',
        style: TextStyle(color: Colors.white),
      ),
      trailing: const Icon(Icons.arrow_forward),
      tileColor: Colors.green,
    );
  }
}
