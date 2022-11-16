import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthForm extends StatefulWidget {
  const AuthForm({super.key});

  @override
  State<AuthForm> createState() => _AuthformState();
}

class _AuthformState extends State<AuthForm> {
  final _formkey = GlobalKey<FormState>();
  var _email = '';
  var _password = '';
  var _username = '';
  bool isLoginPage = true;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: [
            Container(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 50),
                child: Form(
                  key: _formkey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (!isLoginPage)
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          key: const ValueKey('username'),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Foute gebruikersnaam';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            _username = value!;
                          },
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: const BorderSide()),
                              labelText: "Gebruikersnaam",
                              labelStyle: GoogleFonts.roboto()),
                        ),
                      SizedBox(height: 10),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        key: const ValueKey('email'),
                        validator: (value) {
                          if (value!.isEmpty || !value.contains('@')) {
                            return 'Foute email';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _email = value!;
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: const BorderSide()),
                            labelText: "Email",
                            labelStyle: GoogleFonts.roboto()),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        key: const ValueKey('password'),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Fout wachtwoord';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _password = value!;
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: const BorderSide()),
                            labelText: "Wachtwoord",
                            labelStyle: GoogleFonts.roboto()),
                      ),
                      SizedBox(height: 50),
                      Container(
                          height: 70,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: null,
                          ))
                    ],
                  ),
                )),
          ],
        ));
  }
}
