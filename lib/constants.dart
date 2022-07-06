import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

const primaryColor = Color(0xFF255ED6);
const textColor = Color(0xFF35364F);
const backgroundColor = Color(0xFFE6EFF9);
const redColor = Color(0xFFE85050);

const defaultPadding = 16.0;

const emailError = 'Ingresa un email válido';
const requiredField = "Este campo es necesario";

final passwordValidator = MultiValidator(
  [
    RequiredValidator(errorText: 'Se necesita contraseña'),
    MinLengthValidator(8, errorText: 'La contraseña debe tener al menos 8 caractéres'),
    PatternValidator(r'(?=.*?[#?!@$%^&*-])',
        errorText: 'La contraseña debe tener al menos un caractér especial')
  ],
);

const InputDecoration dropdownInputDecoration = InputDecoration(
  fillColor: Colors.white,
  filled: true,
  border: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white),
  ),
);
