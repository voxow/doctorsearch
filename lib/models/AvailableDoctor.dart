class AvailableDoctor {
  final String? name, sector, patients, image;
  final int? experience;

  AvailableDoctor(
      {this.name, this.sector, this.experience, this.patients, this.image});
}

List<AvailableDoctor> demoAvailableDoctors = [
  AvailableDoctor(
    name: "Dr. Fiorella Gomez",
    sector: "Cardióloga",
    experience: 8,
    patients: '1.08K',
    image: "assets/images/Serena_Gome.png",
  ),
  AvailableDoctor(
    name: "Dr. Sandra Ramos",
    sector: "Cardióloga",
    experience: 5,
    patients: '2.7K',
    image: "assets/images/Asma_Khan.png",
  ),
  AvailableDoctor(
    name: "Dr. Robert Plant",
    sector: "Otorrinolaringólogo",
    experience: 5,
    patients: '2.7K',
    image: "assets/images/Kiran_Shakia.png",
  ),
  AvailableDoctor(
    name: "Dr. Masuda Khan",
    sector: "Medicine Specialist",
    experience: 5,
    patients: '2.7K',
    image: "assets/images/Masuda_Khan.png",
  ),
  AvailableDoctor(
    name: "Dr. Jorge Quiroz",
    sector: "Cardiólogo",
    experience: 5,
    patients: '2.7K',
    image: "assets/images/Johir_Raihan.png",
  ),
];
