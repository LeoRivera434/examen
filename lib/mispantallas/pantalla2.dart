import 'package:flutter/material.dart';

class Pantalla2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Paleta Limpia/Impía
    final Color colorFondo = Colors.white; 
    final Color colorTextoCasiNegro = const Color(0xFF1A1A1A);
    final Color colorAcentoRojo = const Color(0xFFC62828);

    return Scaffold(
      backgroundColor: colorFondo,
      appBar: AppBar(
        title: Text("DETALLE", style: TextStyle(color: colorTextoCasiNegro, fontWeight: FontWeight.w300, letterSpacing: 2)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: BackButton(color: colorTextoCasiNegro),
        actions: [
          IconButton(icon: Icon(Icons.share_outlined, color: colorTextoCasiNegro), onPressed: () {}),
          IconButton(icon: Icon(Icons.favorite_border_rounded, color: colorAcentoRojo), onPressed: () {}), // Corazón rojo
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            SizedBox(height: 30),
            // Imagen central con estética limpia
            Center(
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: colorAcentoRojo.withOpacity(0.5), width: 2), // Borde fino rojo
                  boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10, offset: Offset(0, 5))],
                ),
                child: CircleAvatar(
                  radius: 80,
                  backgroundColor: Colors.grey[100],
                  // RECUERDA: Cambiar por tu URL real de GitHub Raw
                  backgroundImage: NetworkImage("https://raw.githubusercontent.com/LeoRivera434/examen/refs/heads/main/hermosa-botella-perfume-sobre-fondo-marmol-negro_1.jpg"), 
                ),
              ),
            ),
            SizedBox(height: 30),
            
            // Texto descriptivo estético
            Text("VELVET ROUGE", style: TextStyle(color: colorTextoCasiNegro, fontSize: 24, fontWeight: FontWeight.bold, letterSpacing: 2, fontFamily: 'Georgia')),
            SizedBox(height: 10),
            Divider(color: colorAcentoRojo, thickness: 1, indent: 100, endIndent: 100),
            SizedBox(height: 20),
            
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Una fragancia profunda y sofisticada. Notas de salida de grosella negra, corazón de rosa damascena y fondo de pachulí y vainilla negra. Una experiencia sensorial única para la noche.",
                textAlign: TextAlign.center,
                style: TextStyle(color: colorTextoCasiNegro.withOpacity(0.8), fontSize: 14, height: 1.6, fontWeight: FontWeight.w300),
              ),
            ),
            
            Spacer(),
            
            // Botón estético hacia catálogo
            TextButton(
              onPressed: () => Navigator.pushNamed(context, '/pantalla3'),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("EXPLORAR COLECCIÓN", style: TextStyle(color: colorAcentoRojo, letterSpacing: 1, fontWeight: FontWeight.bold)),
                  SizedBox(width: 5),
                  Icon(Icons.arrow_right_alt, color: colorAcentoRojo),
                ],
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}