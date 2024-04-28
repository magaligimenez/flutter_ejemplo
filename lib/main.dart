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
        backgroundColor: Colors.black, //color de fondo coherente
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
                      fontSize: 100, //tamaño de la fuente
                      fontWeight: FontWeight.w900,
                    )),
                  SizedBox(height: 10), // Agregar espacio entre los textos
                  Text("Inicie sesión para comenzar",
                    style: TextStyle(
                      fontSize: 20, // tamaño de la fuente
                      color: Colors.grey.shade700,
                    ))
                ],
              ),
              Image.asset(
                'assets/coffee.jpg',
                height: 600, //especifica la altura de la imagen
                width: 600, //especifica el ancho de la imagen
                fit: BoxFit.contain, //ajusta el modo de ajuste de la imagen
                ),
              Column(
                children: [
                  SizedBox(
                    width: double.infinity, //alinea los botones horizontalmente
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
