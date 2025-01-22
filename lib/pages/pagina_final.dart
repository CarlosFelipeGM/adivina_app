import 'package:adivina_app/pages/pagina_principal.dart';
import 'package:flutter/material.dart';

class PaginaFinal extends StatelessWidget {
  final int minimo;
  final int maximo;
  final int valorActual;

  const PaginaFinal({
    required this.minimo,
    required this.maximo,
    required this.valorActual,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Estoy pensando en un número entre $minimo y $maximo",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(
              "Adivina cual es",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 10),
            Text(
              "Adivinaste",
              style: Theme.of(context).textTheme.displaySmall,
            ),
            Text(
              "El numero era el: $valorActual",
              style: Theme.of(context).textTheme.displaySmall,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const PaginaPrincipal(),
                  ),
                );
              },
              child: const Text(
                'Volver al inicio',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
