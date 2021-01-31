import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:rezzkos/providers/space_provider.dart';
import 'package:rezzkos/ui/pages/pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SpaceProvider(),
        child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: SplashPage(),
        ));
  }
}
