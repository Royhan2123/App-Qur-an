import 'package:app_quran/login_screen.dart';
import 'package:app_quran/style/stylesheet.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 2,
                  ),
                ],
                image: DecorationImage(
                  image: NetworkImage(
                    'https://avatars.githubusercontent.com/u/121564375?s=400&u=f5a24501e2310109deb5908991d86659af3ccaa9&v=4',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Nama :",
                  style: txtBlack,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Royhan",
                  style: txtBlack,
                ),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            buttonBack(),
          ],
        ),
      ),
    );
  }

  Widget buttonBack() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            minimumSize: const Size(
              250,
              40,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                10,
              ),
            )),
        onPressed: () {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => const LoginScreen(),
            ),
            (route) => false,
          );
        },
        child: Text(
          "Log Out",
          style: txtWhite,
        ),
      ),
    );
  }
}
