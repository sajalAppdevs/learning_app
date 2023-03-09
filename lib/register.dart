/// Task 1: Please follow the steps for the task
/// - Create a register form with 3 input fields namely – Full Name, Email, Password.
/// - Create a submit form button.
/// - Style the input fields.
/// - Validate the form for Empty and Email (maersk email - Regex).
/// - Submit the form if validation success and print on the console.

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:learning_app/widgets/custom_text_field.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  /// created a form key which will store the state of the form
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registration'),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextField(
                hintText: 'Full Name',
                textInputAction: TextInputAction.next,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Full Name should not be empty!!';
                  } else {
                    log('Full Name successfully validated!');
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                hintText: 'E-mail',
                textInputAction: TextInputAction.next,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Email should not be empty!!';
                  } else if (!RegExp(r'([a-z]*)\.([a-z]*)\@maersk\.com')
                      .hasMatch(value)) {
                    return 'Please enter a valid email!';
                  } else {
                    log('Email successfully validated!');
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                hintText: 'Password',
                textInputAction: TextInputAction.next,
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Password should not be empty!!';
                  } else {
                    log('Password successfully validated!');
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(300, 45),
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white),
                onPressed: () {
                  _formKey.currentState!.validate();
                },
                child: const Text(
                  'Test',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
