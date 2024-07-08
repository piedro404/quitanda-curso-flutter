import 'package:flutter/material.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int currentIndex = 0;
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: [
          Container(color: Colors.red,),
          Container(color: Colors.white,),
          Container(color: Colors.green,),
          Container(color: Colors.yellow,),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.green,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withAlpha(100),
        onTap: (idx) {
          setState(() {
            currentIndex = idx;
            pageController.jumpToPage(idx);
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: "Carrinho",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: "Pedidos",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Perfil",
          ),
        ],
      ),
    );
  }
}
