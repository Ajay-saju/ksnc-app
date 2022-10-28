import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:ksnc/view/screens/routs/routs.dart';
import 'package:shared_preferences/shared_preferences.dart';

late SharedPreferences preferences;
void main() async {
  Future.delayed(const Duration(seconds: 2), () async {
    WidgetsFlutterBinding.ensureInitialized();
    preferences = await SharedPreferences.getInstance();
     runApp(const MyApp());
  });
 
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final login = preferences.getString("login");

    return ScreenUtilInit(
        designSize: const Size(286.86614173, 619.84251969),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: ((context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              scaffoldBackgroundColor: Colors.white,
              primarySwatch: Colors.blue,
            ),

            getPages: RoutsClass.routs,
            initialRoute: login == null || login.isEmpty
                ? RoutsClass.getLoginRout()
                : RoutsClass.getDashBoardRout(),
            // navigatorObservers: RoutsClass.routs,

            // getPages:Routs.routs,
          );
        }));
  }
}
