import 'package:flutter/material.dart';
import 'package:storeapp/models/product_model.dart';

// ignore: must_be_immutable
class CustomCard extends StatelessWidget {
   CustomCard({super.key,required this.product});
  ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        // ignore: sized_box_for_whitespace
        Container(
          height: 160,
          width: 200,
          child: const Card(
              elevation: 14,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'HandBag Lv',
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(height: 7),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('\$225'),
                          Icon(Icons.favorite, color: Colors.red)
                        ],
                      )
                    ]),
              )),
        ),
       Positioned(left:70, child: Image.network(product.image))
      ],
    );
  }
}
