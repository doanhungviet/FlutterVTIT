import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'favorite_state.dart';

class FavoriteButton extends StatelessWidget {
  const FavoriteButton({super.key});

  @override
  Widget build(BuildContext context) {

    final favoriteState = Provider.of<FavoriteState>(context);

    return IconButton(
        onPressed: (){
          favoriteState.toggleFavorite();
        },
        icon: Icon(
          favoriteState.isFavorite ? Icons.favorite : Icons.favorite_border
        )
    );
  }
}
