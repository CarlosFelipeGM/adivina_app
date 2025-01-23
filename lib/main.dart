import 'package:adivina_app/pages/pagina_principal.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Adivina Carlos App',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          scaffoldBackgroundColor: Theme.of(context).colorScheme.primary,
          textTheme: const TextTheme(
            titleMedium: TextStyle(color: Colors.white),
            titleLarge: TextStyle(color: Colors.white),
            displaySmall: TextStyle(color: Colors.redAccent),
          ),
          sliderTheme: SliderThemeData(
            activeTrackColor: Colors.blue,
            thumbColor: Colors.red,
          )),
      home: PaginaPrincipal(),
    );
  }
}
