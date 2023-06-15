class Menu {
  
  final String name;
  final String price;
  final String photo;
  final String id;

  const Menu({
    required this.name,
    required this.price,
    required this.photo,
    required this.id,
  });

  factory Menu.fromJson(Map<String, dynamic> json) {
    return Menu(
      name: json['name'],
      price: json['price'],
      photo: json['photo'],
      id: json['id'],
    );
  }
}