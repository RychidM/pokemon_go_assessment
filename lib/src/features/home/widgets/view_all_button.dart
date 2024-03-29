import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokebook_app_assessment/src/constants/app_constants/app_constants.dart';
import 'package:pokebook_app_assessment/src/core/routes/push_navigator.dart';
import 'package:pokebook_app_assessment/src/repository/pokebook_repo.dart';
import 'package:pokebook_app_assessment/src/repository/pokemon_model.dart';

import '../../pokemon_list_view/ui/pokemon_list_view.dart';

class ViewAllButton extends StatelessWidget {
  const ViewAllButton({super.key});

  @override
  Widget build(BuildContext context) {
    final repo = PokeBookRepo();
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            repo.savePokemon(1, Pokemon(name: "picachew", imgPath: "pkhslkf", power: "power"));
            Pokemon? pokemon = repo.getPokemon(1);

            print(pokemon?.power);
           var pokemons = repo.getAllPokemons();
           print(pokemons.map((e) => e.name));
    }  /*pushNavigator(context, child: const PokeMonListViewScreen())*/,
          child: Column(
            children: [
              Text(
                AppConstants.kViewAll,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Divider(
                height: 1,
                endIndent: 0.37.sw,
                indent: 0.37.sw,
                thickness: 2,
                color: Colors.black,
              )
            ],
          ),
        ),
      ],
    );
  }
}
