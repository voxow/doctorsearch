import 'package:doctor/constants.dart';
import 'package:flutter/material.dart';

class MyAppointmentScreen extends StatelessWidget {
  const MyAppointmentScreen({Key? key}) : super(key: key);

  static final DateTime _date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mis Citas"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: SafeArea(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(defaultPadding),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.all(Radius.circular(defaultPadding / 2)),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: buildAppointmentInfo("Fecha",
                              "${_date.day}/${_date.month}/${_date.year}"),
                        ),
                        Expanded(
                          child: buildAppointmentInfo("Hora", "10.30 am"),
                        ),
                        Expanded(
                          child:
                              buildAppointmentInfo("Doctor", "Dr. Fiorella Gomez"),
                        ),
                      ],
                    ),
                    Divider(height: defaultPadding * 2),
                    Row(
                      children: [
                        Expanded(
                          child: buildAppointmentInfo(
                            "Tipo",
                            "Cardióloga",
                          ),
                        ),
                        Expanded(
                          child: buildAppointmentInfo("Lugar", "Clinica Primavera"),
                        ),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            style:
                                TextButton.styleFrom(backgroundColor: redColor),
                            child: Text("Cancelar"),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column buildAppointmentInfo(String title, String text) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 12,
            color: textColor.withOpacity(0.62),
          ),
        ),
        Text(
          text,
          maxLines: 1,
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
