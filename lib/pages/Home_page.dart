// ignore_for_file: file_names
import 'package:flutter/material.dart';
import '../items/contaner_home.dart';
import 'Colors_Page.dart';
import 'Family_page.dart';
import 'Numbers_page.dart';
import 'Phrases_Page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDFCF6),
      appBar: AppBar(
        backgroundColor: const Color(0xff0C356A),
        title: const Text(
          'Toku',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: Column(
          children: [
            colomsHome(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const NumberPage();
                    },
                  ),
                );
              },
              color: const Color(0xFFC5D4FC),
              name: 'Numbers',
            ),
            const SizedBox(
              height: 8,
            ),
            colomsHome(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const FamilyPage();
                    },
                  ),
                );
              },
              color: const Color(0xFFC5D4FC),
              name: 'Family Members',
            ),
            const SizedBox(
              height: 8,
            ),
            colomsHome(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const ColorsPage();
                    },
                  ),
                );
              },
              color: const Color(0xFFC5D4FC),
              name: 'Colors',
            ),
            const SizedBox(
              height: 8,
            ),
            colomsHome(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const PhrasesPage();
                    },
                  ),
                );
              },
              color: const Color(0xFFC5D4FC),
              name: 'Phrases',
            ),
          ],
        ),
      ),
    );
  }
}
