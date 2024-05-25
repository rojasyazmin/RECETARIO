import 'package:recetario/pages/admin/show_recipe.dart';
import 'package:recetario/pages/maps_page.dart';
import 'package:recetario/pages/myrecipes/list_my_recipe.dart';
import 'package:recetario/widgets/home_page.dart';

abstract class Content {


  Future<HomePageRecetario> lista(); 
  Future<ListMyRecetario> myrecipe(String id);
  Future<MapsPage> mapa(); 
  Future<InicioPage> admin();

 }


class ContentPage implements Content {

  Future<HomePageRecipes> lista() async {
    return HomePageRecipes();
  }

  Future<MapsPage> mapa() async {
    return MapsPage();
  }
  

  Future<InicioPage> admin() async {
    return InicioPage();
  }

  Future<ListMyRecipe> myrecipe(String id ) async {
    print('listados mis recetas $id'); 
    return ListMyRecipe(id: id,);
  }

}