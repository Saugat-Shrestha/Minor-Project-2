import 'package:flutter/material.dart';
import 'package:thriftit/common/widgets/loader.dart';
import 'package:thriftit/constants/global_variables.dart';
import 'package:thriftit/features/home/services/home_services.dart';
import 'package:thriftit/features/product_details/screens/product_details_screen.dart';
import 'package:thriftit/models/product.dart';

class DealOfDay extends StatefulWidget {
  const DealOfDay({Key? key}) : super(key: key);

  @override
  State<DealOfDay> createState() => _DealOfDayState();
}

class _DealOfDayState extends State<DealOfDay> {
  Product? product;
  final HomeServices homeServices = HomeServices();

  @override
  void initState() {
    super.initState();
    fetchImages();
    fetchDealOfDay();
  }

  void fetchDealOfDay() async {
    product = await homeServices.fetchDealOfDay(context: context);
    setState(() {});
  }

  List products = [];

  void fetchImages() async {
    products = await homeServices.fetchAllProducts();
    setState(() {});
  }

  void navigateToDetailScreen(Product? product) {
    Navigator.pushNamed(
      context,
      ProductDetailScreen.routeName,
      arguments: product,
    );
  }

  @override
  Widget build(BuildContext context) {
    return product == null
        ? const Loader()
        : product!.name.isEmpty
            ? const SizedBox()
            : GestureDetector(
                // onTap: navigateToDetailScreen,
                child: Column(
                  children: [
                    // Container(
                    //   alignment: Alignment.topLeft,
                    //   padding: const EdgeInsets.only(left: 10, top: 15),
                    //   child: const Text(
                    //     'Deal of the day',
                    //     style: TextStyle(fontSize: 20),
                    //   ),
                    // ),
                    // Image.network(
                    //   product!.images[0],
                    //   height: 235,
                    //   fit: BoxFit.fitHeight,
                    // ),
                    // Container(
                    //   padding: const EdgeInsets.only(left: 15),
                    //   alignment: Alignment.topLeft,
                    //   child: const Text(
                    //     '\$100',
                    //     style: TextStyle(fontSize: 18),
                    //   ),
                    // ),
                    Container(
                      alignment: Alignment.topLeft,
                      padding:
                          const EdgeInsets.only(left: 15, top: 5, right: 40),
                      child: const Text(
                        'Clothes',
                        maxLines: 2,
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            color: GlobalVariables.unselectedNavBarColor),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    // SingleChildScrollView(
                    //   scrollDirection: Axis.vertical,
                    //   child: Column(
                    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //     children: images
                    //         .map(
                    //           (image) => Image.network(
                    //             image,
                    //             fit: BoxFit.fitWidth,
                    //             width: 100,
                    //             height: 100,
                    //           ),
                    //         )
                    //         .toList(),
                    //   ),
                    // ),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFFF9900).withOpacity(0.35),
                      ),
                      height: 500,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GridView.builder(
                          itemCount: products.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisSpacing: 10,
                                  crossAxisSpacing: 10),
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                print("hello");
                              },
                              child: Container(
                                padding: const EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black)),
                                child: Container(
                                  // padding: EdgeInsets.all(5),
                                  child: Column(
                                    children: [
                                      GestureDetector(
                                          onTap: () {
                                            navigateToDetailScreen(
                                                Product.fromMap(
                                                    products[index]));
                                          },
                                          child: Container(
                                            color:
                                                GlobalVariables.backgroundColor,
                                            child: Container(
                                              padding: EdgeInsets.all(15),
                                              child: AspectRatio(
                                                aspectRatio: 16 / 10,
                                                child: Image.network(
                                                  products[index]['images'][0],
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          )),
                                      Text(
                                          "Price : ${products[index]["price"]}"),
                                      Text(
                                          "Brand Name : ${products[index]['name']}"),
                                      // Text(
                                      //     "Description : ${products[index]['description']}")
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                      ).copyWith(left: 15),
                      alignment: Alignment.topLeft,
                      // child: Text(
                      //   'See all deals',
                      //   style: TextStyle(
                      //     color: Colors.cyan[800],
                      //   ),
                      // ),
                    ),
                  ],
                ),
              );
    // GestureDetector(
    //     onTap: navigateToDetailScreen,
    //     child: Column(
    //       children: [
    //         Container(
    //           alignment: Alignment.topLeft,
    //           padding: const EdgeInsets.only(left: 10, top: 15),
    //           child: const Text(
    //             'New Arrivals',
    //             style: TextStyle(fontSize: 20),
    //           ),
    //         ),
    //         Image.network(
    //           product!.images[0],
    //           height: 235,
    //           fit: BoxFit.fitHeight,
    //         ),
    //         // Container(
    //         //   padding: const EdgeInsets.only(left: 15),
    //         //   alignment: Alignment.topLeft,
    //         //   child: const Text(
    //         //     '\$100',
    //         //     style: TextStyle(fontSize: 18),
    //         //   ),
    //         // ),
    //         SingleChildScrollView(
    //           scrollDirection: Axis.horizontal,
    //           child: GridView.builder(
    //             itemCount: products.length,
    //             gridDelegate:
    //                 const SliverGridDelegateWithFixedCrossAxisCount(
    //                     crossAxisCount: 2,
    //                     mainAxisSpacing: 10,
    //                     crossAxisSpacing: 10),
    //             itemBuilder: (context, index) {
    //               return GestureDetector(
    //                   onTap: () {
    //                     navigateToDetailScreen(products[index]);
    //                   },
    //                   child: Column(
    //                     children: [
    //                       GestureDetector(
    //                           onTap: () {
    //                             navigateToDetailScreen(products[index]);
    //                           },
    //                           child: Image.network(
    //                               products[index]['images'][0])),
    //                       Text("Price : ${products[index]["price"]}"),
    //                       Text("Name : ${products[index]['name']}"),
    //                       Text(
    //                           "Description : ${products[index]['description']}")
    //                     ],
    //                   ));
    //             },
    //           ),
    //         ),
    //         Container(
    //           padding: const EdgeInsets.symmetric(
    //             vertical: 15,
    //           ).copyWith(left: 15),
    //           alignment: Alignment.topLeft,
    //           child: Text(
    //             'See all deals',
    //             style: TextStyle(
    //               color: Colors.cyan[800],
    //             ),
    //           ),
    //         ),
    //       ],
    //     ),
    //   );
  }
}
