// ignore_for_file: non_constant_identifier_names

class SearchDoctor {
  final String? image, name, speciality, time, hospitalName;

  SearchDoctor(
      {this.image, this.name, this.speciality, this.time, this.hospitalName});
}


List<SearchDoctor> demo_search_doctors = [
  SearchDoctor(
    image: "assets/images/search_doc_1.png",
    name: "Dr. Fiorella Gomez",
    speciality: "Cardióloga",
    time: "12.00pm - 4.00pm",
    hospitalName: "Clinica Primavera",
  ),
  SearchDoctor(
    image: "assets/images/search_doc_2.png",
    name: "Dr. Fernando Terry",
    speciality: "Cardiólogo",
    time: "8.00pm - 11.00pm",
    hospitalName: "Clinica Sanna",
  ),
  SearchDoctor(
    image: "assets/images/search_doc_3.png",
    name: "Dr. Sandra Ramos",
    speciality: "Cardióloga",
    time: "3.00pm - 5.00pm",
    hospitalName: "Clinicia Sanna",
  ),
  SearchDoctor(
    image: "assets/images/search_doc_4.png",
    name: "Dr. Jorge Quiroz",
    speciality: "Cardiólogo",
    time: "12.00pm - 4.00pm",
    hospitalName: "Clinica Primavera",
  ),
];
