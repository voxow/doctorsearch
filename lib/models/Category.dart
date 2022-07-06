class Category {
  final String icon, title;

  const Category({required this.icon, required this.title});
}

const List<Category> demo_categories = [
  Category(icon: "assets/icons/Pediatrician.svg", title: "Pediatría"),
  Category(icon: "assets/icons/Neurosurgeon.svg", title: "Neurocirugía"),
  Category(icon: "assets/icons/Cardiologist.svg", title: "Cardiología"),
  Category(icon: "assets/icons/Psychiatrist.svg", title: "Psiquiatría"),
];
