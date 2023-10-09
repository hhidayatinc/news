import '../model/category_model.dart';

List<CategoryModel> getCategories(){
  List<CategoryModel> category = <CategoryModel>[];
  CategoryModel categoryModel = new CategoryModel();

  categoryModel.categoryName = "Akademik";
  categoryModel.imageUrl = "";
  category.add(categoryModel);

  categoryModel.categoryName = "Kemahasiswaan";
  categoryModel.imageUrl = "";
  category.add(categoryModel);

  categoryModel.categoryName = "Keuangan";
  categoryModel.imageUrl = "";
  category.add(categoryModel);

  categoryModel.categoryName = "Umum";
  categoryModel.imageUrl = "";
  category.add(categoryModel);

  return category;
}