// import 'package:flutter/material.dart';
// import 'package:thriftit/common/widgets/custom_button.dart';
// import 'package:thriftit/common/widgets/loader.dart';
// import 'package:thriftit/features/account/widgets/single_product.dart';
// import 'package:thriftit/features/admin/screens/add_product_screen.dart';
// import 'package:thriftit/features/admin/services/admin_services.dart';
// import 'package:thriftit/models/product.dart';
// import 'package:thriftit/providers/user_provider.dart';

// class AnalyticsScreen extends StatefulWidget {
//   const AnalyticsScreen({Key? key}) : super(key: key);

//   @override
//   State<AnalyticsScreen> createState() => _AnalyticsScreenState();
// }

// class _AnalyticsScreenState extends State<AnalyticsScreen> {
//   List<Product>? products;
//   final AdminServices adminServices = AdminServices();
//     final user = context<UserProvider>.user;




//   void deleteProduct(Product product, int index) {
//     adminServices.deleteProduct(
//       context: context,
//       product: product,
//       onSuccess: () {
//         products!.removeAt(index);
//         setState(() {});
//       },
//     );
//   }

//   void navigateToAddProduct() {
//     Navigator.pushNamed(context, AddProductScreen.routeName);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return products == null
//         ? const Loader()
//         : Scaffold(
//             body: GridView.builder(
//               padding: const EdgeInsets.all(10),
//               itemCount: products!.length,
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2),
//               itemBuilder: (context, index) {
//                 final productData = products![index];
//                 return  CustomButton(
//                 text: 'Proceed to Buy (${user.cart.length} items)',
               
//               ),
//               },
//             ),
//             // floatingActionButton: FloatingActionButton(
//             //   child: const Icon(Icons.add),
//             //   onPressed: navigateToAddProduct,
//             //   tooltip: 'Add a Product',
//             // ),
//             // floatingActionButtonLocation:
//             //     FloatingActionButtonLocation.centerFloat,
//           );
//   }
// }
