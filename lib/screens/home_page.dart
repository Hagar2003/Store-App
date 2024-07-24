import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:storeapp/models/product_model.dart';
import 'package:storeapp/services/get_all_products.dart';
import 'package:storeapp/widgets/custom_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = 'HomePage';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'New Trend',
              style: TextStyle(fontSize: 25),
            ),
            centerTitle: true,
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.cartPlus,
                    size: 25,
                    color: Colors.black,
                  )),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              right: 16.0,
              top: 60,
            ),
            child: FutureBuilder<List<ProductModel>>(
                future: AllProductsService().getAllProducts(),
                builder: (BuildContext context, AsyncSnapshot<dynamic>snapshot) {

                  if (snapshot.hasData) {
                    List<ProductModel> products = snapshot.data!;
                    return GridView.builder(
                        clipBehavior: Clip.none,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: 1.2,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10),
                        itemBuilder: (context, index) {
                          return CustomCard(
                            product: products[index],
                          );
                        });
                  } else {
                    return const Center(child: CircularProgressIndicator());
                  }
                }),
          ),
        ));
  }
}
