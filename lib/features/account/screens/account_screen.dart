import 'package:flutter/material.dart';
import 'package:thriftit/constants/global_variables.dart';
import 'package:thriftit/features/account/screens/Contact_us.dart';
import 'package:thriftit/features/account/widgets/below_app_bar.dart';
import 'package:thriftit/features/account/widgets/orders.dart';
import 'package:thriftit/features/account/widgets/top_buttons.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(color: GlobalVariables.secondaryColor),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.topLeft,
                // child: Image.asset(
                //   'assets/images/amazon_in.png',
                //   width: 120,
                //   height: 45,
                //   color: Colors.black,
                // ),
                child: const Text("Thrift-It"),
              ),
              Container(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ContactUs()));
                      },
                      child: Text(
                        "Contact-Us",
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: Column(
        children: const [
          SizedBox(
            height: 20,
          ),
          BelowAppBar(),
          SizedBox(height: 20),
          TopButtons(),
          SizedBox(height: 20),
          Orders(),
        ],
      ),
    );
  }
}
