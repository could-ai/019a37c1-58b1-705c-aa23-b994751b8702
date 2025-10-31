import 'package:flutter/material.dart';

class RulesScreen extends StatelessWidget {
  const RulesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reglas Básicas de Básquetbol'),
        backgroundColor: Colors.orange,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          RuleCard(
            title: 'Objetivo del Juego',
            description:
                'El objetivo principal es anotar más puntos que el equipo contrario lanzando el balón a través del aro del oponente.',
          ),
          RuleCard(
            title: 'Puntuación',
            description:
                '• Tiros de campo: 2 puntos por canasta dentro del arco de tres puntos.\n'
                '• Tiros de tres puntos: 3 puntos por canasta desde fuera del arco de tres puntos.\n'
                '• Tiros libres: 1 punto por canasta desde la línea de tiros libres, otorgados después de ciertas faltas.',
          ),
          RuleCard(
            title: 'Reloj de Tiro (Shot Clock)',
            description:
                'Un equipo tiene un tiempo limitado (generalmente 24 segundos en la NBA y FIBA) para intentar un tiro a canasta. Si no lo hacen, pierden la posesión del balón.',
          ),
          RuleCard(
            title: 'Mover el Balón',
            description:
                'Los jugadores pueden avanzar el balón pasándolo a sus compañeros o botándolo (driblando) mientras caminan o corren. Dejar de botar y luego volver a botar (doble dribling) o dar más de dos pasos sin botar (caminar o viajar) es una violación.',
          ),
          RuleCard(
            title: 'Faltas Personales',
            description:
                'Es el contacto ilegal con un oponente. Si un jugador comete demasiadas faltas (generalmente 5 o 6, dependiendo de la liga), es expulsado del partido. Las faltas en el acto de tiro resultan en tiros libres para el jugador que recibió la falta.',
          ),
          RuleCard(
            title: 'Otras Violaciones Comunes',
            description:
                '• Doble Dribling: Botar el balón con ambas manos a la vez o botar, detenerse y volver a botar.\n'
                '• Acompañamiento del balón (Carrying): No botar el balón correctamente, llevando la mano por debajo del mismo.\n'
                '• 3 segundos en la zona: Un jugador ofensivo no puede permanecer en la "pintura" (el área debajo del aro) por más de tres segundos consecutivos.',
          ),
        ],
      ),
    );
  }
}

class RuleCard extends StatelessWidget {
  final String title;
  final String description;

  const RuleCard({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16.0),
      elevation: 4.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              description,
              style: const TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
