import 'package:dart_light_with_provider/provider/theme_mode_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home_screen.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider<ThemeModeProvider>(
              create: (_) => ThemeModeProvider())
        ],
        child: Builder(
          builder: (BuildContext context) => MaterialApp(
            themeMode: Provider.of<ThemeModeProvider>(context).currentThemeMode,
            theme: ThemeData(
              brightness: Brightness.light,
              primaryColor: Colors.purple,
              appBarTheme: const AppBarTheme(backgroundColor: Colors.purple),
              iconTheme: const IconThemeData(color: Colors.purple),
              radioTheme: RadioThemeData(
                fillColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.selected)) {
                      return Colors.purple;
                    }
                    return Colors.grey;
                  },
                ),
              ),
              elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
              ),
              textButtonTheme: TextButtonThemeData(
                  style: TextButton.styleFrom(iconColor: Colors.purple)),
              outlinedButtonTheme: OutlinedButtonThemeData(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  side: const BorderSide(color: Colors.purple),
                ),
              ),
              floatingActionButtonTheme: const FloatingActionButtonThemeData(
                backgroundColor: Colors.purple,
              ),
            ),
            darkTheme: ThemeData(
              brightness: Brightness.dark,
              primaryColor: Colors.red,
              appBarTheme: const AppBarTheme(backgroundColor: Colors.red),
              iconTheme: const IconThemeData(color: Colors.red),
              radioTheme: RadioThemeData(
                fillColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.selected)) {
                      return Colors.red;
                    }
                    return Colors.grey;
                  },
                ),
              ),
              elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              ),
              floatingActionButtonTheme: const FloatingActionButtonThemeData(
                backgroundColor: Colors.red,
              ),
            ),
            title: 'myapp',
            home: const HomeScreen(),
          ),
        ),
      ),
    );
