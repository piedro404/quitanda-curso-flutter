import 'package:quitanda/src/models/item_model.dart';

ItemModel apple = ItemModel(
  itemName: "Maçã",
  imgUrl: 'assets/fruits/apple.png',
  unit: "kg",
  price: 5.5,
  description: "Aqui temos Maçã de qualidade e 100% Natural.",
);

ItemModel grape = ItemModel(
  itemName: "Uva",
  imgUrl: 'assets/fruits/grape.png',
  unit: "kg",
  price: 7.4,
  description: "Aqui temos Uva de qualidade e 100% Natural.",
);

ItemModel guava = ItemModel(
  itemName: "Goiaba",
  imgUrl: 'assets/fruits/guava.png',
  unit: "kg",
  price: 11.5,
  description: "Aqui temos Goiaba de qualidade e 100% Natural.",
);

ItemModel kiwi = ItemModel(
  itemName: "Kiwi",
  imgUrl: 'assets/fruits/kiwi.png',
  unit: "un",
  price: 2.5,
  description: "Aqui temos Kiwi de qualidade e 100% Natural.",
);

ItemModel mango = ItemModel(
  itemName: "Manga",
  imgUrl: 'assets/fruits/mango.png',
  unit: "un",
  price: 2.5,
  description: "Aqui temos Manga de qualidade e 100% Natural.",
);

ItemModel papaya = ItemModel(
  itemName: "Mamão Papaya",
  imgUrl: 'assets/fruits/papaya.png',
  unit: "kg",
  price: 8,
  description: "Aqui temos Mamão Papaya de qualidade e 100% Natural.",
);

List<ItemModel> items = [
  apple,
  grape,
  guava,
  kiwi,
  mango,
  papaya,
];

List<String> categories = [
  'Frutas',
  'Grão',
  'Verduras',
  'Temperos',
  'Cereais',
];
