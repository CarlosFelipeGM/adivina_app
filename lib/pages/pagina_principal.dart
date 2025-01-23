import 'package:adivina_app/pages/pagina_con_slider.dart';
import 'package:flutter/material.dart';

class PaginaPrincipal extends StatelessWidget {
  const PaginaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    int minNumero = 0;
    int maxNumero = 100;
    int actualNumero = 50;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/adivina.png'),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                "Estoy pensando en un numero entre $minNumero y $maxNumero",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => PaginaConSlider(
                      minimo: minNumero,
                      maximo: maxNumero,
                      valorInicial: actualNumero,
                    ),
                  ),
                );
              },
              child: const Text('Intentar Adivinar'),
            ),
          ],
        ),
      ),
    );
  }
}
