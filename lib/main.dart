import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:thriftit/common/widgets/bottom_bar.dart';
import 'package:thriftit/constants/global_variables.dart';
import 'package:thriftit/features/admin/screens/admin_screen.dart';
import 'package:thriftit/features/auth/screens/auth_screen.dart';
import 'package:thriftit/features/auth/services/auth_service.dart';
import 'package:thriftit/providers/user_provider.dart';
import 'package:thriftit/router.dart';

import 'package:khalti_flutter/khalti_flutter.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => UserProvider(),
    ),
  ], child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AuthService authService = AuthService();

  @override
  void initState() {
    super.initState();
    authService.getUserData(context);
    
  }

  @override
  Widget build(BuildContext context) {
    return KhaltiScope(
        publicKey: 'test_public_key_307850aa01dd432799359e427571f6a7',
        enabledDebugging: true,
        builder: (context, navKey) {
          return MaterialApp(
            navigatorKey: navKey,
            localizationsDelegates: const [
              KhaltiLocalizations.delegate,
            ],
            debugShowCheckedModeBanner: false,
            title: 'Thriftit',
            theme: ThemeData(
              scaffoldBackgroundColor: GlobalVariables.backgroundColor,
              colorScheme: const ColorScheme.light(
                primary: GlobalVariables.secondaryColor,
              ),
              appBarTheme: const AppBarTheme(
                elevation: 0,
                iconTheme: IconThemeData(
                  color: Colors.black,
                ),
              ),
              useMaterial3: true, // can remove this line
            ),
            onGenerateRoute: (settings) => generateRoute(settings),
            home: Provider.of<UserProvider>(context).user.token.isNotEmpty
                ? Provider.of<UserProvider>(context).user.type == 'user'
                    ? const BottomBar()
                    : const AdminScreen()
                : const AuthScreen(),
            // home: Consumer<UserProvider>(
            //   builder: (context, value, child) {
            //     if (value.user.token.isNotEmpty) {
            //       if (value.user.type == 'user') {
            //         return const BottomBar();
            //       } else {
            //         return const AdminScreen();
            //       }
            //     }
            //     return const AuthScreen();
            //   },
            // ),
          );
        });
  }
}
