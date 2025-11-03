import 'package:bodecart/constants/constants.dart';
import 'package:bodecart/controllers/tab_index_controller.dart';
import 'package:bodecart/views/cart/cart_page.dart';
import 'package:bodecart/views/home/home_page.dart';
import 'package:bodecart/views/profile/profile_page.dart';
import 'package:bodecart/views/search/search_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  List<Widget> pageList = const [
    HomePage(),
    SearchPage(),
    CartPage(),
    ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(TabIndexController());
    return Obx(()=> Scaffold(
      body: Stack(
        children: [
          pageList[controller.tabIndex],
          Align(
            alignment: Alignment.bottomCenter,
            child: Theme(data: Theme.of(context).copyWith(canvasColor: kPrimary), 
            child: BottomNavigationBar(
              showSelectedLabels: true,
              showUnselectedLabels: false,
              unselectedIconTheme: const IconThemeData(color: Colors.grey),
              //selectedIconTheme: const IconThemeData(color: kSecondary),
              onTap: (value) {
                controller.setTabIndex = value;
              },
              currentIndex: controller.tabIndex,
              items: [
                BottomNavigationBarItem(
                  //icon: Icon(Icons.home),
                  icon: controller.tabIndex == 0 
                  ? const Icon(AntDesign.appstore1) 
                  : const Icon(AntDesign.appstore_o),
                  label: 'Home',
                ),
                const BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: 'Serach',
                ),
                const BottomNavigationBarItem(
                  //icon: Icon(Icons.shopping_cart),
                  icon: Badge(
                    label: Text('23'),
                    child: Icon(FontAwesome.opencart),
                  ),
                  label: 'Cart',
                ),
                const BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Profile',
                ),
              ],
              )),

          )


        ],
      ),
    ));
  }
}