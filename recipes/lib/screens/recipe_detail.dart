import 'package:flutter/material.dart';
import 'package:recipes/models/recipe.dart';
import 'package:recipes/constants.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;
  const RecipeDetail({Key? key, required this.recipe}) : super(key: key);

  @override
  _RecipeDetailState createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  // TODO: Add _sliderVal here
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.label),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(
                image: AssetImage(widget.recipe.imageUrl),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              widget.recipe.label,
              style: kDetailLabelTextStyle,
            ),
            Expanded(
              child: ListView.builder(
                padding: kDetailIngredientListPadding,
                itemCount: widget.recipe.ingredients.length,
                itemBuilder: (BuildContext context, int index) {
                  final ingredient = widget.recipe.ingredients[index];
                  // TODO: Add ingredient.quantity
                  return Text(
                    '${ingredient.quantity} ${ingredient.measure} ${ingredient.name}',
                  );
                },
              ),
            ),
            // TODO: Add Slider() here
          ],
        ),
      ),
    );
  }
}
