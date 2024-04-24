import 'package:brave_baseui/base_widget/base_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'base_widget/base_button.dart';
import 'routes/route_pages.dart';
import 'routes/route_path.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: RoutePath.main,
      getPages: RoutePages.getPages,
      title: 'UI',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('BraveBaseUI'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  Get.toNamed(RoutePath.text);
                },
                child: const Text('Text')),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed(RoutePath.button);
                },
                child: const Text('Button')),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed(RoutePath.imageIcon);
                },
                child: const Text('Image&Icon')),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed(RoutePath.switchCheckbox);
                },
                child: const Text('Switch&Checkbox')),
          ],
        ),
      ),
    );
  }
}
