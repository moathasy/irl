import 'package:flutter/material.dart';

class HomeScreenCard extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final String image;

  const HomeScreenCard({
    super.key,
    required this.onTap,
    required this.title,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: double.infinity,
            height: 200,
            child: GridTile(
              footer: Container(
                // You can use GridTileBar instead
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 0,
                ),
                color: Colors.white54,
                // You can use GridTileBar instead
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Colors.brown,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              child: Image(
                image: AssetImage(image),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
