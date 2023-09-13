class Person {
  final String name;
  final String? contact;
  final DateTime birthday;
  final DateTime? anniversary;

  Person(
    this.anniversary,
    this.contact, {
    required this.name,
    required this.birthday,
  });
}
