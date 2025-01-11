import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
                elevation: 0, // Remove a sombra
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
                  width: 250,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 80, vertical: 0),
                    child: Text(
                      'HOME',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // SÃO OS FILHOS DO COLLUMN:
          const Text(
            'Selecione um móvel',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          const SizedBox(height: 30), // ESPAÇO VERTICAL ENTRE AS 'DIVS'
          // Primeira linha de botões
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/cadeira');
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
                  Navigator.pushNamed(context, '/cama');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 100, 57, 42),
                ),
                child: Image.asset(
                  'assets/pngs/cama.png',
                  height: 80,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 30.0),
          // Segunda linha de botões
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/sofa');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 100, 57, 42),
                ),
                child: Image.asset(
                  'assets/pngs/sofa.png',
                  height: 80,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/comoda');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 100, 57, 42),
                ),
                child: Image.asset(
                  'assets/pngs/comoda.png',
                  height: 80,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 30.0),
          // Terceira linha de botões
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/armario');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 100, 57, 42),
                ),
                child: Image.asset(
                  'assets/pngs/armario.png',
                  height: 80,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/mesa');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 100, 57, 42),
                ),
                child: Image.asset(
                  'assets/pngs/mesa.png',
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
