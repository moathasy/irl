class Account {
  final String id;
  final String name;
  final String email;
  final String phone;

  Account({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
  });

  Account.empty()
      : id = "",
        name = "",
        email = "",
        phone = "";

  factory Account.formJson(Map<String, dynamic> json, String uId) => Account(
        id: uId,
        name: json["name"] ??= "",
        email: json["email"] ??= "",
        phone: json["phoneNumber"] ??= "",
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "phoneNumber": phone,
      };

  @override
  bool operator ==(covariant Account other) =>
      other.id == id &&
      other.name == name &&
      other.email == email &&
      other.phone == phone;

  @override
  int get hashCode => Object.hash(
        id,
        name,
        email,
        phone,
      );

  @override
  String toString() => {
        "id": id,
        "name": name,
        "email": email,
        "phoneNumber": phone,
      }.toString();
}
