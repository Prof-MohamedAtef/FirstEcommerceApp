import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/product_model.dart';
import 'cart_list_page.dart';

class HomePage extends StatelessWidget {
  HomePage({
    super.key,
  });

  final List<Widget> images = [
    Image.asset("assets/images/pic3.jpeg"),
    Image.asset("assets/images/pic4.jpeg"),
    Image.asset("assets/images/pic3.jpeg"),
    Image.asset("assets/images/pic4.jpeg")
  ];

  final List<String> image = [
    "assets/images/pic3.jpeg",
    "assets/images/pic4.jpeg",
    "assets/images/pic3.jpeg",
    "assets/images/pic4.jpeg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => CartPage(products: listCartProduct)));
            },
            // CartPage(price: widget.products.price,pic: widget.products.pic,
            //   nameProduct: widget.products.name,
            //   counter: counter,)));},
            icon:
                //     const  Text("ShowCart" , style: TextStyle(
                //   fontSize: 20 ,color: Colors.teal, fontWeight: FontWeight.w600
                // ),)),
                const Icon(
              Icons.shopping_cart,
              color: Colors.teal,
            ),
          )
        ],
        title: const Text(
          "HomePage",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
    );
  }
}