import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Image.asset(
              'assets/logoMontVivaPreta.png',
              height: 85,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Image.asset(
              'assets/pngs/imgmontador.png',
              height: 500,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(0),
            child: Text(
              'Bem vindo(a)',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 13.0, vertical: 21.0),
            child: SizedBox(
              width: 300.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 100, 57, 42),
                    foregroundColor: Colors.white),
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                child: const Text(
                  'Vamos montar!',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
