import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //Clase que contiene el widget.
  final _formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    //Widget de la pantalla
    // Obtenemos el tamaño de la pantalla
    final size = MediaQuery.of(context).size;
    // Obtenemos el padding de la parte inferior (incluyendo el teclado si está abierto)
    final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
    return Scaffold(
      // Desactivamos el comportamiento por defecto para manejarlo nosotros con SingleChildScrollView
      resizeToAvoidBottomInset: false,
      body: Stack(
        //Cuerpo
        children: [
          Positioned.fill(
            // Fondo de pantalla que ocupa todo el espacio
            child: Image.asset('assets/fondo-dentista.jpg', fit: BoxFit.cover),
          ),
          SingleChildScrollView(
            // Contenido principal que puede hacer scroll
            // Esto asegura que el SingleChildScrollView ocupe al menos la altura de la pantalla
            // Lo ajustamos dinámicamente para considerar la altura del teclado
            physics:
                const ClampingScrollPhysics(), // Evita un "rebote" excesivo al hacer scroll
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight:
                    size.height -
                    keyboardHeight, // Altura mínima adaptada al teclado
              ),
              child: IntrinsicHeight(
                // Permite a la columna interna ajustar su altura
                child: Padding(
                  padding: EdgeInsets.only(
                    // Añade un padding extra en la parte inferior si el teclado está visible
                    bottom: keyboardHeight > 0 ? keyboardHeight + 20.0 : 0.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment
                        .center, // Centra verticalmente el contenido
                    crossAxisAlignment: CrossAxisAlignment
                        .stretch, // Estira los hijos horizontalmente
                    children: [
                      const Spacer(), // Espaciador flexible para empujar la Card hacia el centro
                      Center(
                        // Centra horizontalmente la Card (ya que Column.stretch hará que ocupe todo el ancho)
                        child: Card(
                          // La tarjeta no tiene un ancho fijo, sino que usa márgenes
                          margin: const EdgeInsets.symmetric(horizontal: 40),
                          color: const Color(0xDADADADA),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            // Padding dentro de la tarjeta
                            padding: const EdgeInsets.all(
                              24.0,
                            ), // Padding uniforme
                            child: Form(
                              // Usamos Form para validación
                              key: _formKey,
                              child: Column(
                                mainAxisSize: MainAxisSize
                                    .min, // La columna ocupa el mínimo espacio vertical
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                    child: Container(
                                      margin: EdgeInsets.only(top: 60),
                                      child: Text(
                                        'Iniciar sesión',
                                        style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 40), // Espacio
                                  const Text(
                                    'Usuario',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  TextFormField(
                                    keyboardType: TextInputType.emailAddress,
                                    onChanged: (value) {
                                      setState(() {
                                        email = value;
                                      });
                                    },
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: const Color(0x4B4B4B4B),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(16),
                                        borderSide: const BorderSide(
                                          color: Color(0x4B4B4B4B),
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(16),
                                        borderSide: const BorderSide(
                                          color: Color(0x4B4B4B4B),
                                        ),
                                      ),
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                            vertical: 14,
                                            horizontal: 15,
                                          ),
                                    ),
                                    style: const TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      letterSpacing: 1.2,
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Por favor, introduce tu usuario';
                                      }
                                      return null;
                                    },
                                  ),
                                  const SizedBox(height: 20), // Espacio
                                  const Text(
                                    'Contraseña',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  TextFormField(
                                    obscureText: true,
                                    onChanged: (value) {
                                      setState(() {
                                        password = value;
                                      });
                                    },
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: const Color(0x4B4B4B4B),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(16),
                                        borderSide: const BorderSide(
                                          color: Color(0x4B4B4B4B),
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(16),
                                        borderSide: const BorderSide(
                                          color: Color(0x4B4B4B4B),
                                        ),
                                      ),
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                            vertical: 14,
                                            horizontal: 15,
                                          ),
                                    ),
                                    style: const TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      letterSpacing: 1.2,
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Por favor, introduce tu contraseña';
                                      }
                                      return null;
                                    },
                                  ),
                                  const SizedBox(height: 30),
                                  Center(
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                        bottom: 100,
                                      ),
                                      child: ElevatedButton(
                                        onPressed: () {
                                          if (_formKey.currentState!
                                              .validate()) {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              const SnackBar(
                                                content: Text(
                                                  'Iniciando sesión...',
                                                ),
                                              ),
                                            );
                                          }
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: const Color(
                                            0x4B4B4B4B,
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              14,
                                            ),
                                          ),
                                          minimumSize: const Size(200, 60),
                                        ),
                                        child: const Text(
                                          'Iniciar sesión',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ), // Espacio entre la Card y el texto de abajo
                      // Texto "¿Olvidaste tu contraseña?"
                      GestureDetector(
                        child: const Center(
                          child: Text(
                            "¿Olvidaste tu contraseña? Click aqui",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          "Powered by BCSS",
                          style: TextStyle(fontSize: 12, color: Colors.black),
                        ),
                      ),
                      const Spacer(), // Espaciador flexible al final
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
