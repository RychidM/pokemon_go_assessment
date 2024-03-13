import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:pokebook_app_assessment/src/core/shared/theme/theme.dart';
import 'package:pokebook_app_assessment/src/features/home/ui/home_screen.dart';
import 'package:pokebook_app_assessment/src/repository/pokebook_repo.dart';
import 'package:pokebook_app_assessment/src/repository/pokemon_model.dart';

void main() async{
  await _initializeHive();
  runApp(const MyApp());


  Map<int, Pokemon> pokemons = {
    0: Pokemon(name: '', imgPath: ''),
    1: Pokemon(name: '', imgPath: ''),
  };

  PokeBookRepo().saveMultiplePokemon(pokemons);
}

/// Initialized Hive and registers PokemonAdapter
Future<void> _initializeHive() async {
  await Hive.initFlutter();
  Hive.registerAdapter<Pokemon>(PokemonAdapter());
  await Hive.openBox<Pokemon>("pokemonBox");
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      splitScreenMode: true,
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppThemeData.theme(),
        home: const MyHomePage(title: 'PokeBook Home Page'),
      ),
    );
  }
}
