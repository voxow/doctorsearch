import 'package:doctor/constants.dart';
import 'package:flutter/material.dart';

import 'components/sign_up_form.dart';
import 'sign_in_screen.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Registrate",
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Text("¿Ya tienes una cuenta?"),
                  TextButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignInScreen(),
                      ),
                    ),
                    child: Text("Ingresar!"),
                  )
                ],
              ),
              SizedBox(height: defaultPadding * 1.5),
              SignUpForm(),
            ],
          ),
        ),
      ),
    );
  }
}
