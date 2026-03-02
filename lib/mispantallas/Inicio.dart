import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        title: const Text("AURA EXCLUSIVE"),
        backgroundColor: Colors.red[900],
        actions: const [Icon(Icons.filter_list), Icon(Icons.more_vert)],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Column(
          children: [
            const SizedBox(height: 30),
            const Text("LOGO", style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold, letterSpacing: 4)),
            const Text("REGISTRATION", style: TextStyle(color: Colors.white70, fontSize: 14)),
            const SizedBox(height: 40),
            // Los 4 campos rectangulares del dibujo
            _buildInputBox(),
            _buildInputBox(),
            _buildInputBox(),
            _buildInputBox(),
            const Spacer(),
            // Texto del alumno exigido
            const Text("Tu Nombre Apellido - Grupo", style: TextStyle(color: Colors.red, fontSize: 10)),
            const SizedBox(height: 10),
            // Botón NEXT alineado a la izquierda con borde redondeado como el dibujo
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 120,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  ),
                  onPressed: () => Navigator.pushNamed(context, '/pantalla2'),
                  child: const Row(
                    children: [Text("NEXT"), Spacer(), Icon(Icons.arrow_forward, size: 16)],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildInputBox() {
    return Container(
      height: 35,
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 1.5),
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}