import 'package:flutter/material.dart';
import 'package:imageprovide/image_provider.dart';
import 'package:provider/provider.dart';

import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context)=>Favorite(),
      child:MaterialApp(home: Homepage(),),);
  }
}
