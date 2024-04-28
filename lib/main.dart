import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cafeteria Mickey',
      home: Scaffold(
        backgroundColor: Colors.black, // Color de fondo coherente
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Cafeteria Mickey",
                    style: TextStyle(
                      color: Colors.brown,
                      fontSize: 100, // Reducir el tamaño de la fuente para un aspecto más equilibrado
                      fontWeight: FontWeight.w900,
                    )),
                  SizedBox(height: 10), // Agregar espacio entre los textos
                  Text("Inicie sesión para comenzar su pedido",
                    style: TextStyle(
                      fontSize: 20, // Reducir el tamaño de la fuente para un aspecto más equilibrado
                      color: Colors.grey.shade700,
                    ))
                ],
              ),
              Image.asset(
                'assets/coffee.jpg',
                height: 600, // Especifica la altura deseada de la imagen
                width: 600, // Especifica el ancho deseado de la imagen
                fit: BoxFit.contain, // Opcional: ajusta el modo de ajuste de la imagen
                ),
              Column(
                children: [
                  SizedBox(
                    width: double.infinity, // Alinear los botones horizontalmente
                    child: ElevatedButton(
                      onPressed: (){}, 
                      child: Text("Iniciar sesión", style: TextStyle(color: Colors.white),),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.brown,
                        padding: EdgeInsets.symmetric(vertical: 20), // Reducir el padding vertical
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)
                        )
                      ),
                    ),
                  ),
                  SizedBox(height: 10), // Agregar espacio entre los botones
                  SizedBox(
                    width: double.infinity, // Alinear los botones horizontalmente
                    child: ElevatedButton(
                      onPressed: (){}, 
                      child: Text("Registrarse", style: TextStyle(color: Colors.brown)),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey.shade200,
                        side: BorderSide(color: Colors.brown),
                        padding: EdgeInsets.symmetric(vertical: 20), // Reducir el padding vertical
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)
                        )
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ),
    );
  }
}
