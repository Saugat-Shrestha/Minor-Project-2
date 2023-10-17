import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:thriftit/constants/global_variables.dart';

import '../../../providers/user_provider.dart';
import '../../search/screens/search_screen.dart';

class TopBar extends StatefulWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  void navigateToSearchScreen(String query) {
    Navigator.pushNamed(context, SearchScreen.routeName, arguments: query);
  }

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // const Text(
        //   'Choose your Product',
        //   style: TextStyle(),
        // ),
        Row(
          children: <Widget>[
            Image.asset(
              'assets/images/logo.png',
              height: 50,
              width: 50,
            ),
            Text(
              'Hello, ${user.name}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
        SizedBox(
          height: 42,
          child: Material(
            borderRadius: BorderRadius.circular(7),
            elevation: 1,
            child: TextFormField(
              onFieldSubmitted: navigateToSearchScreen,
              decoration: InputDecoration(
                prefixIcon: InkWell(
                  onTap: () {},
                  child: const Padding(
                    padding: EdgeInsets.only(
                      left: 0,
                    ),
                    child: Icon(
                      Icons.search,
                      color: GlobalVariables.secondaryColor,
                      size: 23,
                    ),
                  ),
                ),
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.only(top: 10),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(7),
                  ),
                  borderSide: BorderSide.none,
                ),
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(7),
                  ),
                  borderSide: BorderSide(
                    color: GlobalVariables.secondaryColor,
                    width: 1,
                  ),
                ),
                hintText: 'Search clothes',
                hintStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                    color: GlobalVariables.secondaryColor),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
