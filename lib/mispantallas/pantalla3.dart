import 'package:flutter/material.dart';

class Pantalla3 extends StatelessWidget {
  // 1. LISTA DE TUS IMÁGENES (Sustituye con tus links de GitHub Raw)
  final List<String> misImagenesPerfumes = [
    'https://raw.githubusercontent.com/LeoRivera434/examen/refs/heads/main/hermosa-botella-perfume-sobre-fondo-marmol-negro_1.jpg',
    'https://raw.githubusercontent.com/LeoRivera434/examen/refs/heads/main/botella-splash-v2.webp',
    'https://raw.githubusercontent.com/LeoRivera434/examen/refs/heads/main/Y0997193_C099700665_E01_RHC.jpg',
    'https://raw.githubusercontent.com/LeoRivera434/examen/refs/heads/main/mejores-perfumes-para-hombres-7.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212), // Negro estético
      appBar: AppBar(
        title: const Text("CATÁLOGO PREMIUM", style: TextStyle(letterSpacing: 2)),
        backgroundColor: Colors.red[900],
        actions: const [Icon(Icons.search), Icon(Icons.shopping_bag_outlined)],
      ),
      body: Column(
        children: [
          // Header decorativo según el diseño No. 30
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                const Text("AURA", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18)),
                const SizedBox(width: 15),
                Expanded(child: Container(height: 2, color: Colors.red[900])), // Línea estética
                const SizedBox(width: 15),
                const Icon(Icons.auto_awesome, color: Colors.white, size: 20),
              ],
            ),
          ),
          
          // LISTADO DE 4 RECTÁNGULOS CON IMÁGENES
          Expanded(
            child: ListView.builder(
              itemCount: 4, // Exactamente 4 como pide el diseño
              padding: const EdgeInsets.symmetric(horizontal: 15),
              itemBuilder: (context, index) {
                return _buildPerfumeItem(misImagenesPerfumes[index]);
              },
            ),
          ),

          // BARRA DE NAVEGACIÓN INFERIOR (Diseño No. 30)
          Container(
            height: 70,
            decoration: BoxDecoration(
              color: Colors.black,
              border: Border(top: BorderSide(color: Colors.red[900]!, width: 2)),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.home_outlined, color: Colors.white),
                Icon(Icons.person_search, color: Colors.white),
                Icon(Icons.favorite_border, color: Colors.red),
                Icon(Icons.person_outline, color: Colors.white),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // WIDGET PARA CADA RECTÁNGULO DEL CATÁLOGO
  Widget _buildPerfumeItem(String urlImagen) {
    return Container(
      height: 100, // Altura ajustada para que quepan bien los 4
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        color: const Color(0xFF1E1E1E),
        border: Border.all(color: Colors.white24),
        borderRadius: BorderRadius.circular(4), // Bordes sutiles
      ),
      child: Row(
        children: [
          // LADO IZQUIERDO: Textos (Simulando las barras del dibujo)
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(height: 10, width: 120, color: Colors.white),
                  const SizedBox(height: 10),
                  Container(height: 8, width: 80, color: Colors.red[900]),
                ],
              ),
            ),
          ),
          
          // LADO DERECHO: LA IMAGEN (Ocupa el cuadro de la 'X' del diseño)
          Container(
            width: 100,
            decoration: const BoxDecoration(
              border: Border(left: BorderSide(color: Colors.white24)),
            ),
            child: ClipRRect(
              child: Image.network(
                urlImagen,
                fit: BoxFit.cover,
                // Si la imagen falla o no hay internet, muestra un icono elegante
                errorBuilder: (context, error, stackTrace) => 
                  const Icon(Icons.image_not_supported, color: Colors.white24),
              ),
            ),
          ),
        ],
      ),
    );
  }
}