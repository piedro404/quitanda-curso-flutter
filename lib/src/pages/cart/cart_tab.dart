import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quitanda/src/config/custom_colors.dart';
import 'package:quitanda/src/models/cart_item_model.dart';
import 'package:quitanda/src/pages/cart/components/cart_tile.dart';
import 'package:quitanda/src/services/utils_services.dart';
import 'package:quitanda/src/config/app_data.dart' as appData;

class CartTab extends StatefulWidget {

  const CartTab({super.key});

  @override
  State<CartTab> createState() => _CartTabState();
}

class _CartTabState extends State<CartTab> {
  final UtilServices utilServices = UtilServices();

  void removeItemFromCart(CartItemModel cartItem) {
    setState(() {
      appData.cartItem.remove(cartItem);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carrinho'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: appData.cartItem.length,
              itemBuilder: (_, index) {
                return CartTile(cartItem: appData.cartItem[index], remove: removeItemFromCart);
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(30),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 3,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Total Geral',
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  utilServices.priceToCurrency(50.50),
                  style: TextStyle(
                      fontSize: 23,
                      color: CustomColors.customSwatchColor,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: CustomColors.customSwatchColor,
                    ),
                    child: const Text(
                      'Concluir Pedido',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
