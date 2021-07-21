import 'package:flutter/material.dart';

class FavoriteButtonWidget extends StatefulWidget {
  @override
  _FavoriteButtonWidgetState createState() => _FavoriteButtonWidgetState();
}

class _FavoriteButtonWidgetState extends State<FavoriteButtonWidget> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          setState(() {
            isFavorite = !isFavorite;
            _showFavorite(context, isFavorite);
          });
        },
        icon: isFavorite
            ? Icon(
                Icons.favorite_outlined,
                color: Colors.red,
              )
            : Icon(
                Icons.favorite_outline,
                color: Colors.black87,
              ));
  }

  void _showFavorite(BuildContext context, bool isFavorite) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: isFavorite ? Text("Ditambahkan ke favorit") : Text("Dihapus dari favorit"),
        action: SnackBarAction(
          label: 'Info',
          onPressed: scaffold.hideCurrentSnackBar,
        ),
      ),
    );
  }
}
