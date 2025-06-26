import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';

  @override
Widget build(BuildContext context) {
  return Scaffold(
    resizeToAvoidBottomInset: true,
    body: Stack( 
      children: [ //Body
        Positioned.fill( //Fondo
          child: Image.asset('assets/fondo-dentista.jpg', fit: BoxFit.cover),
        ),
        Center( //En el centro del body
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centra los hijos de la columna verticalmente
          crossAxisAlignment: CrossAxisAlignment.center, // Centra los hijos de la columna horizontalmente
          children:[SizedBox(
            width: 350,
            child: Card(
              margin: EdgeInsets.all(24),
              color: Color(0xDADADADA),
              child: Padding(
                padding: EdgeInsets.only(
                  top: 65,
                  left: 16,
                  right: 16,
                  bottom: 100
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start, // importante: alinea hijos a la izquierda del Card
                  children: [
                    Center(
                      child: Text(
                        'Iniciar sesión',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: 65),
                    Text(
                      'Usuario',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                      ),
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0x4B4B4B4B),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color: Color(0x4B4B4B4B)), // Borde normal
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color: Color(0x4B4B4B4B)), // Borde al enfocar
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 14, horizontal: 15),
                      ),
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        letterSpacing: 1.2,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Contraseña',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                      ),
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0x4B4B4B4B),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color: Color(0x4B4B4B4B)), // Borde normal
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color: Color(0x4B4B4B4B)), // Borde al enfocar
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 14, horizontal: 15),
                      ),
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        letterSpacing: 1.2,
                      ),
                    ),
                    SizedBox(height: 30),
                      Center(
                        child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0x004B4B4B),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            'Iniciar sesión',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                            ),
                          ),
                        )
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 0),
          Text(
            "¿Olvidaste tu contraseña? Click aqui",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black
              ),
          ),
          Text(
            "Powered by BCSS",
            style: TextStyle(
                fontSize: 12,
                color: Colors.black
              ),
          )
      ]),
    )],
    )
  );
}
}