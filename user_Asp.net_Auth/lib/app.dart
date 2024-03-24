import 'package:flutter/material.dart';
import 'package:flutter_application_3/Provider/user_provider.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'features/authentication/screens/Login/login.dart';
import 'features/utils/Theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => User_Provider())],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        theme: TAppTheme.lightTheme,
        darkTheme: TAppTheme.darkTheme,
        home: LoginScreen(),
      ),
    );
  }
}
