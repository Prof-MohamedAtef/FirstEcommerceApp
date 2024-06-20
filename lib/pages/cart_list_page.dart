import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/product_model.dart';
import '../widgets/default_text.dart';

class CartPage extends StatefulWidget {
  List<Products> products = [];

  CartPage({super.key, required this.products});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {

double total = 0;
  @override
  void initState(){
    for(var i in widget.products) {
      total = total +(i.price * i.counter!);
    }
    print(total); // testing message
    super.initState();
  }

  String name ="Cart";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Cart",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ListView.separated(
                shrinkWrap: true,
                  itemBuilder: (context, index){
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ListTile(
                        leading: Image.asset(widget.products[index].pic),
                        title: Text(widget.products[index].name,
                            style: const TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold)),
                        subtitle: Text(
                            "${widget.products[index].price * widget.products[index].counter!}"),
                        trailing: Text(
                          "${widget.products[index].counter}",
                          style: const TextStyle(
                            fontSize: 15,
                          ),
                        )),

                  );
              }, separatorBuilder: (context, index) => const SizedBox(
                height: 20,
              ), itemCount: widget.products.length),
              const SizedBox(
                height: 20,
              ),
              DefaultText(
                text: 'Total : $total\$',
                color: Colors.red,
                fontSize: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}