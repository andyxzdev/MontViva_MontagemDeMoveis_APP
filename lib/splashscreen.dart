import 'package:flutter/material.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 27, 16, 12),
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: ListView(
          children: [
            Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: Image.asset(
                      'assets/logoMontVivaBranca.png',
                      height: 580,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(0),
                  child: Text(
                    'Desenvolvido por @andyxdev_',
                    style: TextStyle(
                        color: Color.fromARGB(85, 255, 255, 255), fontSize: 18),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
