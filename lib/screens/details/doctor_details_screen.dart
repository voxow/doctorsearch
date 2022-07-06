// ignore_for_file: unused_import

import 'package:doctor/components/heightlight.dart';
import 'package:doctor/components/rating.dart';
import 'package:doctor/constants.dart';
import 'package:doctor/screens/appointment/appointment_screen.dart';
import 'package:flutter/material.dart';

import 'components/communication.dart';

class DoctorDetailsScreen extends StatelessWidget {
  const DoctorDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dr. Fiorella Gomez"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/images/doctor_big_preview.png"),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                //child: Communication(),
              ),
              Text(
                "Especialista en Medicina y Cardiología",
                style: Theme.of(context).textTheme.subtitle2,
              ),
              Text("Clinica Sanchez Ferrer"),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: defaultPadding / 4),
                child: Rating(score: 5),
              ),
              SizedBox(height: defaultPadding),
              Text(
                "Conóceme más",
                style: Theme.of(context).textTheme.subtitle2,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: defaultPadding / 2),
                child: Text(
                  "Estudie medicina en la Universidad Nacional de Trujillo, me gradué con honores e hice mi especialización en cardiología en Lima, trabajando en el hospital Rebagliati",
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Highlight(
                      name: "Pacientes",
                      text: "1.08K",
                    ),
                    Highlight(
                      name: "Experiencia",
                      text: "8 Años",
                    ),
                    Highlight(
                      name: "Reseñas",
                      text: "500",
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                child: ElevatedButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AppointmentScreen(),
                    ),
                  ),
                  child: Text("Separar Cita"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
