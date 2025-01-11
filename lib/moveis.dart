import 'package:flutter/material.dart';

class Moveis extends StatelessWidget {
  const Moveis({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          backgroundColor: const Color.fromARGB(255, 100, 57, 42),
          leading: SizedBox(
            height: 80,
            width: 80,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: Colors.transparent,
                padding: EdgeInsets.zero,
              ),
              child: Image.asset(
                'assets/pngs/arrowesq.png',
                height: 40,
                width: 40,
                fit: BoxFit.contain,
              ),
            ),
          ),
          title: Center(
              child: SizedBox(
            height: 20,
            child: Center(
              child: SizedBox(
                height: 250,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 80, vertical: 0),
                  child: Text(
                    'Ramdom',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
            ),
          )),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Tipo de cadeira',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 100, 57, 42),
                ),
                child: Image.asset(
                  'assets/pngs/cadeira.png',
                  height: 80,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 100, 57, 42),
                ),
                child: Image.asset(
                  'assets/pngs/cadeira.png',
                  height: 80,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
