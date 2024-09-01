import 'package:app_quran/style/stylesheet.dart';
import 'package:flutter/material.dart';

class CardSurah extends StatelessWidget {
  const CardSurah({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 2,
      ),
      padding: const EdgeInsets.all(
        10,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              border: Border.all(
                width: 1,
                color: Colors.grey,
              ),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 1,
                ),
              ],
            ),
            child: Center(
              child: Text(
                "1",
                style: txtBlack,
              ),
            ),
          ),
          Column(
            children: [
              Text(
                "Name Surah",
                style: txtBlack,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "Name English Surah",
                style: txtBlack,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "Arti Ayat",
                style: txtBlack,
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Jumlah Ayat",
                    style: txtBlack,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Tempat Turun Ayat",
                    style: txtBlack,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
