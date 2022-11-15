import 'package:tech_ecommerce_app/utils/images.dart';

class ProductModel {
  String name;
  String imageName;
  String desription;
  num price;
  int count = 0;

  ProductModel(
    {
      required this.name,
      required this.imageName,
      required this.desription,
      required this.price
    }
  );

  //Smart Watches
  static final all_products = [
    ProductModel.smartwatches,
    ProductModel.drones,
    ProductModel.laptops,
    ProductModel.phones,
  ];
  static final smartwatches = [
    ProductModel(
      name: "Apple Watch",
      imageName: MyImages.imagesSmartWatch1,
      desription: "Series 5. Black", 
      price: 499 
    ),
    ProductModel(
      name: "Samsung Watch",
      imageName: MyImages.imagesSmartWatch2,
      desription: "Series 5. Black", 
      price: 399
    ),
    ProductModel(
      name: "Hiamo Watch",
      imageName: MyImages.imagesSmartWatch3,
      desription: "Series 5. Black", 
      price: 349
    ),
    ProductModel(
      name: "Redmi Watch",
      imageName: MyImages.imagesSmartWatch4,
      desription: "Series 5. Black", 
      price: 299
    ),
  ];

  //Laptops
  static final laptops = [
    ProductModel(
      name: "Hp Victus", 
      imageName: MyImages.imagesLaptop1, 
      desription: "RAM 8, SSD 512", 
      price: 800
    ),
    ProductModel(
      name: "Asus", 
      imageName: MyImages.imagesLaptop2, 
      desription: "RAM 16, SSD 512", 
      price: 1000
    ),
    ProductModel(
      name: "Dell", 
      imageName: MyImages.imagesLaptop3, 
      desription: "RAM 8, SSD 256", 
      price: 600
    ),
    ProductModel(
      name: "Lenova", 
      imageName: MyImages.imagesLaptop4, 
      desription: "RAM 4, HDD 500", 
      price: 400
    ),
  ];
  //Phones
  static final phones = [
  ];
  //Drones
  static final drones = [

  ];
}
