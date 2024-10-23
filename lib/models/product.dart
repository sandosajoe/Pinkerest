class product {
  final String id;
  final String title;
  final String imageUrl;
  final String salary;
  final String deliveryTime;
  final String description;
  final String categoryNumber;
  final String rate;

  const product(
      {required this.id,
      required this.title,
      required this.imageUrl,
      required this.salary,
      required this.deliveryTime,
      required this.description,
      required this.categoryNumber,
      required this.rate});
}

class CartProduct {
  final String id;
  final String title;
  final String imageUrl;
  final String description;
  final String salary;
  final String deliveryTime;

  CartProduct({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.description,
    required this.salary,
    required this.deliveryTime,
  });
}
/*
class productChart {
  final String name;
  final String salary;

  productChart({required this.name, required this.salary});

}

class Chart {
  List<productChart> products = [];
}*/