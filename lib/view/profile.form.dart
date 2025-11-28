import 'package:flutter/material.dart';
import 'package:login_page/view/favorite.form.dart';
import 'package:login_page/view/login.view.dart';

class ProfileForm extends StatelessWidget {
  const ProfileForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            // Go back to BottomNavigation & show Home tab
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FavoriteForm()));
          },
        ),
        title: const Text(
          "Profile",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 10),

              // Profile Image
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(
                              "assets/images/boys.jpg"
                          ), // Temporary image
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade300,
                              blurRadius: 3,
                            )
                          ],
                        ),
                        child: const Icon(
                          Icons.camera_alt_outlined,
                          size: 18,
                          color: Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
              ),

              const SizedBox(height: 50),

              // List Items
              buildMenuItem(Icons.person_outline, "My Account", context),
              SizedBox(height: 10.0),
              buildMenuItem(Icons.notifications_none, "Notifications", context),
              SizedBox(height: 10.0),
              buildMenuItem(Icons.settings_outlined, "Settings", context),
              SizedBox(height: 10.0),
              buildMenuItem(Icons.help_outline, "Help Center", context),
              SizedBox(height: 10.0),
              buildMenuItem(Icons.logout, "Log Out", context),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMenuItem(IconData icon, String title, BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (title == "Log Out") {
          // Navigate to Login Page and remove previous screens
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => LoginView()),
                (route) => false,
          );
        } else {
          print("$title clicked"); // Future navigation for other menu items
        }
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 15),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
        decoration: BoxDecoration(
          color: const Color(0xfff3f5f7),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Icon(icon, size: 22, color: Colors.black87),
            const SizedBox(width: 15),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                ),
              ),
            ),
            const Icon(Icons.arrow_forward_ios, size: 18, color: Colors.black38),
          ],
        ),
      ),
    );
  }
}
