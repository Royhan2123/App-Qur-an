import 'package:app_quran/widget/card_surah.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 20,
          ),
          child: Column(
            children: [
              const CardSurah(),
              const CardSurah(),
              const CardSurah(),
              const CardSurah(),
              const CardSurah(),
              const CardSurah(),
              Container(),
            ],
          ),
        ),
      ),
    );
  }
}
