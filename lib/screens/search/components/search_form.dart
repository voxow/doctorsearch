import 'package:doctor/screens/search/search_result_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../../../constants.dart';

class SearchForm extends StatelessWidget {
  const SearchForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          DropdownButtonFormField(
            icon: SvgPicture.asset("assets/icons/address.svg"),
            items: currencies0.map<DropdownMenuItem<String>>((String category) {
              return DropdownMenuItem(
                value: category,
                child: Text(category),
              );
            }).toList(),
            onChanged: (value) {},
            validator: RequiredValidator(errorText: requiredField),
            decoration: dropdownInputDecoration.copyWith(
              hintText: "Seleccione Área",
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: DropdownButtonFormField(
              icon: SvgPicture.asset(
                "assets/icons/stethoscope.svg",
                height: 17,
                color: Color(0xFF677B92),
              ),
              items:
                  currencies1.map<DropdownMenuItem<String>>((String category) {
                return DropdownMenuItem(
                  value: category,
                  child: Text(category),
                );
              }).toList(),
              onChanged: (value) {},
              validator: RequiredValidator(errorText: requiredField),
              decoration: dropdownInputDecoration.copyWith(
                hintText: "Doctor, Especialista",
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {
              showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2025),
              );
            },
            color: Colors.white,
            elevation: 0,
            padding: EdgeInsets.symmetric(
                horizontal: 12, vertical: defaultPadding * 1.25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Seleccione Fecha",
                  style: TextStyle(
                    color: textColor.withOpacity(0.7),
                    fontSize: 15,
                  ),
                ),
                SvgPicture.asset("assets/icons/event.svg")
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SearchResultScreen(),
                ),
              ),
              child: Text("Buscar"),
            ),
          ),
        ],
      ),
    );
  }
}

var currencies0 = [
  "Trujillo",
  "Porvenir",
  "La Esperanza",
  "Libertad",
  "Alto Trujillo",
  "Florencia de Mora",
  "El milagro",
  "Salaverry",
  "Huanchaco"
];
var currencies1 = [
  "Psicología",
  "Cardiología",
  "Psiquiatría",
  "Neurología",
  "Gastroenterología",
  "Otorrinolarigología",
  "Traumatología",
  "Pediatría",
  "Medicina Interna",
  "Oftalmología",
  "Medicina General"
];
