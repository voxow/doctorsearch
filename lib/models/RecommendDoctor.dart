class RecommendedDoctor {
  final String name, speciality, institute, image;

  const RecommendedDoctor({
    required this.name,
    required this.speciality,
    required this.institute,
    required this.image,
  });
}

const List<RecommendedDoctor> demo_recommended_doctor = [
  RecommendedDoctor(
    name: "Dr. Fiorella Gomez",
    speciality: "Cadióloga",
    institute: "Clínica Primavera",
    image: "assets/images/Serena_Gome.png",
  ),
  RecommendedDoctor(
    name: "Dr. Fernando Terry",
    speciality: "Cardiólogo",
    institute: "Clínica Sanna",
    image: "assets/images/Salina_Zaman.png",
  ),
  RecommendedDoctor(
    name: "Dr. Sandra Ramos",
    speciality: "Psiquiatra",
    institute: "Clínica Sanna",
    image: "assets/images/Serena_Gome.png",
  ),
  RecommendedDoctor(
    name: "Dr. Jorge Quiroz",
    speciality: "Enterologo",
    institute: "Clinica Primavera",
    image: "assets/images/Salina_Zaman.png",
  ),
  RecommendedDoctor(
    name: "Dr. Robert Plant",
    speciality: "Otorrinolaringólogo",
    institute: "Clinica Sanchez Ferrer",
    image: "assets/images/Salina_Zaman.png",
  ),
];
