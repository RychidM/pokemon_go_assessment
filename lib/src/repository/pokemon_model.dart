import 'package:hive/hive.dart';

part 'pokemon_model.g.dart';

@HiveType(typeId: 1)
class Pokemon {
  @HiveField(0)
  String name;
  
  @HiveField(1)
  String imgPath;

  @HiveField(2)
  String? power;

  //TODO: add more params if needed

  Pokemon({required this.name, required this.imgPath, this.power});

}