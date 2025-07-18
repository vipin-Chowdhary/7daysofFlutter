class Catalog {
  static final items = [
    Item(
      id: 1,
      name: "Vipin",
      desc: "i am vipin chowdhary",
      price: 200,
      image:
          "https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg",
    ),
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  // final String ? color;
  final String image;
  Item({ required this.id,required this.name,required this.desc,required this.price, required this.image});
}

class ClickButtonModel {
  final int id;
  bool isModelTrue;
  ClickButtonModel({ required this.id,required this.isModelTrue,});
}