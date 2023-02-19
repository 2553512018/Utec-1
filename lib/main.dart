import 'package:flutter/material.dart';

void main() {
  runApp(parcial1());
}

// ignore: camel_case_types
class parcial1 extends StatelessWidget {
  parcial1({super.key});
  final _nombreinput = const TextField();
  final _apellidoinput = TextField();
  final _userinput = TextField();

  // This widget is the root of your application.
  @override
  final _carnetController = TextEditingController();
  final _nombreController = TextEditingController();
  final _apellidosController = TextEditingController();
  final _direccionController = TextEditingController();
  final _passwordController = TextEditingController();
  final _rePasswordController = TextEditingController();
  final _correoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulario'),
        centerTitle: true,
        leading: Icon(Icons.person),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: _carnetController,
                decoration: InputDecoration(
                  icon: Icon(Icons.credit_card),
                  hintText: 'Carnet',
                ),
              ),
              SizedBox(height: 16),
              TextField(
                controller: _nombreController,
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'Nombre',
                ),
              ),
              SizedBox(height: 16),
              TextField(
                controller: _apellidosController,
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'Apellidos',
                ),
              ),
              SizedBox(height: 16),
              TextField(
                controller: _direccionController,
                maxLines: 3,
                decoration: InputDecoration(
                  icon: Icon(Icons.location_on),
                  hintText: 'Dirección',
                ),
              ),
              SizedBox(height: 16),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  icon: Icon(Icons.lock),
                  hintText: 'Password',
                ),
                obscureText: true,
              ),
              SizedBox(height: 16),
              TextField(
                controller: _rePasswordController,
                decoration: InputDecoration(
                  icon: Icon(Icons.lock),
                  hintText: 'RePassword',
                ),
                obscureText: true,
              ),
              SizedBox(height: 16),
              TextField(
                controller: _correoController,
                maxLines: 3,
                decoration: InputDecoration(
                  icon: Icon(Icons.email),
                  hintText: 'Correo',
                ),
              ),
              SizedBox(height: 32),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        // Realizar acción de ingresar
                      },
                      child: Text('Ingresar'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blueAccent,
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        // Realizar acción de cancelar
                      },
                      child: Text('Cancelar'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
