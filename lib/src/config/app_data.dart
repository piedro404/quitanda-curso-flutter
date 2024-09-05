import 'package:quitanda/src/models/cart_item_model.dart';
import 'package:quitanda/src/models/item_model.dart';
import 'package:quitanda/src/models/order_model.dart';
import 'package:quitanda/src/models/user_model.dart';

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

List<CartItemModel> cartItem = [
  CartItemModel(item: apple, quantity: 2),
  CartItemModel(item: mango, quantity: 1),
  CartItemModel(item: guava, quantity: 3),
];

UserModel user = UserModel(
  name: "Pedro Henrique Martins Borges",
  email: "pedroplayborges@gmail.com",
  phone: "(99) 98477-5124",
  cpf: "025.115.603-64",
  password: "ADMIN",
);

List<OrderModel> orders = [
  OrderModel(
    id: 'ajsdkjasbdjsahgbdj',
    createdDateTime: DateTime.parse('2024-05-08 10:00:10'),
    overdueDateTime: DateTime.parse('2024-05-08 11:00:11'),
    items: [
      CartItemModel(
        item: apple,
        quantity: 2,
      ),
    ],
    status: 'pending_payment',
    copyAndPaste: 'pedroSola',
    total: 11,
  ),
  OrderModel(
    id: 'wihbdfbsdhdjwaeb',
    createdDateTime: DateTime.parse('2024-05-08 10:00:10'),
    overdueDateTime: DateTime.parse('2024-05-08 11:00:11'),
    items: [
      CartItemModel(
        item: mango,
        quantity: 5,
      ),
    ],
    status: 'refunded',
    copyAndPaste: 'pedroSola2',
    total: 32.30,
  ),
  OrderModel(
    id: 'gbjhisdbuhfbsdkhfb',
    createdDateTime: DateTime.parse('2024-09-05 10:00:10'),
    overdueDateTime: DateTime.parse('2024-09-10 15:10:00'),
    items: [
      CartItemModel(
        item: grape,
        quantity: 10,
      ),
    ],
    status: 'preparing_purchase',
    copyAndPaste: 'pedroSola3',
    total: 40.44,
  ),
];
