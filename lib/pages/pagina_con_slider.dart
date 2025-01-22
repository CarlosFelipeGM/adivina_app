import 'dart:math';

import 'package:adivina_app/pages/pagina_final.dart';
import 'package:flutter/material.dart';

class PaginaConSlider extends StatefulWidget {
  final int minimo;
  final int maximo;
  final int valorInicial;

  const PaginaConSlider({
    required this.minimo,
    required this.maximo,
    required this.valorInicial,
    super.key,
  });

  @override
  State<PaginaConSlider> createState() => _PaginaConSliderState();
}

class _PaginaConSliderState extends State<PaginaConSlider> {
  int numeroAleatorio = 1;
  late double valorActual;
  var estado = '....';

  @override
  void initState() {
    valorActual = widget.valorInicial.toDouble();
    numeroAleatorio = Random().nextInt(widget.maximo) + 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Estoy pensando en un número entre ${widget.minimo} y ${widget.maximo}",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(
              "Adivina cual es",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 10),
            Text(
              "Pista: demasiado $estado",
              style: Theme.of(context).textTheme.displaySmall,
            ),
            const SizedBox(height: 10),
            Text(
              "Creo que es: ${valorActual.toInt()}",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              "Usa el slider para adivinar el número.",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 10),
            Slider(
              min: widget.minimo.toDouble(),
              max: widget.maximo.toDouble(),
              value: valorActual,
              onChanged: (nuevoValor) {
                setState(() {
                  valorActual = nuevoValor;
                });
              },
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // _compararConAleatorio
                var resultado = _compararConAleatorio(
                  numeroAleatorio: numeroAleatorio,
                  valorActual: valorActual,
                );
                setState(() {
                  switch (resultado) {
                    case 0:
                      // son iguales, redirigir a la pagina final
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => PaginaFinal(
                            minimo: widget.minimo,
                            maximo: widget.maximo,
                            valorActual: valorActual.toInt(),
                          ),
                        ),
                      );
                      break;
                    case < 0:
                      estado = 'alto';
                      break;
                    case > 0:
                      estado = 'bajo';
                      break;
                  }
                });
              },
              child: const Text('Adivinar'),
            ),
          ],
        ),
      ),
    );
  }
}

int _compararConAleatorio({
  required int numeroAleatorio,
  required double valorActual,
}) {
  return numeroAleatorio - valorActual.toInt();
}
