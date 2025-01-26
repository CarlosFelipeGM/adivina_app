import 'package:adivina_app/pages/pagina_con_slider.dart';
import 'package:flutter/material.dart';

class PaginaPrincipal extends StatelessWidget {
  const PaginaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    // Solo por standard usar var para variables locales cuando son asignadas
    // en la misma linea de su declaracion
    var minNumero = 0;
    var maxNumero = 100;
    var actualNumero = 50;
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
