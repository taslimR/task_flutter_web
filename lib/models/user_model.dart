class User {
  final int id;
  final String name;
  final String userName;
  final String email;
  final String phone;
  final String website;
  final Map<String, dynamic> company;
  final Map<String, dynamic> address;

  User(this.id, this.name, this.userName, this.email, this.phone, this.website,
      this.company, this.address);

  User.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        name = json["name"],
        userName = json["username"],
        phone = json["phone"],
        website = json["website"],
        company = json["company"],
        address = json["address"],
        email = json["email"];
}
