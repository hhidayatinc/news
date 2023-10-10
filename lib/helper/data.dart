import '../model/category_model.dart';

List<CategoryModel> getCategories(){
  List<CategoryModel> category = <CategoryModel>[];
  CategoryModel categoryModel = new CategoryModel();

  categoryModel.categoryName = "Akademik";
  categoryModel.imageUrl = "https://images.unsplash.com/photo-1607013407627-6ee814329547?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1564&q=80";
  category.add(categoryModel);

  categoryModel.categoryName = "Kemahasiswaan";
  categoryModel.imageUrl = "https://images.unsplash.com/photo-1530099486328-e021101a494a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1847&q=80";
  category.add(categoryModel);

  categoryModel.categoryName = "Keuangan & Umum";
  categoryModel.imageUrl = "https://images.unsplash.com/photo-1520607162513-77705c0f0d4a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1738&q=80";
  category.add(categoryModel);


  return category;
}