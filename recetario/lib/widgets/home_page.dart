import 'package:flutter/material.dart';
import 'package:recetario/auth/auth.dart';
import 'package:recetario/widgets/food_body.dart';
import 'package:recetario/widgets/foot_top.dart';


class HomePageRecipes extends StatefulWidget {
  @override
  _HomePageRecipesState createState() => _HomePageRecipesState();
}

class _HomePageRecipesState extends State<HomePageRecipes> {

  String userID;
  
  @override
  void initState() {
    super.initState();

    setState(() {
      Auth().currentUser().then((onValue) {
        userID = onValue;
        print('el futuro Cheft $userID');
      }); 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              child: Text(
                'Favorito',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: FoodTop(),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              child: Text(
                'Recetas',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            child: FoodBody(),
          ),          
        ],
      ),
    );
  }
}
