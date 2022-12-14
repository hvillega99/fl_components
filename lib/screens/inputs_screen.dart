import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'firstName': 'Mario',
      'lastName': 'Moreno',
      'email': 'mario@gmail.com',
      'password': '123456',
    };

    return Scaffold(
      appBar: AppBar(title: const Text('Inputs')),
      body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Form(
                key: _formKey,
                child: Column(children: [
                  const SizedBox(height: 20),
                  CustomInputField(
                      labelText: 'Nombre',
                      hintText: 'Ingrese su nombre',
                      formProperty: 'firstName',
                      formValues: formValues),
                  const SizedBox(height: 20),
                  CustomInputField(
                      labelText: 'Apellido',
                      hintText: 'Ingrese su apellido',
                      formProperty: 'lastName',
                      formValues: formValues),
                  const SizedBox(height: 20),
                  CustomInputField(
                      labelText: 'Correo',
                      hintText: 'Ingrese su correo',
                      keyboardType: TextInputType.emailAddress,
                      formProperty: 'email',
                      formValues: formValues),
                  const SizedBox(height: 20),
                  CustomInputField(
                      labelText: 'Contraseña',
                      hintText: 'Ingrese su contraseña',
                      obscureText: true,
                      formProperty: 'password',
                      formValues: formValues),
                  const SizedBox(height: 20),
                  DropdownButtonFormField<String>(
                      value: 'admin',
                      items: const [
                        DropdownMenuItem(
                            value: 'admin', child: Text('Administrador')),
                        DropdownMenuItem(value: 'user', child: Text('Usuario'))
                      ],
                      onChanged: (value) {
                        formValues['role'] = value ?? 'admin';
                      }),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        FocusScope.of(context).requestFocus(FocusNode());
                        if (!_formKey.currentState!.validate()) return;
                      },
                      child: const Center(child: Text('Enviar')),
                    ),
                  )
                ]),
              ))),
    );
  }
}
