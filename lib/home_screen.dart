import 'package:dart_light_with_provider/provider/theme_mode_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dataFromThemeProvider = Provider.of<ThemeModeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        centerTitle: true,
      ),
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('data'),
            const Icon(Icons.favorite),
            ElevatedButton(onPressed: () {}, child: const Text('click me')),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {}, child: const Text('click me')),
            ),
          ],
        ),
      ),
      drawer: Drawer(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 100.0,
          ),
          RadioListTile<ThemeMode>(
            title: const Text('Light Mode'),
            value: ThemeMode.light,
            groupValue: dataFromThemeProvider.currentThemeMode,
            onChanged: dataFromThemeProvider.setTheme,
          ),
          RadioListTile<ThemeMode>(
            title: const Text('Dart Mode'),
            value: ThemeMode.dark,
            groupValue: dataFromThemeProvider.currentThemeMode,
            onChanged: dataFromThemeProvider.setTheme,
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(
            Icons.add,
            color: Colors.white,
          )),
    );
  }
}
