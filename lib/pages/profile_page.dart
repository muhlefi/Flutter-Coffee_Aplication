import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Heading message
            const Text(
              "Your Profile",
              style: TextStyle(fontSize: 24), // Set your desired font size
            ),

            const SizedBox(height: 25),

            // Profile Information
            Expanded(
              child: ListView(
                children: [
                  // Display profile information here
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Username"),
                    subtitle: Text("user@example.com"),
                  ),
                  ListTile(
                    leading: Icon(Icons.phone),
                    title: Text("Phone Number"),
                    subtitle: Text("+123 456 7890"),
                  ),
                  ListTile(
                    leading: Icon(Icons.location_city),
                    title: Text("Address"),
                    subtitle: Text("123 Coffee Street, Coffee City"),
                  ),
                  // Add more profile details here if necessary

                  const SizedBox(height: 25),

                  // Action Buttons
                  ElevatedButton.icon(
                    onPressed: () {
                      // Edit profile logic
                    },
                    icon: Icon(Icons.edit),
                    label: Text("Edit Profile"),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 50), // Full width button
                    ),
                  ),

                  const SizedBox(height: 10),

                  ElevatedButton.icon(
                    onPressed: () {
                      // Log out logic
                    },
                    icon: Icon(Icons.logout),
                    label: Text("Log Out"),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 50), // Full width button
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
